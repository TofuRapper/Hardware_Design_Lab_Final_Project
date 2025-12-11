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
    localparam DINO_X   = 80;
    localparam DINO_W   = 20;
    localparam DINO_H   = 30;
    localparam CACTUS_W = 15;
    localparam CACTUS_H = 25;

    localparam S_IDLE = 2'd0;
    localparam S_RUN  = 2'd1;
    localparam S_OVER = 2'd2;
    reg [1:0] state;

    reg [9:0] dino_y;
    reg signed [9:0] dino_vel;
    reg [9:0] cactus_x;
    reg [9:0] score;
    reg prev_vsync;
    
    reg [8:0] last_key;
    reg prev_key_valid;
    
    wire key_press_event = key_valid && !prev_key_valid && (last_change != last_key);

    wire [7:0] scan_code = last_change[7:0];
    
    wire is_space = (scan_code == 8'h29);

    // Detect collision
    wire collision = (
        (DINO_X + DINO_W > cactus_x) && 
        (DINO_X < cactus_x + CACTUS_W) && 
        (dino_y + DINO_H > GROUND_Y - CACTUS_H)
    );
    
    wire frame_tick = vsync && !prev_vsync;

    always @(posedge pclk or posedge rst) begin
        if (rst) begin
            state <= S_IDLE;
            dino_y <= GROUND_Y - DINO_H;
            dino_vel <= 0;
            cactus_x <= 630;
            score <= 0;
            prev_vsync <= 0;
            
            prev_key_valid <= 0;
            last_key <= 9'h000;
            
        end else begin
            prev_vsync <= vsync;
            prev_key_valid <= key_valid;
            if (key_press_event) last_key <= last_change;
            case (state)
                S_IDLE: if (start_pulse) state <= S_RUN;
                S_RUN:  if (collision)   state <= S_OVER;
                S_OVER: if (start_pulse) begin
                            state <= S_IDLE;
                            dino_y <= GROUND_Y - DINO_H;
                            cactus_x <= 630;
                            dino_vel <= 0;
                        end
            endcase

            // 2. PHYSICS UPDATE
            if (frame_tick && state == S_RUN) begin
                // Move Cactus
                if (cactus_x < 5) begin
                    cactus_x <= 630;
                    score <= score + 1;
                end else begin
                    cactus_x <= cactus_x - 4 - (score[9:4]);
                end

                // --- JUMP LOGIC ---
                if (dino_y >= GROUND_Y - DINO_H) begin
                    // On Ground
                    if ((key_press_event && is_space && key_down[last_change]) || jump_signal) begin
                        dino_vel <= -12;
                        dino_y <= dino_y - 12;
                    end else begin
                        dino_vel <= 0;
                        dino_y <= GROUND_Y - DINO_H;
                    end
                end else begin
                    // In Air
                    dino_vel <= dino_vel + 1;
                    dino_y <= dino_y + dino_vel;
                end
            end
        end
    end

    always @(*) begin
        // LED Debugging
        led_out = 16'h0000;
        if (state == S_RUN) led_out[15] = 1'b1;
        if (key_press_event && is_space) led_out[0] = 1'b1;

        pixel_out = 12'h000;
        if (v_cnt == GROUND_Y) pixel_out = 12'hFFF;
        else if (h_cnt >= DINO_X && h_cnt < DINO_X + DINO_W &&
                 v_cnt >= dino_y && v_cnt < dino_y + DINO_H) begin
             if (state == S_OVER) pixel_out = 12'hF00;
             else pixel_out = 12'h0F0;
        end
        else if (h_cnt >= cactus_x && h_cnt < cactus_x + CACTUS_W &&
                 v_cnt >= GROUND_Y - CACTUS_H && v_cnt < GROUND_Y) begin
            pixel_out = 12'h00F;
        end
    end

endmodule