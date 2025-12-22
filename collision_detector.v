// collision_detector.v
// Extracted from dino_logic.v

module collision_detector (
    input wire [9:0] DINO_X,
    input wire [9:0] dino_y,
    input wire [9:0] curr_dino_w,
    input wire [9:0] curr_dino_h,
    input wire signed [12:0] cactus_x [0:2],
    input wire [2:0] cactus_active,
    input wire [1:0] cactus_type [0:2],
    input wire [9:0] CACTUS_S_W, CACTUS_S_H, CACTUS_B_W, CACTUS_B_H, PTERO_W, PTERO_H, PTERO_FLY_OFFSET,
    input wire [9:0] GROUND_Y,
    input wire signed [12:0] drop_obs_x,
    input wire [9:0] drop_obs_y, d_obs_w, d_obs_h,
    input wire drop_obs_active,
    input wire [9:0] col_y, col_h,
    output reg collision
);
    integer i;
    always @(*) begin
        collision = 1'b0;
        for(i = 0; i < 3; i = i + 1) begin
            if(cactus_active[i]) begin
                case(cactus_type[i])
                    2'd0: begin // Small Cactus
                        if ((DINO_X + curr_dino_w > cactus_x[i]) && (DINO_X < cactus_x[i] + CACTUS_S_W) && (col_y + col_h > GROUND_Y - CACTUS_S_H)) collision = 1'b1;
                    end
                    2'd1: begin // Big Cactus
                        if ((DINO_X + curr_dino_w > cactus_x[i]) && (DINO_X < cactus_x[i] + CACTUS_B_W) && (col_y + col_h > GROUND_Y - CACTUS_B_H)) collision = 1'b1;
                    end
                    default: begin // Pterodactyl
                        if ((DINO_X + curr_dino_w > cactus_x[i]) && (DINO_X < cactus_x[i] + PTERO_W) && 
                            (col_y + col_h > GROUND_Y - PTERO_H - PTERO_FLY_OFFSET) && 
                            (col_y < GROUND_Y - PTERO_FLY_OFFSET)) 
                            collision = 1'b1;
                    end
                endcase
            end
        end
        if (drop_obs_active) begin
            if ((DINO_X + curr_dino_w > drop_obs_x) && (DINO_X < drop_obs_x + d_obs_w) && 
                (col_y + col_h > drop_obs_y) && (col_y < drop_obs_y + d_obs_h)) begin
                collision = 1'b1;
            end
        end
    end
endmodule
