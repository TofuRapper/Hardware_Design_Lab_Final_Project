module LFSR (
    input wire clk,
    input wire rst,
    output reg [9:0] random_out
);

    // Upgrade to 32-bit for better randomness
    // Period at 25MHz: ~171 seconds (vs 2.6ms for 16-bit)
    reg [31:0] lfsr_reg;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            lfsr_reg <= 32'hACE1ACE1; // Non-zero seed
            random_out <= 10'd0;
        end else begin
            // Taps for 32-bit maximal LFSR: 32, 22, 2, 1
            // (Indices 31, 21, 1, 0)
            lfsr_reg <= {lfsr_reg[30:0], lfsr_reg[31] ^ lfsr_reg[21] ^ lfsr_reg[1] ^ lfsr_reg[0]};
            random_out <= lfsr_reg[9:0];
        end
    end 

endmodule