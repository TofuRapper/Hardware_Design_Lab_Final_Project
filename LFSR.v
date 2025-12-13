module LFSR (
    input wire clk,
    input wire rst,
    output reg [9:0] random_out
);

    reg [15:0] lfsr_reg;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            lfsr_reg <= 16'hACE1;
            random_out <= 10'd0;
        end else begin
            lfsr_reg <= {lfsr_reg[14:0], lfsr_reg[15] ^ lfsr_reg[13] ^ lfsr_reg[12] ^ lfsr_reg[10]};
            random_out <= lfsr_reg[9:0];
        end
    end 

endmodule