// score_display.v
// Extracted from dino_logic.v

module score_display (
    input wire [9:0] h_cnt, v_cnt,
    input wire [2:0] state,
    input wire [3:0] score_ones, score_tens, score_hund, score_thou,
    input wire [9:0] high_score,
    input wire [3:0] hs_ones, hs_tens, hs_hund, hs_thou,
    input wire [4:0] player_name [0:2],
    input wire [4:0] hs_name [0:2],
    input wire [9:0] leaderboard_score [0:9],
    input wire [4:0] leaderboard_name [0:9][0:2],
    output reg score_pixel,
    output reg hs_pixel,
    output reg char_pixel
);


    reg [3:0] current_digit;
    reg [2:0] digit_x, digit_y;
    reg [9:0] hs_base_x, hs_base_y;
    reg [4:0] char_code;
    reg [2:0] char_dx, char_dy;

    function get_digit_pixel;
        input [3:0] digit;
        input [2:0] x;
        input [2:0] y;
        begin
            case(digit)
                0: get_digit_pixel = (x==0 || x==4 || y==0 || y==6 || (x==0 && y>0 && y<6) || (x==4 && y>0 && y<6));
                1: get_digit_pixel = (x==4);
                2: get_digit_pixel = (y==0 || y==3 || y==6 || (x==4 && y<3) || (x==0 && y>3));
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
                7: get_char_pixel_func = (x==0 || x==4 || y==3); // H
                8: get_char_pixel_func = (x==2 || y==0 || y==6); // I
                9: get_char_pixel_func = (x==4 || y==6 || (x==0 && y>4)); // J
                10: get_char_pixel_func = (x==0 || (x==4 && (y==0 || y==6)) || (x==2 && y==3) || (x==3 && (y==2 || y==4))); // K
                11: get_char_pixel_func = (x==0 || y==6); // L
                12: get_char_pixel_func = (x==0 || x==4 || (y==1 && (x==1 || x==3)) || (y==2 && x==2)); // M
                13: get_char_pixel_func = (x==0 || x==4 || (x==y)); // N (Rough)
                14: get_char_pixel_func = (x==0 || x==4 || y==0 || y==6); // O
                15: get_char_pixel_func = (x==0 || y==0 || y==3 || (x==4 && y<3)); // P
                16: get_char_pixel_func = (x==0 || x==4 || y==0 || y==6 || (x==3 && y==5)); // Q
                17: get_char_pixel_func = (x==0 || y==0 || y==3 || (x==4 && y<3) || (x==y && y>3)); // R
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

    always @(*) begin
        // Display high-score directly on Game Over scene (S_OVER == 3'd4)
        if (state == 3'd4) begin // S_OVER
            hs_base_x = 120; // moved left
            hs_base_y = 140; // moved up
        end else begin
            hs_base_x = 20;
            hs_base_y = 20;
        end
    end

    always @(*) begin
        char_pixel = 0;
        char_code = 0;
        char_dx = 0;
        char_dy = 0;

        // Leaderboard display disabled (removed per request)
        if (1'b0) begin
            for (integer lb_i = 0; lb_i < 10; lb_i = lb_i + 1) begin
                if (v_cnt >= 60 + lb_i*20 && v_cnt < 60 + lb_i*20 + 8) begin
                    char_dy = v_cnt[2:0];
                    // Name chars
                    for (integer lb_j = 0; lb_j < 3; lb_j = lb_j + 1) begin
                        if (h_cnt >= 100 + lb_j*12 && h_cnt < 100 + lb_j*12 + 8) begin
                            char_code = leaderboard_name[lb_i][lb_j];
                            char_dx = h_cnt[2:0];
                            char_pixel = get_char_pixel_func(char_code, char_dx, char_dy);
                        end
                    end
                    // Score digits
                    reg [3:0] d0, d1, d2, d3;
                    d3 = leaderboard_score[lb_i] / 1000;
                    d2 = (leaderboard_score[lb_i] / 100) % 10;
                    d1 = (leaderboard_score[lb_i] / 10) % 10;
                    d0 = leaderboard_score[lb_i] % 10;
                    if (h_cnt >= 160 && h_cnt < 168) begin
                        char_code = d3;
                        char_dx = h_cnt[2:0];
                        char_pixel = get_digit_pixel(char_code, char_dx, char_dy);
                    end else if (h_cnt >= 172 && h_cnt < 180) begin
                        char_code = d2;
                        char_dx = h_cnt[2:0];
                        char_pixel = get_digit_pixel(char_code, char_dx, char_dy);
                    end else if (h_cnt >= 184 && h_cnt < 192) begin
                        char_code = d1;
                        char_dx = h_cnt[2:0];
                        char_pixel = get_digit_pixel(char_code, char_dx, char_dy);
                    end else if (h_cnt >= 196 && h_cnt < 204) begin
                        char_code = d0;
                        char_dx = h_cnt[2:0];
                        char_pixel = get_digit_pixel(char_code, char_dx, char_dy);
                    end
                end
            end
        end
    end

endmodule
