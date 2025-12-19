module dino_logic (
    input wire pclk,
    input wire rst,
    input wire start_pulse,
    input wire jump_signal,       // Button Input
    input wire [511:0] key_down,  // Keyboard State
    input wire [8:0] last_change, // Raw change event
    input wire key_valid,         // Valid signal
    input wire [9:0] h_cnt,
    input wire [9:0] v_cnt,
    input wire vsync,
    output reg [11:0] pixel_out,
    output reg [15:0] led_out     // Debug LEDs
);

    localparam GROUND_Y = 350;
    localparam DINO_X   = 160;
    localparam DINO_W   = 34;
    localparam DINO_H   = 36;
    localparam CACTUS_H = 40; // General cactus height for collision
    localparam CACTUS_S_W = 38;
    localparam CACTUS_S_H = 30;
    localparam CACTUS_B_W = 39;
    localparam CACTUS_B_H = 40;
    localparam PTERO_W = 36;
    localparam PTERO_H = 34;

    localparam S_IDLE = 2'd0;
    localparam S_RUN  = 2'd1;
    localparam S_OVER = 2'd2;
    reg [1:0] state;

    reg [9:0] dino_y;
    reg signed [9:0] dino_vel;
    reg signed [12:0] cactus_x [0:2]; // Increased width to allow larger off-screen values
    reg [9:0] score;
    reg prev_vsync;
    reg [1:0] cactus_type [0:2]; // 0 to 3
    reg [2:0] cactus_active;

    integer i;
    reg [1:0] last_spawn_idx;
    reg [9:0] min_gap = 250; // Minimum gap between cactuses
    
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

    wire [7:0] scan_code = last_change[7:0];
    
    wire is_space = (scan_code == 8'h29);

    reg [4:0] anim_cnt;


    // Detect collision
    wire collision = 
    (cactus_active[0] && (DINO_X + DINO_W > cactus_x[0]) && (DINO_X < cactus_x[0] + CACTUS_S_W) && (dino_y + DINO_H > GROUND_Y - CACTUS_S_H)) ||
    (cactus_active[1] && (DINO_X + DINO_W > cactus_x[1]) && (DINO_X < cactus_x[1] + CACTUS_B_W) && (dino_y + DINO_H > GROUND_Y - CACTUS_B_H)) ||
    (cactus_active[2] && (DINO_X + DINO_W > cactus_x[2]) && (DINO_X < cactus_x[2] + PTERO_W) && (dino_y + DINO_H > GROUND_Y - PTERO_H));

    wire frame_tick = vsync && !prev_vsync;


    always @(posedge pclk or posedge rst) begin
        if (rst) begin
            state <= S_IDLE;
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
            
        end else begin
            prev_vsync <= vsync;
            prev_key_valid <= key_valid;
            if (key_press_event) last_key <= last_change;
            case (state)
                S_IDLE: begin
                    if (start_pulse) begin
                        state <= S_RUN;
                        next_spawn_offset <= random_val;
                    end
                end
                S_RUN:  if (collision)   state <= S_OVER;
                S_OVER: if (start_pulse) begin
                            state <= S_IDLE;
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
                        end
            endcase

            // 2. PHYSICS UPDATE
            if (frame_tick && state == S_RUN) begin
                for(i = 0; i < 3; i = i + 1) begin
                    if(cactus_active[i]) begin
                        cactus_x[i] <= cactus_x[i] - 4 - (score[9:4]);
                        if(cactus_x[i] < -40) cactus_active[i] <= 1'b0;
                    end
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
                // --- JUMP LOGIC ---
                if (dino_y >= GROUND_Y - DINO_H) begin
                    // On Ground
                    if ((key_down[9'h29]) || jump_signal) begin
                        dino_vel <= -18;
                        dino_y <= dino_y - 18;
                        jumped <= 1'b1;
                    end else begin
                        dino_vel <= 0;
                        dino_y <= GROUND_Y - DINO_H;
                        jumped <= 1'b0;
                    end
                end else begin
                    // In Air
                    dino_vel <= dino_vel + 1;
                    dino_y <= dino_y + dino_vel;
                    jumped <= 1'b1;
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
    localparam IMG_WIDTH = 481;  // <--- CHANGE THIS TO YOUR IMAGE WIDTH 


    // Sprite Offsets (Start at 16, width 18)
    localparam SP_DINO_JUMP = 16;   // Standing Dino
    localparam SP_DINO_RUN1 = 268;   // Use Standing Dino for now (to avoid Pterodactyl)
    localparam SP_DINO_RUN2 = 321;   // Use Standing Dino for now
    // Pterodactyls are likely at 34 and 52.
    localparam SP_CACTUS    = 106;  // Cactus starts after birds
    localparam SP_GAMEOVER  = 200;  // Placeholder for now

    localparam SP_PTERO_1 = 52; // Placeholder for Pterodactyl
    localparam SP_PTERO_2 = 71; 
    localparam SP_CACTUS_B = 141;    // Big Cactus
    localparam SP_CACTUS_S = 90;    // Small Cactus

    blk_mem_gen_0 sprite_rom (
        .clka(pclk),
        .addra(sprite_addr),
        .douta(sprite_data)
    );

    reg [9:0] dx, dy, sp_x;
    reg [9:0] cx, cy;
    reg [9:0] sprite_base_x;

    always @(*) begin
        // Default address (points to transparent/background part of image if possible)
        sprite_addr = 0; 
        dx = 0; dy = 0; sp_x = 0;
        cx = 0; cy = 0;

        if (h_cnt >= DINO_X && h_cnt < DINO_X + DINO_W &&
            v_cnt >= dino_y && v_cnt < dino_y + DINO_H) begin
            
            dx = h_cnt - DINO_X;
            dy = v_cnt - dino_y;
            
            if (state == S_OVER) sp_x = SP_GAMEOVER;
            else if (jumped)     sp_x = SP_DINO_JUMP;
            else                 sp_x = (anim_cnt[4] == 1'b0) ? SP_DINO_RUN1 : SP_DINO_RUN2;
            
            sprite_addr = (dy >> 1) * IMG_WIDTH + (sp_x + (dx >> 1));
        end
        else begin
            if (cactus_active[0] && h_cnt >= cactus_x[0] && h_cnt < cactus_x[0] + CACTUS_S_W &&v_cnt >= GROUND_Y - CACTUS_S_H && v_cnt < GROUND_Y) begin
                cx = h_cnt - cactus_x[0];
                cy = v_cnt - (GROUND_Y - CACTUS_S_H);
                // Select cactus sprite based on type (18px stride)

                sprite_base_x = SP_CACTUS_S;
                sprite_addr = (cy >> 1) * IMG_WIDTH + (sprite_base_x + (cx >> 1));
            end
            else if (cactus_active[1] && h_cnt >= cactus_x[1] && h_cnt < cactus_x[1] + CACTUS_B_W &&v_cnt >= GROUND_Y - CACTUS_B_H && v_cnt < GROUND_Y) begin
                cx = h_cnt - cactus_x[1];
                cy = v_cnt - (GROUND_Y - CACTUS_B_H);
                // Select cactus sprite based on type (18px stride)
                
                sprite_base_x = SP_CACTUS_B;
                sprite_addr = (cy >> 1) * IMG_WIDTH + (sprite_base_x + (cx >> 1));
            end
            else if (cactus_active[2] && h_cnt >= cactus_x[2] && h_cnt < cactus_x[2] + PTERO_W &&v_cnt >= GROUND_Y - PTERO_H && v_cnt < GROUND_Y) begin
                cx = h_cnt - cactus_x[2];
                cy = v_cnt - (GROUND_Y - PTERO_H);
                // Select cactus sprite based on type (18px stride)

                sprite_base_x = (anim_cnt[4] == 1'b0) ? SP_PTERO_1 : SP_PTERO_2;
                sprite_addr = (cy >> 1) * IMG_WIDTH + (sprite_base_x + (cx >> 1));
            end
        end
    end

    always @(*) begin
        // LED Debugging
        led_out = 16'h0000;
        if (state == S_RUN) led_out[15] = 1'b1;
        if (jumped) led_out[0] = 1'b1;
        led_out[10:3] = next_spawn_offset[7:0];

        pixel_out = 12'h000;
        
        // Priority: Sprites -> Ground -> Background
        // Check if sprite_data is not "transparent" (assuming black 0x000 is transparent)
        // Note: sprite_data corresponds to the address from the PREVIOUS cycle (or 2 cycles ago).
        // This might cause a 1-2 pixel shift to the right.
        
        if (sprite_data != 12'h000) begin
             // We only draw the sprite if we are "inside" the box logic from the previous cycle.
             // But since we don't easily know that here without pipelining, 
             // we'll just trust the non-black pixel output.
             // For better precision, we should pipeline the "is_dino" / "is_cactus" signals.
             pixel_out = sprite_data;
        end
        else if (v_cnt == GROUND_Y) begin
             pixel_out = 12'hFFF;
        end
    end

endmodule