// note_gen.v
// Generates note frequencies based on key inputs

module my_note_gen (
    input wire clk,
    input wire rst,
    input wire [511:0] key_down,
    output wire [15:0] audio_in_left,
    output wire [15:0] audio_in_right
);

    `define silence 32'd50000000
    `define c4 32'd262   // C4
    `define d4 32'd294   // D4
    `define e4 32'd330   // E4
    `define f4 32'd349   // F4
    `define g4 32'd392   // G4
    `define a4 32'd440   // A4
    `define b4 32'd494   // B4

    reg [31:0] freqL, freqR;
    wire [21:0] freq_outL = 50000000 / freqL;
    wire [21:0] freq_outR = 50000000 / freqR;

    // Determine frequency based on key presses
    always @(*) begin
        if (key_down[9'h01C]) freqL = `c4; // A key
        else if (key_down[9'h032]) freqL = `d4; // B key
        else if (key_down[9'h021]) freqL = `e4; // C key
        else if (key_down[9'h023]) freqL = `f4; // D key
        else if (key_down[9'h024]) freqL = `g4; // E key
        else if (key_down[9'h02B]) freqL = `a4; // F key
        else if (key_down[9'h034]) freqL = `b4; // G key
        else freqL = `silence;
        freqR = freqL;
    end

    // Placeholder for actual note generation (square wave or sine)
    // For now, just set to zero or some value
    assign audio_in_left = (freqL != `silence) ? 16'h7FFF : 16'h0000; // Simple on/off
    assign audio_in_right = audio_in_left;

endmodule