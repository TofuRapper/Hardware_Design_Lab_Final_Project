module dino_logic (
    input wire pclk,
    input wire rst,
    input wire start_pulse,
    input wire jump_signal,       // Button Input
    input wire duck_signal,       // Button Input
    input wire pause_pulse,       // Button Input
    input wire [511:0] key_down,  // Keyboard State
    input wire [8:0] last_change, // Raw change event
    input wire key_valid,         // Valid signal
    input wire [9:0] h_cnt,
    input wire [9:0] v_cnt,
    input wire vsync,
    input wire [19:0] distance,
    output reg [11:0] pixel_out,
    output reg [15:0] led_out     // Debug LEDs
);

    localparam GROUND_Y = 350;
    localparam DINO_X   = 160;
    localparam DINO_W   = 34;   // 17 * 2 (Reduced to leave gap)
    localparam DINO_H   = 40;   // ~20 * 2
    localparam DINO_DUCK_H = 38; // 19 * 2
    localparam DINO_DUCK_W = 48; // 24 * 2

    localparam CACTUS_H = 40; // General cactus height for collision
    localparam CACTUS_S_W = 14; // 7 * 2
    localparam CACTUS_S_H = 30;
    localparam CACTUS_B_W = 20; // 10 * 2
    localparam CACTUS_B_H = 40;
    localparam PTERO_W = 36;    // 18 * 2
    localparam PTERO_H = 34;
    localparam PTERO_FLY_OFFSET = 30; // Height above ground for Pterodactyl

    localparam S_MENU = 3'd0; 
    localparam S_MODE_SELECT = 3'd1; 
    localparam S_RUN = 3'd2; 
    localparam S_PAUSE = 3'd3; 
    localparam S_OVER = 3'd4;
    reg [2:0] state;

    reg [9:0] dino_y;
    reg signed [9:0] dino_vel;
    reg signed [12:0] cactus_x [0:2]; // Increased width to allow larger off-screen values
    reg [9:0] score;
    reg prev_vsync;
    reg [1:0] cactus_type [0:2]; // 0 to 3
    reg [2:0] cactus_active;

    integer i;
    reg [9:0] obs_w, obs_h;
    reg [9:0] obs_sprite_base;
    reg collision;

    reg [1:0] last_spawn_idx;
    reg [9:0] min_gap = 300; // Minimum gap between cactuses
    
    // Manual Drop Logic
    reg [9:0] drop_x;
    reg prev_key_drop;
    wire drop_key_active = (key_down[9'hE072] || key_down[9'h073]); // Down Arrow (Extended or Numpad)
    wire key_drop_pressed = drop_key_active && !prev_key_drop;

    reg [1:0] selected_drop_type; // 0: Small, 1: Big, 2: Ptero
    reg [1:0] drop_obs_type;

    reg signed [12:0] drop_obs_x; // X Position
    reg [9:0] drop_obs_y;         // Y Position (for falling)
    reg drop_obs_active;          // Is it currently on screen?
    reg drop_obs_grounded;        // Has it hit the ground?
    // Use Big Cactus dimensions for the dropped object
    
    localparam DROP_VAL_SPEED = 6; // Falling speed (pixels per frame)

    reg [9:0] d_obs_w, d_obs_h;
    always @(*) begin
        case(drop_obs_type)
            2'd0: begin d_obs_w = CACTUS_S_W; d_obs_h = CACTUS_S_H; end // Small
            2'd1: begin d_obs_w = CACTUS_B_W; d_obs_h = CACTUS_B_H; end // Big
            default: begin d_obs_w = PTERO_W; d_obs_h = PTERO_H; end    // Ptero
        endcase
    end

    //LFSR randomly create obstacle
    wire [9:0] random_val;
    reg [9:0] next_spawn_offset;
    LFSR lfsr(
        .clk(pclk),
        .rst(rst),
        .random_out(random_val)
    );

    reg [8:0] last_key;
    reg prev_key_valid;
    
    wire key_press_event = key_valid && !prev_key_valid && (last_change != last_key);
    reg jumped;
    reg ducking;

    wire [7:0] scan_code = last_change[7:0];
    
    wire is_space = (scan_code == 8'h29);

    reg [4:0] anim_cnt;
    // Dynamic Dino Dimensions
    wire [9:0] curr_dino_w = ducking ? DINO_DUCK_W : DINO_W;
    wire [9:0] curr_dino_h = ducking ? DINO_DUCK_H : DINO_H;

    // Sensor and Keyboard Logic Wires
    wire sensor_jump;
    wire sensor_duck;
    wire key_jump;
    wire key_duck;


    reg [1:0] selected_mode;    // 0: 合作, 1: 競技
    reg [3:0] user_speed;       // 玩家設定的速度
    reg [5:0] blink_cnt;

    wire key_enter_pressed = (key_down[9'h05A] || key_down[9'h029]); // Enter Key
    wire key_1_pressed     = key_down[9'h016] || key_down[9'h069]; // Main 1 or Numpad 1
    wire key_2_pressed     = key_down[9'h01E] || key_down[9'h072]; // Main 2 or Numpad 2
    wire key_pause_raw     = key_down[9'h04D]; // P Key
    wire key_pause_trigger = (key_pause_raw && !prev_key_pause) || pause_pulse;

    wire spd_1 = key_down[9'h016]; // 1
    wire spd_2 = key_down[9'h01E]; // 2
    wire spd_3 = key_down[9'h026]; // 3
    wire spd_4 = key_down[9'h025]; // 4
    wire spd_5 = key_down[9'h02E]; // 5

    // Collision Box Adjustments
    reg [9:0] col_y;
    reg [9:0] col_h;

    always @(*) begin
        if (ducking) begin
            col_y = dino_y + 12; // Lower the collision box top by 12 pixels
            col_h = curr_dino_h - 12;
        end else begin
            col_y = dino_y;
            col_h = curr_dino_h;
        end
    end

    // Detect collision
    always @(*) begin
        collision = 1'b0;
        for(i = 0; i < 3; i = i + 1) begin
            if(cactus_active[i]) begin
                // Determine dimensions based on type
                case(cactus_type[i])
                    2'd0: begin // Small Cactus
                        if ((DINO_X + curr_dino_w > cactus_x[i]) && (DINO_X < cactus_x[i] + CACTUS_S_W) && (col_y + col_h > GROUND_Y - CACTUS_S_H)) collision = 1'b1;
                    end
                    2'd1: begin // Big Cactus
                        if ((DINO_X + curr_dino_w > cactus_x[i]) && (DINO_X < cactus_x[i] + CACTUS_B_W) && (col_y + col_h > GROUND_Y - CACTUS_B_H)) collision = 1'b1;
                    end
                    default: begin // Pterodactyl (Types 2 and 3)
                        // Check Y overlap with flying pterodactyl
                        // Ptero Y range: [GROUND_Y - PTERO_H - PTERO_FLY_OFFSET, GROUND_Y - PTERO_FLY_OFFSET]
                        if ((DINO_X + curr_dino_w > cactus_x[i]) && (DINO_X < cactus_x[i] + PTERO_W) && 
                            (col_y + col_h > GROUND_Y - PTERO_H - PTERO_FLY_OFFSET) && 
                            (col_y < GROUND_Y - PTERO_FLY_OFFSET)) 
                            collision = 1'b1;
                    end
                endcase
            end
        end
        if (drop_obs_active) begin
            // Collision box check against drop_obs_x and drop_obs_y
            // Note: drop_obs_y is top-left of the obstacle
            if ((DINO_X + curr_dino_w > drop_obs_x) && (DINO_X < drop_obs_x + d_obs_w) && 
                (col_y + col_h > drop_obs_y) && (col_y < drop_obs_y + d_obs_h)) begin
                collision = 1'b1;
            end
        end
    end

    wire frame_tick = vsync && !prev_vsync;
    assign sensor_jump = (distance > 20'd20 && distance < 20'd50);
    assign sensor_duck = (distance < 20'd10 && distance > 20'd0);
    assign key_jump = key_down[9'h01D] || jump_signal; // Only W (1D)
    assign key_duck = key_down[9'h01B] || sensor_duck || duck_signal;      // S (1B)

    reg prev_key_pause;
    wire key_pause_pressed = (key_down[9'h04D] && !prev_key_pause) || pause_pulse;

    always @(posedge pclk or posedge rst) begin
        if (rst) begin
            state <= S_MENU;
            dino_y <= GROUND_Y - DINO_H;
            dino_vel <= 0;
            cactus_x[0] <= 630;
            cactus_active[0] <= 1'b1;   //use [0] first
            cactus_active[1] <= 1'b0;
            cactus_active[2] <= 1'b0;
            last_spawn_idx <= 2'b0;
            score <= 0;
            prev_vsync <= 0;
            next_spawn_offset  <= 0;
            cactus_type[0] <= 2'b0;
            cactus_type[1] <= 2'b0;
            cactus_type[2] <= 2'b0;
            prev_key_valid <= 0;
            last_key <= 9'h000;
            anim_cnt <= 0;
            drop_x <= 320;
            prev_key_drop <= 0;
            prev_key_pause <= 0;
            drop_obs_active <= 0;
            drop_obs_x <= 0;
            drop_obs_y <= 0;
            drop_obs_grounded <= 0;
            selected_drop_type <= 2'd1; // Default to Big Cactus
            drop_obs_type <= 2'd1;
            selected_mode <= 0; 
            user_speed <= 4;    
            blink_cnt <= 0;
            
        end else begin
            prev_vsync <= vsync;
            prev_key_valid <= key_valid;
            prev_key_pause <= key_down[9'h04D];
            if (key_press_event) last_key <= last_change;
            if (frame_tick) blink_cnt <= blink_cnt + 1;
            case (state)
                S_MENU: begin
                    if (key_enter_pressed) state <= S_MODE_SELECT;
                end
                S_MODE_SELECT: begin
                    if (key_1_pressed) selected_mode <= 0;
                    if (key_2_pressed) selected_mode <= 1;
                    if (key_enter_pressed) begin
                        state <= S_RUN;
                        score <= 0;
                        dino_y <= GROUND_Y - DINO_H;
                        cactus_x[0] <= 630; cactus_active[0] <= 1;
                        cactus_active[1] <= 0; cactus_active[2] <= 0;
                    end
                end
                S_RUN: begin
                    if (key_pause_trigger) state <= S_PAUSE;
                    else if (collision) state <= S_OVER;
                end
                S_PAUSE: begin
                    if (key_pause_trigger) state <= S_RUN;
                    
                    if (spd_1) user_speed <= 4;
                    if (spd_2) user_speed <= 6;
                    if (spd_3) user_speed <= 8;
                    if (spd_4) user_speed <= 10;
                    if (spd_5) user_speed <= 12;
                end
                S_OVER: if (start_pulse || key_enter_pressed) begin
                            state <= S_MENU;
                            dino_y <= GROUND_Y - DINO_H;
                            cactus_x[0] <= 630;
                            cactus_active[0] <= 1'b1;       
                            cactus_active[1] <= 1'b0;
                            cactus_active[2] <= 1'b0;
                            last_spawn_idx <= 0;
                            score <= 0;
                            next_spawn_offset <= 0;
                            dino_vel <= 0;
                            cactus_type[0] <= 2'b0;
                            drop_obs_active <= 0;
                        end
            endcase

            // 2. PHYSICS UPDATE
            if (frame_tick && state == S_RUN) begin
                prev_key_drop <= drop_key_active; // Update prev_key_drop only on frame tick

                if (key_down[9'h016] || key_down[9'h69]) selected_drop_type <= 2'd0; // Key 1 -> Small
                if (key_down[9'h01E] || key_down[9'h72]) selected_drop_type <= 2'd1; // Key 2 -> Big
                if (key_down[9'h026] || key_down[9'h7A]) selected_drop_type <= 2'd2; // Key 3 -> Ptero

                for(i = 0; i < 3; i = i + 1) begin
                    // Always move cactus to allow large gaps
                    cactus_x[i] <= cactus_x[i] - user_speed - (score[9:4]);
                    if(cactus_active[i] && cactus_x[i] < -40) cactus_active[i] <= 1'b0;
                end

                if(cactus_x[last_spawn_idx] < (640 - min_gap - next_spawn_offset[8:0])) begin
                    if(cactus_active[(last_spawn_idx + 1) % 3] == 0) begin
                        last_spawn_idx <= (last_spawn_idx + 1) % 3;
                        cactus_x[(last_spawn_idx + 1) % 3] <= 640;
                        cactus_type[(last_spawn_idx + 1) % 3] <= random_val[9:8];
                        cactus_active[(last_spawn_idx + 1) % 3] <= 1'b1;
                        next_spawn_offset <= random_val;
                    end
                end

                // Manual Drop Cursor Movement
                if ((key_down[9'h16B] || key_down[9'h06B]) && drop_x > 10) drop_x <= drop_x - user_speed;
                if ((key_down[9'h174] || key_down[9'h074]) && drop_x < 630) drop_x <= drop_x + user_speed;


                // Manual Drop Trigger Logic
                // Spawns a dedicated obstacle (drop_obs) instead of using LFSR slots
                if (key_drop_pressed && !drop_obs_active) begin
                    drop_obs_active <= 1'b1;
                    drop_obs_x <= {3'b0, drop_x}; // Initialize X at cursor
                    drop_obs_y <= 0;              // Initialize Y at top (Sky)
                    drop_obs_grounded <= 1'b0;    // Not grounded yet
                    drop_obs_type <= selected_drop_type; // Lock in the selected type
                end
                // --- Dropped Obstacle Physics ---
                if (drop_obs_active) begin
                    if (!drop_obs_grounded) begin
                        // FALLING STATE: Move Y down
                        if (drop_obs_y + d_obs_h >= GROUND_Y) begin
                            // Hit the ground
                            drop_obs_y <= GROUND_Y - d_obs_h;
                            drop_obs_grounded <= 1'b1;
                        end else begin
                            drop_obs_y <= drop_obs_y + DROP_VAL_SPEED;
                        end
                    end else begin
                        // RUNNING STATE (Grounded): Move X left
                        drop_obs_x <= drop_obs_x - user_speed - (score[9:4]);
                        if (drop_obs_x < -40) drop_obs_active <= 1'b0;
                    end
                end
                /*
                if (key_drop_pressed) begin
                    if (!cactus_active[0]) begin
                        cactus_active[0] <= 1'b1;
                        cactus_x[0] <= drop_x;
                        cactus_type[0] <= 1; // Big Cactus
                    end else if (!cactus_active[1]) begin
                        cactus_active[1] <= 1'b1;
                        cactus_x[1] <= drop_x;
                        cactus_type[1] <= 1;
                    end else if (!cactus_active[2]) begin
                        cactus_active[2] <= 1'b1;
                        cactus_x[2] <= drop_x;
                        cactus_type[2] <= 1;
                    end
                end
                */
                
                prev_key_drop <= key_down[9'hE072]; // Moved to top of frame_tick block

                /*
                // Move Cactus
                if (cactus_x > -40) begin
                     cactus_x <= cactus_x - 4 - (score[9:4]);
                end else begin
                     // Reduced to 9-bit random value (0-511 pixels) to reduce blank time
                     cactus_x <= 13'd640 + {4'b0, next_spawn_offset[8:0]}; 
                     score <= score + 1;
                     next_spawn_offset <= random_val;
                     cactus_type <= random_val[9:8]; // Randomize cactus type
                end
                */

                // --- JUMP & DUCK LOGIC ---
                // Sensor Logic: < 10cm = Duck, 20-50cm = Jump
                // Note: sensor_jump, sensor_duck, key_jump, key_duck declared at module level
                
                // Keyboard Logic: Space(29) or Up(E0,75 -> 175?) for Jump. Down(E0,72 -> 172) or S(1B) for Duck.
                // Note: key_down index for extended keys depends on decoder. Assuming 1xx for extended.
                if (dino_y >= GROUND_Y - DINO_H) begin
                    // On Ground
                    if (key_jump || sensor_jump) begin
                        dino_vel <= -18;
                        dino_y <= dino_y - 18;
                        jumped <= 1'b1;
                        ducking <= 1'b0;
                    end else if (key_duck) begin
                        dino_vel <= 0;
                        dino_y <= GROUND_Y - DINO_DUCK_H; // Lower position
                        jumped <= 1'b0;
                        ducking <= 1'b1;
                    end else begin
                        dino_vel <= 0;
                        dino_y <= GROUND_Y - DINO_H;
                        jumped <= 1'b0;
                        ducking <= 1'b0;
                    end
                end else begin
                    // In Air
                    if (key_duck) begin
                        dino_vel <= dino_vel + 3; // Fast fall
                    end else begin
                        dino_vel <= dino_vel + 1;
                    end
                    dino_y <= dino_y + dino_vel;
                    jumped <= 1'b1;
                    ducking <= 1'b0; // Can't duck in air (usually becomes fast fall)
                end

                anim_cnt <= anim_cnt + 1;
            end
        end
    end

    // --- BRAM / SPRITE LOGIC ---
    wire [11:0] sprite_data;
    reg [16:0] sprite_addr;
    
    // CRITICAL: This MUST match the exact width (in pixels) of your source image!
    // If your image is 640px wide, change this to 640.
    localparam IMG_WIDTH = 628;  // <--- CHANGE THIS TO YOUR IMAGE WIDTH 


    // Sprite Offsets (Start at 16, width 18)
    localparam SP_DINO_JUMP = 17;   // Standing Dino (16-32)
    localparam SP_DINO_RUN1 = 268;   // Run Frame 1 (267-283)
    localparam SP_DINO_RUN2 = 286;   // Run Frame 2 (285-301)
    localparam SP_DINO_DUCK1 = 374;  // Duck Frame 1 (373-396)
    localparam SP_DINO_DUCK2 = 399;  // Duck Frame 2 (398-421)

    // Pterodactyls are likely at 34 and 52.
    localparam SP_CACTUS    = 106;  // Cactus starts after birds
    
    // Game Over Assets
    localparam SP_RESTART   = 0;    // Restart Icon (0-16)
    localparam RESTART_W    = 30;   // 17 * 2
    localparam RESTART_H    = 28;   // 16 * 2
    
    localparam SP_TEXT_GAMEOVER = 481; // After Cacti (192-267)
    localparam TEXT_GAMEOVER_W  = 294; // 147 * 2
    localparam TEXT_GAMEOVER_H  = 52;  // 26 * 2

    localparam SP_PTERO_1 = 53; // Pterodactyl 1 (53-70)
    localparam SP_PTERO_2 = 71; // Pterodactyl 2 (71-89)
    localparam SP_CACTUS_B = 131;    // Big Cactus (132-191)
    localparam SP_CACTUS_S = 89;    // Small Cactus (90-131)

    localparam SP_TITLE_START_X = 0;
    localparam SP_TITLE_START_Y = 26;
    localparam TITLE_W        = 150; 
    localparam TITLE_H        = 100;

    localparam SP_WORD_X = 150;
    localparam SP_WORD_Y = 26;
    localparam WORD_W = 150; 
    localparam WORD_H = 100;

    // 模式選擇圖示 (合作/競技)
    localparam SP_MODE_COOP_X = 300; 
    localparam SP_MODE_COOP_Y = 26;
    localparam MODE_ICON_W = 270;
    localparam MODE_ICON_H = 180;

    // 暫停畫面 (繼續圖示)
    localparam SP_CONTINUE_X = 600;
    localparam SP_CONTINUE_Y = 35;
    localparam CONT_W = 22;
    localparam CONT_H = 22;

    blk_mem_gen_0 sprite_rom (
        .clka(pclk),
        .addra(sprite_addr),
        .douta(sprite_data)
    );

    reg [9:0] dx, dy, sp_x;
    reg [9:0] cx, cy;
    reg [9:0] sprite_base_x;

    // Helper to determine sprite parameters for the Preview Cursor
    reg [9:0] prev_w, prev_h, prev_sp;
    always @(*) begin
        case(selected_drop_type)
            2'd0: begin prev_w = CACTUS_S_W; prev_h = CACTUS_S_H; prev_sp = SP_CACTUS_S; end
            2'd1: begin prev_w = CACTUS_B_W; prev_h = CACTUS_B_H; prev_sp = SP_CACTUS_B; end
            default: begin prev_w = PTERO_W; prev_h = PTERO_H; prev_sp = SP_PTERO_1; end
        endcase
    end

    // Helper to determine sprite parameters for the Dropped Object
    reg [9:0] d_render_sp;
    always @(*) begin
        case(drop_obs_type)
            2'd0: d_render_sp = SP_CACTUS_S;
            2'd1: d_render_sp = SP_CACTUS_B;
            default: d_render_sp = (anim_cnt[4]) ? SP_PTERO_2 : SP_PTERO_1; // Animate ptero if desired, or static
        endcase
    end

    always @(*) begin
        // Default address (points to transparent/background part of image if possible)
        sprite_addr = 0; 
        dx = 0; dy = 0; sp_x = 0;
        cx = 0; cy = 0;

        if(state == S_MENU) begin
            if (h_cnt >= 300 && h_cnt < (300 + TITLE_W) &&
                v_cnt >= 100 && v_cnt < 100 + TITLE_H) begin
                cx = h_cnt - 300;
                cy = v_cnt - 100;
                sprite_addr = (SP_TITLE_START_Y +cy) * IMG_WIDTH + (SP_TITLE_START_X + cx);
            end
            if (h_cnt >= 300 && h_cnt < (320 + WORD_W) &&
                v_cnt >= 300 && v_cnt < 300 + WORD_H) begin
                cx = h_cnt - 300;
                cy = v_cnt - 300;
                sprite_addr = (SP_WORD_Y + cy) * IMG_WIDTH + (SP_WORD_X + cx);
            end
        end
        else if(state == S_MODE_SELECT) begin
            if (h_cnt >= 200 && h_cnt < 200 + MODE_ICON_W &&
                v_cnt >= 200 && v_cnt < 200 + MODE_ICON_H) begin
                cx = h_cnt - 200;
                cy = v_cnt - 200;
                sprite_addr = (SP_MODE_COOP_Y + cy) * IMG_WIDTH + (SP_MODE_COOP_X + cx);
            end
            
        end
        else if(state == S_PAUSE) begin
            if (h_cnt >= 290 && h_cnt < 290 + CONT_W &&
                v_cnt >= 200 && v_cnt < 200 + CONT_H) begin
                cx = h_cnt - 290;
                cy = v_cnt - 200;
                sprite_addr = (SP_CONTINUE_Y + cy) * IMG_WIDTH + (SP_CONTINUE_X + cx);
            end

            if (v_cnt >= 300 && v_cnt < 310) begin
                if (h_cnt >= 200 && h_cnt < 200 + (user_speed * 20)) begin
                sprite_addr = (SP_CONTINUE_Y + cy) * IMG_WIDTH + (SP_CONTINUE_X + cx);
                end
            end
        end
        // Game Over Text
        else if(state == S_OVER) begin
            if (h_cnt >= 166 && h_cnt < 166 + TEXT_GAMEOVER_W &&
                v_cnt >= 180 && v_cnt < 180 + TEXT_GAMEOVER_H) begin
                
                dx = h_cnt - 166;
                dy = v_cnt - 180;
                sp_x = SP_TEXT_GAMEOVER;
                sprite_addr = (dy >> 1) * IMG_WIDTH + (sp_x + (dx >> 1));
            end
            // Restart Icon
            else if (h_cnt >= 322 && h_cnt < 322 + RESTART_W &&
                v_cnt >= 250 && v_cnt < 250 + RESTART_H) begin
                
                dx = h_cnt - 322;
                dy = v_cnt - 250;
                sp_x = SP_RESTART;
                sprite_addr = (dy >> 1) * IMG_WIDTH + (sp_x + (dx >> 1));
            end
        end
        else if (state == S_RUN && 
                 h_cnt >= drop_x && h_cnt < drop_x + prev_w &&
                 v_cnt >= 50 && v_cnt < 50 + prev_h) begin
            cx = h_cnt - drop_x;
            cy = v_cnt - 50;
            sprite_addr = (cy >> 1) * IMG_WIDTH + (prev_sp + (cx >> 1));
        end
        // Dino Rendering (Use curr_dino_h to crop height when ducking)
        else if (h_cnt >= DINO_X && h_cnt < DINO_X + curr_dino_w &&
            v_cnt >= dino_y && v_cnt < dino_y + curr_dino_h) begin
            
            dx = h_cnt - DINO_X;
            dy = v_cnt - dino_y;
            
            if (jumped)          sp_x = SP_DINO_JUMP;
            else if (ducking)    sp_x = (anim_cnt[4] == 1'b0) ? SP_DINO_DUCK1 : SP_DINO_DUCK2;
            else                 sp_x = (anim_cnt[4] == 1'b0) ? SP_DINO_RUN1 : SP_DINO_RUN2;
            
            sprite_addr = (dy >> 1) * IMG_WIDTH + (sp_x + (dx >> 1));
        end
        //Dropped Obstacle Rendering
        else if (drop_obs_active && 
                 h_cnt >= drop_obs_x && h_cnt < drop_obs_x + d_obs_w && 
                 v_cnt >= drop_obs_y && v_cnt < drop_obs_y + d_obs_h) begin
            
            cx = h_cnt - drop_obs_x;
            cy = v_cnt - drop_obs_y;
            // Use Big Cactus Sprite for dropped object
            sprite_addr = (cy >> 1) * IMG_WIDTH + (d_render_sp + (cx >> 1));
        end
        else begin
            for(i = 0; i < 3; i = i + 1) begin
                if(cactus_active[i]) begin
                    // Determine dimensions and sprite based on type
                    case(cactus_type[i])
                        2'd0: begin 
                            obs_w = CACTUS_S_W; 
                            obs_h = CACTUS_S_H; 
                            obs_sprite_base = SP_CACTUS_S; 
                            if(h_cnt >= cactus_x[i] && h_cnt < cactus_x[i] + obs_w && v_cnt >= GROUND_Y - obs_h && v_cnt < GROUND_Y) begin
                                cx = h_cnt - cactus_x[i];
                                cy = v_cnt - (GROUND_Y - obs_h);
                                sprite_addr = (cy >> 1) * IMG_WIDTH + (obs_sprite_base + (cx >> 1));
                            end
                        end
                        2'd1: begin 
                            obs_w = CACTUS_B_W; 
                            obs_h = CACTUS_B_H; 
                            obs_sprite_base = SP_CACTUS_B; 
                            if(h_cnt >= cactus_x[i] && h_cnt < cactus_x[i] + obs_w && v_cnt >= GROUND_Y - obs_h && v_cnt < GROUND_Y) begin
                                cx = h_cnt - cactus_x[i];
                                cy = v_cnt - (GROUND_Y - obs_h);
                                sprite_addr = (cy >> 1) * IMG_WIDTH + (obs_sprite_base + (cx >> 1));
                            end
                        end
                        default: begin 
                            obs_w = PTERO_W; 
                            obs_h = PTERO_H; 
                            obs_sprite_base = (anim_cnt[4] == 1'b0) ? SP_PTERO_1 : SP_PTERO_2; 
                            // Pterodactyl Rendering with Offset
                            if(h_cnt >= cactus_x[i] && h_cnt < cactus_x[i] + obs_w && 
                               v_cnt >= GROUND_Y - obs_h - PTERO_FLY_OFFSET && v_cnt < GROUND_Y - PTERO_FLY_OFFSET) begin
                                cx = h_cnt - cactus_x[i];
                                cy = v_cnt - (GROUND_Y - obs_h - PTERO_FLY_OFFSET);
                                sprite_addr = (cy >> 1) * IMG_WIDTH + (obs_sprite_base + (cx >> 1));
                            end
                        end
                    endcase
                end
            end
        end
    end

    always @(*) begin
        // LED Debugging
        led_out = 16'h0000;
        if (state == S_RUN) led_out[15] = 1'b1;
        if (jumped) led_out[0] = 1'b1;
        led_out[10:3] = next_spawn_offset[7:0];
        led_out[13] = key_down[9'hE072];

        pixel_out = 12'h000;

        /*
        // Arrow Logic
        if (state == S_RUN && v_cnt >= 50 && v_cnt < 70 &&
            h_cnt + 10 >= drop_x && h_cnt <= drop_x + 10) begin
            
            if ( (h_cnt > drop_x ? (h_cnt - drop_x) : (drop_x - h_cnt)) < (70 - v_cnt) ) begin
                 pixel_out = 12'hF00; // Red Arrow
            end
        end
        */
        
        // Priority: Sprites -> Ground -> Background
        // Check if sprite_data is not "transparent" (assuming black 0x000 is transparent)
        // Note: sprite_data corresponds to the address from the PREVIOUS cycle (or 2 cycles ago).
        // This might cause a 1-2 pixel shift to the right.
        
        if (sprite_data != 12'h000) begin
             // We only draw the sprite if we are "inside" the box logic from the previous cycle.
             // But since we don't easily know that here without pipelining, 
             // we'll just trust the non-black pixel output.
             // For better precision, we should pipeline the "is_dino" / "is_cactus" signals.
             if(state == S_RUN || state == S_MENU || state == S_MODE_SELECT || state == S_OVER) pixel_out = 15'h000 | sprite_data;
             pixel_out = sprite_data;
        end
        else if (v_cnt == GROUND_Y && state == S_RUN) begin
             pixel_out = 12'hFFF;
        end
    end

endmodule