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
    output reg [15:0] led_out,    // Debug LEDs
    output reg jump_event,        // Toggle on jump start (pclk domain)
    output reg land_event,        // Toggle on landing (pclk domain)
    output reg countdown_event,   // Toggle to request a countdown tone (pclk domain)
    output reg [2:0] countdown_tone // Tone selector for countdown (3->3,2->2,1->1)
);

    localparam GROUND_Y = 350;
    localparam DINO_X   = 160;
    localparam DINO_W   = 34;   // 17 * 2 (Reduced to leave gap)
    localparam DINO_H   = 40;   // ~20 * 2
    localparam DINO_DUCK_H = 38; // 19 * 2
    localparam DINO_DUCK_W = 48; // 24 * 2

    // Movable dino X position (allows left/right movement with A/D)
    reg [9:0] dino_x;

    localparam CACTUS_H = 40; // General cactus height for collision
    localparam CACTUS_S_W = 14; // 7 * 2
    localparam CACTUS_S_H = 30;
    localparam CACTUS_B_W = 20; // 10 * 2
    localparam CACTUS_B_H = 40;
    localparam PTERO_W = 36;    // 18 * 2
    localparam PTERO_H = 34;
    localparam PTERO_FLY_OFFSET = 30; // Height above ground for Pterodactyl

    localparam S_MENU = 3'd0; 
    localparam S_COUNT = 3'd1;
    localparam S_RUN = 3'd2; 
    localparam S_PAUSE = 3'd3; 
    localparam S_OVER = 3'd4;
    localparam S_NAME_INPUT = 3'd6;
    reg [2:0] state;

    reg [9:0] dino_y;
    reg signed [9:0] dino_vel;
    reg signed [12:0] cactus_x [0:2]; // Increased width to allow larger off-screen values
    reg [9:0] score;
    reg [3:0] score_ones, score_tens, score_hund, score_thou;
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
    wire drop_key_active = (key_down[9'h172] || key_down[9'h073] || key_down[9'h072]); // Down Arrow (Extended or Numpad)
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
    // LFSR module definition required for synthesis/simulation
    // Dummy LFSR for compilation (replace with your actual implementation)
    reg [9:0] lfsr_reg;
    always @(posedge pclk or posedge rst) begin
        if (rst)
            lfsr_reg <= 10'h1;
        else
            lfsr_reg <= {lfsr_reg[8:0], lfsr_reg[9] ^ lfsr_reg[6]};
    end
    assign random_val = lfsr_reg;

    reg [8:0] last_key;
    reg prev_key_valid;
    // Sample raw key_down edges to avoid missed short decoder events
    reg [511:0] prev_key_down;
    
    wire key_press_event = key_valid && !prev_key_valid && (last_change != last_key);
    reg jumped;
    reg ducking;

    wire [7:0] scan_code = last_change[7:0];
    
    wire is_space = (scan_code == 8'h29);

    reg [4:0] anim_cnt;
    reg prev_jumped_pclk;
    // Dynamic Dino Dimensions
    wire [9:0] curr_dino_w = ducking ? DINO_DUCK_W : DINO_W;
    wire [9:0] curr_dino_h = ducking ? DINO_DUCK_H : DINO_H;

    // Sensor and Keyboard Logic Wires
    wire sensor_jump;
    wire sensor_duck;
    wire key_jump;
    wire key_duck;


    // mode selection removed
    reg [3:0] user_speed;       // 玩家設定的速度
    reg [5:0] blink_cnt;

    reg prev_key_enter;
    wire key_enter_down = (key_down[9'h05A] || key_down[9'h029]); // Enter Key
    wire key_enter_pressed = key_enter_down && !prev_key_enter;

    // mode selection keys removed
    
    reg prev_key_pause;
    wire key_pause_raw     = key_down[9'h04D]; // P Key
    wire key_pause_trigger = (key_pause_raw && !prev_key_pause) || pause_pulse;

    // Prev-state for drop-selection keys to latch selection on press
    reg prev_sel1, prev_sel2, prev_sel3;

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
                            if ((dino_x + curr_dino_w > cactus_x[i]) && (dino_x < cactus_x[i] + CACTUS_S_W) && (col_y + col_h > GROUND_Y - CACTUS_S_H)) collision = 1'b1;
                    end
                    2'd1: begin // Big Cactus
                            if ((dino_x + curr_dino_w > cactus_x[i]) && (dino_x < cactus_x[i] + CACTUS_B_W) && (col_y + col_h > GROUND_Y - CACTUS_B_H)) collision = 1'b1;
                    end
                    default: begin // Pterodactyl (Types 2 and 3)
                        // Check Y overlap with flying pterodactyl
                        // Ptero Y range: [GROUND_Y - PTERO_H - PTERO_FLY_OFFSET, GROUND_Y - PTERO_FLY_OFFSET]
                            if ((dino_x + curr_dino_w > cactus_x[i]) && (dino_x < cactus_x[i] + PTERO_W) && 
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
                if ((dino_x + curr_dino_w > drop_obs_x) && (dino_x < drop_obs_x + d_obs_w) && 
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

    wire key_pause_pressed = (key_down[9'h04D] && !prev_key_pause) || pause_pulse;

    reg [9:0] high_score;
    reg [3:0] hs_ones, hs_tens, hs_hund, hs_thou;
    reg [1:0] lives; // 3 lives: 3,2,1,0
    // Countdown state variables
    reg [1:0] countdown_step; // 3,2,1
    reg [5:0] countdown_frame; // frame counter for each digit display
    
    // Theme selection: 0 = light, 1 = dark
    reg theme_sel;
    reg [4:0] hs_name [0:2];     // High Score Name

    function [4:0] scancode_to_char;
        input [7:0] code;
        begin
            case(code)
                8'h1C: scancode_to_char = 0; // A
                8'h32: scancode_to_char = 1; // B
                8'h21: scancode_to_char = 2; // C
                8'h23: scancode_to_char = 3; // D
                8'h24: scancode_to_char = 4; // E
                8'h2B: scancode_to_char = 5; // F
                8'h34: scancode_to_char = 6; // G
                8'h33: scancode_to_char = 7; // H
                8'h43: scancode_to_char = 8; // I
                8'h3B: scancode_to_char = 9; // J
                8'h42: scancode_to_char = 10; // K
                8'h4B: scancode_to_char = 11; // L
                8'h3A: scancode_to_char = 12; // M
                8'h31: scancode_to_char = 13; // N
                8'h44: scancode_to_char = 14; // O
                8'h4D: scancode_to_char = 15; // P
                8'h15: scancode_to_char = 16; // Q
                8'h2D: scancode_to_char = 17; // R
                8'h1B: scancode_to_char = 18; // S
                8'h2C: scancode_to_char = 19; // T
                8'h3C: scancode_to_char = 20; // U
                8'h2A: scancode_to_char = 21; // V
                8'h1D: scancode_to_char = 22; // W
                8'h22: scancode_to_char = 23; // X
                8'h35: scancode_to_char = 24; // Y
                8'h1A: scancode_to_char = 25; // Z
                default: scancode_to_char = 26; // Space/Invalid
            endcase
        end
    endfunction

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
            score_ones <= 0; score_tens <= 0; score_hund <= 0; score_thou <= 0;
            high_score <= 0;
            hs_ones <= 0; hs_tens <= 0; hs_hund <= 0; hs_thou <= 0;
            hs_name[0] <= 26; hs_name[1] <= 26; hs_name[2] <= 26;
            theme_sel <= 1'b0; // default to light theme
            prev_vsync <= 0;
            next_spawn_offset  <= 0;
            cactus_type[0] <= 2'b0;
            cactus_type[1] <= 2'b0;
            cactus_type[2] <= 2'b0;
            prev_key_valid <= 0;
            last_key <= 9'h000;
            anim_cnt <= 0;
            drop_x <= 320;
            dino_x <= DINO_X;
            prev_key_drop <= 0;
            prev_key_pause <= 0;
            drop_obs_active <= 0;
            drop_obs_x <= 0;
            drop_obs_y <= 0;
            drop_obs_grounded <= 0;
            selected_drop_type <= 2'd1; // Default to Big Cactus
            drop_obs_type <= 2'd1;
            // selected_mode removed
            user_speed <= 4;    
            blink_cnt <= 0;
            prev_key_enter <= 0;
            jump_event <= 1'b0;
            land_event <= 1'b0;
            prev_jumped_pclk <= 1'b0;
            lives <= 2'd3;
            prev_sel1 <= 1'b0; prev_sel2 <= 1'b0; prev_sel3 <= 1'b0;
            countdown_event <= 1'b0;
            countdown_tone <= 3'd0;
            countdown_step <= 2'd0;
            countdown_frame <= 6'd0;
            
        end else begin
            prev_vsync <= vsync;
            prev_key_valid <= key_valid;
            prev_key_pause <= key_down[9'h04D];
            prev_key_enter <= key_enter_down;
            // track previous raw key_down state for edge detection (name input, etc.)
            prev_key_down <= key_down;
            if (key_press_event) last_key <= last_change;
            if (frame_tick) blink_cnt <= blink_cnt + 1;
            case (state)
                S_MENU: begin
                    if (key_enter_pressed) begin
                            state <= S_NAME_INPUT;
                            theme_sel <= 1'b0; // default selection
                    end
                    countdown_tone <= 3'd0;
                end
                S_NAME_INPUT: begin
                    // Theme selection screen: Enter confirms selection and starts countdown
                    if (key_enter_pressed) begin // Confirm selection -> start countdown
                        state <= S_COUNT;
                        // initialize countdown (3,2,1)
                        countdown_step <= 2'd3;
                        countdown_frame <= 6'd0;
                        countdown_event <= 1'b0;
                        // reset game variables
                        score <= 0;
                        score_ones <= 0; score_tens <= 0; score_hund <= 0; score_thou <= 0;
                        dino_y <= GROUND_Y - DINO_H;
                        cactus_x[0] <= 630; cactus_active[0] <= 1;
                        cactus_active[1] <= 0; cactus_active[2] <= 0;
                        lives <= 2'd3;
                    end
                    countdown_tone <= 3'd0;
                end
                S_COUNT: begin
                    // Wait for a few frames per digit and emit tones on each step
                    if (frame_tick) begin
                        countdown_frame <= countdown_frame + 1;
                        if (countdown_frame >= 6'd60) begin // ~1s per digit at 60Hz
                            // latch tone based on step (3->C4,2->D4,1->E4 mapped later in top)
                            countdown_tone <= countdown_step;
                            countdown_event <= ~countdown_event; // toggle to request tone
                            // move to next step
                            if (countdown_step == 2'd1) begin
                                // finished countdown -> RUN
                                state <= S_RUN;
                                countdown_step <= 2'd0;
                                countdown_frame <= 6'd0;
                            end else begin
                                countdown_step <= countdown_step - 1;
                                countdown_frame <= 6'd0;
                            end
                        end
                    end
                end
                S_RUN: begin
                    countdown_tone <= 3'd0;
                    if (key_pause_trigger) state <= S_PAUSE;
                        else if (collision || dino_x < 1 || dino_x > (640 - curr_dino_w - 1) || dino_y > (GROUND_Y + 100)) begin
                                if (lives > 1) begin
                                    // lose one life, respawn dino and clear obstacles, continue running
                                    lives <= lives - 1;
                                    dino_x <= DINO_X;
                                    dino_y <= GROUND_Y - DINO_H;
                                    dino_vel <= 0;
                                    jumped <= 1'b0;
                                    ducking <= 1'b0;
                                    cactus_active[0] <= 1'b0; cactus_active[1] <= 1'b0; cactus_active[2] <= 1'b0;
                                    drop_obs_active <= 1'b0;
                                end else begin
                                    // last life lost -> game over
                                    state <= S_OVER;
                                    dino_x <= DINO_X;
                                    dino_y <= GROUND_Y - DINO_H;
                                    dino_vel <= 0;
                                    jumped <= 1'b0;
                                    ducking <= 1'b0;
                                    if (score > high_score) begin
                                        high_score <= score;
                                        hs_ones <= score_ones;
                                        hs_tens <= score_tens;
                                        hs_hund <= score_hund;
                                        hs_thou <= score_thou;
                                        hs_name[0] <= 26;
                                        hs_name[1] <= 26;
                                        hs_name[2] <= 26;
                                    end
                                end
                            end
                end
                S_PAUSE: begin
                    countdown_tone <= 3'd0;
                    if (key_pause_trigger) state <= S_RUN;
                    
                    if (spd_1) user_speed <= 4;
                    if (spd_2) user_speed <= 6;
                    if (spd_3) user_speed <= 8;
                    if (spd_4) user_speed <= 10;
                    if (spd_5) user_speed <= 12;
                end
                S_OVER: begin
                    if (key_enter_pressed) begin
                        // Restart game directly from Game Over
                        state <= S_MENU;
                        dino_y <= GROUND_Y - DINO_H;
                        cactus_x[0] <= 630;
                        cactus_active[0] <= 1'b1;       
                        cactus_active[1] <= 1'b0;
                        cactus_active[2] <= 1'b0;
                        last_spawn_idx <= 0;
                        score <= 0;
                        score_ones <= 0; score_tens <= 0; score_hund <= 0; score_thou <= 0;
                        next_spawn_offset <= 0;
                        dino_vel <= 0;
                        cactus_type[0] <= 2'b0;
                        drop_obs_active <= 0;
                        lives <= 2'd3;
                    end
                    countdown_tone <= 3'd0;
                end 
            endcase

            // --- THEME SELECTION (edge-detect on pclk using prev_key_down) ---
            if (state == S_NAME_INPUT) begin
                // Key '1' -> Light, Key '2' -> Dark (use rising edge of key_down)
                if ((key_down[9'h016] || key_down[9'h069]) && !(prev_key_down[9'h016] || prev_key_down[9'h069])) theme_sel <= 1'b0; // 1 -> Light
                if ((key_down[9'h01E] || key_down[9'h072]) && !(prev_key_down[9'h01E] || prev_key_down[9'h072])) theme_sel <= 1'b1; // 2 -> Dark
                // Also allow left/right A/D to toggle
                if ((key_down[9'h01C] || key_down[9'h023]) && !((prev_key_down[9'h01C] || prev_key_down[9'h023]))) begin
                    theme_sel <= ~theme_sel;
                end
                countdown_tone <= 3'd0;
            end

            // 2. PHYSICS UPDATE
            if (frame_tick && state == S_RUN) begin
                prev_key_drop <= drop_key_active; // Update prev_key_drop only on frame tick
                countdown_tone <= 3'd0;
                // Latch selection on key press (edge detect)
                if ((key_down[9'h016] || key_down[9'h069]) && !prev_sel1) selected_drop_type <= 2'd0; // Key 1 -> Small
                if ((key_down[9'h01E] || key_down[9'h072]) && !prev_sel2) selected_drop_type <= 2'd1; // Key 2 -> Big
                if ((key_down[9'h026] || key_down[9'h07A]) && !prev_sel3) selected_drop_type <= 2'd2; // Key 3 -> Ptero

                for(i = 0; i < 3; i = i + 1) begin
                    // Always move cactus to allow large gaps
                    cactus_x[i] <= cactus_x[i] - user_speed - (score[9:4]);
                    if(cactus_active[i] && cactus_x[i] < -40) begin
                        cactus_active[i] <= 1'b0;
                        score <= score + 1;
                        if (score_ones == 9) begin
                            score_ones <= 0;
                            if (score_tens == 9) begin
                                score_tens <= 0;
                                if (score_hund == 9) begin
                                    score_hund <= 0;
                                    score_thou <= score_thou + 1;
                                end else begin
                                    score_hund <= score_hund + 1;
                                end
                            end else begin
                                score_tens <= score_tens + 1;
                            end
                        end else begin
                            score_ones <= score_ones + 1;
                        end
                    end
                end

                if(cactus_x[last_spawn_idx] < (640 - min_gap - next_spawn_offset[8:0])) begin
                    if(cactus_active[(last_spawn_idx + 1) % 3] == 0) begin
                        last_spawn_idx <= (last_spawn_idx + 1) % 3;
                        cactus_x[(last_spawn_idx + 1) % 3] <= 640;
                        cactus_type[(last_spawn_idx + 1) % 3] <= random_val[9:8];
                        cactus_active[(last_spawn_idx + 1) % 3] <= 1'b1;
                        next_spawn_offset <= {2'b00, random_val[7:0]};
                    end
                end

                // Manual Drop Cursor Movement
                if ((key_down[9'h16B] || key_down[9'h06B]) && drop_x > 10) drop_x <= drop_x - user_speed;
                if ((key_down[9'h174] || key_down[9'h074]) && drop_x < 630) drop_x <= drop_x + user_speed;

                // Dino left/right movement: A (0x1C) = move left, D (0x23) = move right
                if (key_down[9'h01C]) dino_x <= dino_x - user_speed;
                if (key_down[9'h023]) dino_x <= dino_x + user_speed;


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
                
                // update key edge registers for selection keys
                prev_sel1 <= (key_down[9'h016] || key_down[9'h069]);
                prev_sel2 <= (key_down[9'h01E] || key_down[9'h072]);
                prev_sel3 <= (key_down[9'h026] || key_down[9'h07A]);

                prev_key_drop <= key_down[9'h172]; // Moved to top of frame_tick block

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

                // detect jump rising/falling edges and toggle event outputs
                if (!prev_jumped_pclk && jumped) begin
                    jump_event <= ~jump_event; // toggle to signal jump start
                end
                if (prev_jumped_pclk && !jumped) begin
                    land_event <= ~land_event; // toggle to signal landing
                end
                prev_jumped_pclk <= jumped;

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

    // Heart sprite (top-left status)
    // Source image at (570,60) size 18x18 in pic.jpg
    localparam SP_HEART_X = 568;
    localparam SP_HEART_Y = 64;
    localparam HEART_W = 18;
    localparam HEART_H = 18;
    // Display positions
    localparam HEART_START_X = 10; // left padding from screen edge
    localparam HEART_START_Y = 10; // top padding from screen edge
    localparam HEART_SPACING = 22; // spacing between hearts

    localparam SP_TITLE_START_X = 0;
    localparam SP_TITLE_START_Y = 26;
    localparam TITLE_W        = 150; 
    localparam TITLE_H        = 100;

    localparam SP_WORD_X = 150;
    localparam SP_WORD_Y = 26;
    localparam WORD_W = 150; 
    localparam WORD_H = 100;

    // mode select removed

    // 暫停畫面 (繼續圖示)
    localparam SP_CONTINUE_X = 600;
    localparam SP_CONTINUE_Y = 35;
    localparam CONT_W = 22;
    localparam CONT_H = 22;

    // Theme preview monitor rectangle (used in theme selection scene)
    localparam MON_X = 240;
    localparam MON_Y = 120;
    localparam MON_W = 160;
    localparam MON_H = 90;

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
            if (h_cnt >= 245 && h_cnt < (245 + TITLE_W) &&
                v_cnt >= 100 && v_cnt < 100 + TITLE_H) begin
                cx = h_cnt - 245;
                cy = v_cnt - 100;
                sprite_addr = (SP_TITLE_START_Y +cy) * IMG_WIDTH + (SP_TITLE_START_X + cx);
            end
            if (h_cnt >= 245 && h_cnt < (245 + WORD_W) &&
                v_cnt >= 300 && v_cnt < 300 + WORD_H) begin
                cx = h_cnt - 245;
                cy = v_cnt - 300;
                sprite_addr = (SP_WORD_Y + cy) * IMG_WIDTH + (SP_WORD_X + cx);
            end
        end
        
        else if(state == S_PAUSE) begin
            if (h_cnt >= 310 && h_cnt < 310 + CONT_W &&
                v_cnt >= 200 && v_cnt < 200 + CONT_H) begin
                cx = h_cnt - 310;
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
            else if (h_cnt >= 312 && h_cnt < 312 + RESTART_W &&
                v_cnt >= 250 && v_cnt < 250 + RESTART_H) begin
                
                dx = h_cnt - 312;
                dy = v_cnt - 250;
                sp_x = SP_RESTART;
                sprite_addr = (dy >> 1) * IMG_WIDTH + (sp_x + (dx >> 1));
            end
        end
        // Manual Drop Cursor (Only visible in RUN)
        else if (state == S_RUN) begin
            // Manual Drop Cursor
            if (h_cnt >= drop_x && h_cnt < drop_x + prev_w && v_cnt >= 50 && v_cnt < 50 + prev_h) begin
                cx = h_cnt - drop_x;
                cy = v_cnt - 50;
                sprite_addr = (cy >> 1) * IMG_WIDTH + (prev_sp + (cx >> 1));
            end
            // Dino Rendering
            if (h_cnt >= dino_x && h_cnt < dino_x + curr_dino_w && v_cnt >= dino_y && v_cnt < dino_y + curr_dino_h) begin
                dx = h_cnt - dino_x;
                dy = v_cnt - dino_y;
                if (jumped)          sp_x = SP_DINO_JUMP;
                else if (ducking)    sp_x = (anim_cnt[4] == 1'b0) ? SP_DINO_DUCK1 : SP_DINO_DUCK2;
                else                 sp_x = (anim_cnt[4] == 1'b0) ? SP_DINO_RUN1 : SP_DINO_RUN2;
                sprite_addr = (dy >> 1) * IMG_WIDTH + (sp_x + (dx >> 1));
            end
            // Dropped Obstacle Rendering
            if (drop_obs_active && h_cnt >= drop_obs_x && h_cnt < drop_obs_x + d_obs_w && v_cnt >= drop_obs_y && v_cnt < drop_obs_y + d_obs_h) begin
                cx = h_cnt - drop_obs_x;
                cy = v_cnt - drop_obs_y;
                sprite_addr = (cy >> 1) * IMG_WIDTH + (d_render_sp + (cx >> 1));
            end
            // Cactus/Ptero Rendering Loop
            for(i = 0; i < 3; i = i + 1) begin
                if(cactus_active[i]) begin
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
                            if(h_cnt >= cactus_x[i] && h_cnt < cactus_x[i] + obs_w && v_cnt >= GROUND_Y - obs_h - PTERO_FLY_OFFSET && v_cnt < GROUND_Y - PTERO_FLY_OFFSET) begin
                                cx = h_cnt - cactus_x[i];
                                cy = v_cnt - (GROUND_Y - obs_h - PTERO_FLY_OFFSET);
                                sprite_addr = (cy >> 1) * IMG_WIDTH + (obs_sprite_base + (cx >> 1));
                            end
                        end
                    endcase
                end
            end

            // Heart icons (top-left): show up to 3 hearts representing lives
            // Draw hearts at HEART_START_X/HEART_START_Y, spacing HEART_SPACING
            for (i = 0; i < 3; i = i + 1) begin
                if (lives > i) begin
                    if (h_cnt >= HEART_START_X + i*HEART_SPACING && h_cnt < HEART_START_X + i*HEART_SPACING + HEART_W &&
                        v_cnt >= HEART_START_Y && v_cnt < HEART_START_Y + HEART_H) begin
                        cx = h_cnt - (HEART_START_X + i*HEART_SPACING);
                        cy = v_cnt - HEART_START_Y;
                        // Direct mapping (sprite is 18x18)
                        sprite_addr = (SP_HEART_Y + cy) * IMG_WIDTH + (SP_HEART_X + cx);
                    end
                end
            end
        end
    end


    reg score_pixel;
    reg [3:0] current_digit;
    reg [2:0] digit_x;
    reg [2:0] digit_y;
    
    // High Score Display Logic
    reg hs_pixel;
    reg [3:0] hs_digit;
    reg [2:0] hs_dx;
    reg [2:0] hs_dy;

    function get_digit_pixel;
        input [3:0] digit;
        input [2:0] x;
        input [2:0] y;
        begin
            case(digit)
                0: get_digit_pixel = (x==0 || x==4 || y==0 || y==6 || (x==0 && y>0 && y<6) || (x==4 && y>0 && y<6));
                1: get_digit_pixel = (x==4);
                2: get_digit_pixel = (y==0 || y==3 || y==6 || ((x==4) && (y==1 || y==2)) || (x==0 && y>3));
                3: get_digit_pixel = (y==0 || y==3 || y==6 || x==4);
                4: get_digit_pixel = ((x==0 && y<3) || y==3 || x==4);
                5: get_digit_pixel = (y==0 || y==3 || y==6 || (x==0 && y<3) || (x==4 && y>3));
                6: get_digit_pixel = (y==0 || y==3 || y==6 || x==0 || (x==4 && y>3));
                7: get_digit_pixel = (y==0 || x==4);
                8: get_digit_pixel = (y==0 || y==3 || y==6 || x==0 || x==4);
                9: get_digit_pixel = (y==0 || y==3 || y==6 || x==4 || (x==0 && y<3));
                default: get_digit_pixel = 0;
            endcase
        end
    endfunction

    always @(*) begin
        score_pixel = 0;
        current_digit = 0;
        digit_x = 0;
        digit_y = 0;
        
        // Current Score (Top Right)
        if (v_cnt >= 20 && v_cnt < 34) begin
            digit_y = (v_cnt - 20) >> 1;
            if (h_cnt >= 550 && h_cnt < 560) begin
                current_digit = score_thou;
                digit_x = (h_cnt - 550) >> 1;
                score_pixel = get_digit_pixel(current_digit, digit_x, digit_y);
            end else if (h_cnt >= 564 && h_cnt < 574) begin
                current_digit = score_hund;
                digit_x = (h_cnt - 564) >> 1;
                score_pixel = get_digit_pixel(current_digit, digit_x, digit_y);
            end else if (h_cnt >= 578 && h_cnt < 588) begin
                current_digit = score_tens;
                digit_x = (h_cnt - 578) >> 1;
                score_pixel = get_digit_pixel(current_digit, digit_x, digit_y);
            end else if (h_cnt >= 592 && h_cnt < 602) begin
                current_digit = score_ones;
                digit_x = (h_cnt - 592) >> 1;
                score_pixel = get_digit_pixel(current_digit, digit_x, digit_y);
            end
        end
    end

    reg [9:0] hs_base_x, hs_base_y;
    always @(*) begin
        if (state == S_OVER) begin
            // Move high-score up and left on Game Over
            hs_base_x = 40;
            hs_base_y = 40;
        end else begin
            hs_base_x = 20;
            hs_base_y = 20;
        end
    end

    reg [4:0] char_code;
    reg [2:0] char_dx, char_dy;
    reg char_pixel;
    // Theme colors (computed in combinational block)
    reg [11:0] bg_color;
    reg [11:0] text_color;

    function get_char_pixel_func;
        input [4:0] code;
        input [2:0] x;
        input [2:0] y;
        begin
            case(code)
                0: get_char_pixel_func = (y==0 || y==3 || x==0 || x==4); // A
                1: get_char_pixel_func = (x==0 || y==0 || y==3 || y==6 || x==4); // B (Rough)
                2: get_char_pixel_func = (y==0 || y==6 || x==0); // C
                3: get_char_pixel_func = (x==0 || y==0 || y==6 || x==4); // D
                4: get_char_pixel_func = (x==0 || y==0 || y==3 || y==6); // E
                5: get_char_pixel_func = (x==0 || y==0 || y==3); // F
                6: get_char_pixel_func = (x==0 || y==0 || y==6 || (x==4 && y>3) || (y==3 && x>2)); // G
                7: get_char_pixel_func = (x==0 || x==4 || y==3 || (x==4 && y>0)); // H (stronger right leg)
                8: get_char_pixel_func = (x==2 || y==0 || y==6); // I
                9: get_char_pixel_func = (x==4 || y==6 || (x==0 && y>4)); // J
                10: get_char_pixel_func = (x==0 || (x==4 && (y==0 || y==6)) || (x==2 && y==3) || (x==3 && (y==2 || y==4))); // K
                11: get_char_pixel_func = (x==0 || y==6); // L
                12: get_char_pixel_func = (x==0 || x==4 || (y==1 && (x==1 || x==3)) || (y==2 && x==2)); // M
                13: get_char_pixel_func = (x==0 || x==4 || (x==y)); // N (Rough)
                14: get_char_pixel_func = (x==0 || x==4 || y==0 || y==6); // O
                15: get_char_pixel_func = (x==0 || y==0 || y==3 || (x==4 && y<3)); // P
                16: get_char_pixel_func = (x==0 || x==4 || y==0 || y==6 || (x==3 && y==5)); // Q
                17: get_char_pixel_func = (x==0 || y==0 || y==3 || (x==4 && y<3) || (x==4 && y==4) || (x==3 && y==5) || (x==2 && y==4)); // R (improved leg)
                18: get_char_pixel_func = (y==0 || y==3 || y==6 || (x==0 && y<3) || (x==4 && y>3)); // S
                19: get_char_pixel_func = (y==0 || x==2); // T
                20: get_char_pixel_func = (x==0 || x==4 || y==6); // U
                21: get_char_pixel_func = ((x==0 || x==4) && y<5) || (y==6 && x==2); // V
                22: get_char_pixel_func = (x==0 || x==4 || (y==5 && (x==1 || x==3)) || (y==4 && x==2)); // W
                23: get_char_pixel_func = (x==0 || x==4 || (y==3 && x==2)); // X (Rough)
                24: get_char_pixel_func = ((x==0 || x==4) && y<3) || (x==2 && y>=3); // Y
                25: get_char_pixel_func = (y==0 || y==6 || (x+y==6)); // Z (Rough)
                default: get_char_pixel_func = 0;
            endcase
        end
    endfunction

    always @(*) begin
        hs_pixel = 0;
        hs_digit = 0;
        hs_dx = 0;
        hs_dy = 0;
        char_pixel = 0;
        char_code = 26;
        char_dx = 0;
        char_dy = 0;

        // Theme Selection Display (replaces previous Name Input)
        if (state == S_NAME_INPUT) begin
            if (v_cnt >= 200 && v_cnt < 214) begin
                char_dy = (v_cnt - 200) >> 1;
                // LIGHT (5 letters) starting at x=240
                if (h_cnt >= 240 && h_cnt < 290) begin
                    // L I G H T spaced by 10px + 4px gap
                    if (h_cnt >= 240 && h_cnt < 250) begin char_code = 11; char_dx = (h_cnt - 240) >> 1; char_pixel = get_char_pixel_func(char_code, char_dx, char_dy); end
                    else if (h_cnt >= 254 && h_cnt < 264) begin char_code = 8;  char_dx = (h_cnt - 254) >> 1; char_pixel = get_char_pixel_func(char_code, char_dx, char_dy); end
                    else if (h_cnt >= 268 && h_cnt < 278) begin char_code = 6;  char_dx = (h_cnt - 268) >> 1; char_pixel = get_char_pixel_func(char_code, char_dx, char_dy); end
                    else if (h_cnt >= 282 && h_cnt < 292) begin char_code = 7;  char_dx = (h_cnt - 282) >> 1; char_pixel = get_char_pixel_func(char_code, char_dx, char_dy); end
                    else if (h_cnt >= 296 && h_cnt < 306) begin char_code = 19; char_dx = (h_cnt - 296) >> 1; char_pixel = get_char_pixel_func(char_code, char_dx, char_dy); end
                end
                // DARK (4 letters) starting at x=360
                else if (h_cnt >= 360 && h_cnt < 420) begin
                    if (h_cnt >= 360 && h_cnt < 370) begin char_code = 3;  char_dx = (h_cnt - 360) >> 1; char_pixel = get_char_pixel_func(char_code, char_dx, char_dy); end // D
                    else if (h_cnt >= 374 && h_cnt < 384) begin char_code = 0;  char_dx = (h_cnt - 374) >> 1; char_pixel = get_char_pixel_func(char_code, char_dx, char_dy); end // A
                    else if (h_cnt >= 388 && h_cnt < 398) begin char_code = 17; char_dx = (h_cnt - 388) >> 1; char_pixel = get_char_pixel_func(char_code, char_dx, char_dy); end // R
                    else if (h_cnt >= 402 && h_cnt < 412) begin char_code = 10; char_dx = (h_cnt - 402) >> 1; char_pixel = get_char_pixel_func(char_code, char_dx, char_dy); end // K
                end
                // Highlight selection by drawing a simple underline box
                if (theme_sel == 1'b0 && (h_cnt >= 240 && h_cnt < 306) && (v_cnt >= 214 && v_cnt < 220)) char_pixel = 1; // underline LIGHT
                if (theme_sel == 1'b1 && (h_cnt >= 360 && h_cnt < 412) && (v_cnt >= 214 && v_cnt < 220)) char_pixel = 1; // underline DARK
            end
        end

        // Countdown Display (large centered digit)
        if (state == S_COUNT) begin
            if (v_cnt >= 200 && v_cnt < 214) begin
                char_dy = (v_cnt - 200) >> 1;
                if (h_cnt >= 305 && h_cnt < 315) begin
                    char_code = countdown_step; // 3,2,1 -> digit render
                    char_dx = (h_cnt - 305) >> 1;
                    // use digit renderer for numeric display
                    char_pixel = get_digit_pixel(countdown_step, char_dx, char_dy);
                end
            end
        end

        // High Score (Display only in S_OVER)
        if (state == S_OVER && v_cnt >= hs_base_y && v_cnt < hs_base_y + 14) begin
            hs_dy = (v_cnt - hs_base_y) >> 1;
            // Display 'HIGHSCORE' at S_OVER
            // H
            if (h_cnt >= hs_base_x && h_cnt < hs_base_x + 10)
                hs_pixel = (h_cnt == hs_base_x || h_cnt == hs_base_x + 8 || (v_cnt == hs_base_y + 6 || v_cnt == hs_base_y + 7));
            // I
            else if (h_cnt >= hs_base_x + 12 && h_cnt < hs_base_x + 22)
                hs_pixel = (h_cnt == hs_base_x + 16 || v_cnt == hs_base_y || v_cnt == hs_base_y + 13);
            // G
            else if (h_cnt >= hs_base_x + 24 && h_cnt < hs_base_x + 34)
                hs_pixel = get_char_pixel_func(6, (h_cnt - (hs_base_x + 24)) >> 1, hs_dy);
            // H
            else if (h_cnt >= hs_base_x + 36 && h_cnt < hs_base_x + 46)
                hs_pixel = (h_cnt == hs_base_x + 36 || h_cnt == hs_base_x + 44 || (v_cnt == hs_base_y + 6 || v_cnt == hs_base_y + 7));
            // S
            else if (h_cnt >= hs_base_x + 48 && h_cnt < hs_base_x + 58)
                hs_pixel = get_char_pixel_func(18, (h_cnt - (hs_base_x + 48)) >> 1, hs_dy);
            // C
            else if (h_cnt >= hs_base_x + 60 && h_cnt < hs_base_x + 70)
                hs_pixel = get_char_pixel_func(2, (h_cnt - (hs_base_x + 60)) >> 1, hs_dy);
            // O
            else if (h_cnt >= hs_base_x + 72 && h_cnt < hs_base_x + 82)
                hs_pixel = get_char_pixel_func(14, (h_cnt - (hs_base_x + 72)) >> 1, hs_dy);
            // R
            else if (h_cnt >= hs_base_x + 84 && h_cnt < hs_base_x + 94)
                hs_pixel = get_char_pixel_func(17, (h_cnt - (hs_base_x + 84)) >> 1, hs_dy);
            // E
            else if (h_cnt >= hs_base_x + 96 && h_cnt < hs_base_x + 106)
                hs_pixel = get_char_pixel_func(4, (h_cnt - (hs_base_x + 96)) >> 1, hs_dy);
            // Score digits (shifted right for extra spacing)
            else if (h_cnt >= hs_base_x + 120 && h_cnt < hs_base_x + 130) begin
                hs_digit = hs_thou;
                hs_dx = (h_cnt - (hs_base_x + 120)) >> 1;
                hs_pixel = get_digit_pixel(hs_digit, hs_dx, hs_dy);
            end else if (h_cnt >= hs_base_x + 134 && h_cnt < hs_base_x + 144) begin
                hs_digit = hs_hund;
                hs_dx = (h_cnt - (hs_base_x + 134)) >> 1;
                hs_pixel = get_digit_pixel(hs_digit, hs_dx, hs_dy);
            end else if (h_cnt >= hs_base_x + 148 && h_cnt < hs_base_x + 158) begin
                hs_digit = hs_tens;
                hs_dx = (h_cnt - (hs_base_x + 148)) >> 1;
                hs_pixel = get_digit_pixel(hs_digit, hs_dx, hs_dy);
            end else if (h_cnt >= hs_base_x + 162 && h_cnt < hs_base_x + 172) begin
                hs_digit = hs_ones;
                hs_dx = (h_cnt - (hs_base_x + 162)) >> 1;
                hs_pixel = get_digit_pixel(hs_digit, hs_dx, hs_dy);
            end
        end
    end

    always @(*) begin
        // LED Debugging
        led_out = 16'h0000;
        if (state == S_RUN) led_out[15] = 1'b1;
        if (jumped) led_out[0] = 1'b1;
        led_out[10:3] = next_spawn_offset[7:0];
        led_out[14:12] = state;
        // Choose behavior depending on scene. Apply theme only in RUN.
        if (state == S_RUN) begin
            bg_color  = theme_sel ? 12'h000 : 12'hFFF;
            text_color = theme_sel ? 12'hFFF : 12'h000;

            // background
            pixel_out = bg_color;
            // sprites over background
            if (sprite_data != 12'h000) pixel_out = sprite_data;
            // text/score/ground on top
            if (score_pixel || hs_pixel || char_pixel) pixel_out = text_color;
            else if (v_cnt == GROUND_Y) pixel_out = text_color;
        end else begin
            // Legacy behavior for non-game scenes: black background, sprites, white HUD text
            if (state == S_NAME_INPUT || state == S_COUNT) begin
                // Full-screen preview: background follows theme_sel
                bg_color  = theme_sel ? 12'h000 : 12'hFFF;
                text_color = theme_sel ? 12'hFFF : 12'h000;
                pixel_out = bg_color;
                // draw sprites on top if present
                if (sprite_data != 12'h000) pixel_out = sprite_data;
                // draw selection text in contrasting color
                if (score_pixel || hs_pixel || char_pixel) pixel_out = text_color;
            end else if (state == S_PAUSE) begin
                // Pause scene: use selected theme for background and HUD
                bg_color  = theme_sel ? 12'h000 : 12'hFFF;
                text_color = theme_sel ? 12'hFFF : 12'h000;
                pixel_out = bg_color;
                if (sprite_data != 12'h000) pixel_out = sprite_data;
                if (score_pixel || hs_pixel || char_pixel) pixel_out = text_color;
            end else begin
                // Legacy behavior for other non-game scenes
                pixel_out = 12'h000;
                if (sprite_data != 12'h000) pixel_out = sprite_data;
                if (score_pixel || hs_pixel || char_pixel) pixel_out = 12'hFFF;
            end
        end
    end

endmodule