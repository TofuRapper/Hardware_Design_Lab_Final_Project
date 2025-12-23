module dino_top (
    input wire clk,
    input wire rst,
    input wire start,
    input wire jump,
    input wire duck,
    input wire pause,
    inout wire PS2_CLK,
    inout wire PS2_DATA,
    input echo,
    output wire trig,
    output reg [3:0] vgaRed,
    output reg [3:0] vgaGreen,
    output reg [3:0] vgaBlue,
    output wire hsync,
    output wire vsync,
    output reg [15:0] led,
    output wire [6:0] seg,
    output wire [3:0] Display,
    output wire audio_mclk,
    output wire audio_lrck,
    output wire audio_sck,
    output wire audio_sdin
);

    `define silence 32'd50000000
    `define c4 32'd262   // C4
    `define d4 32'd294   // D4
    `define e4 32'd330   // E4
    `define f4 32'd349   // F4
    `define g4 32'd392   // G4
    `define a4 32'd440   // A4
    `define b4 32'd494   // B4

    wire pclk;
    clock_divider #(.n(2)) pclk_gen (.clk(clk), .clk_div(pclk));

    wire valid;
    wire [9:0] h_cnt, v_cnt;
    vga_controller vga_inst (
        .pclk(pclk), .reset(rst),
        .hsync(hsync), .vsync(vsync),
        .valid(valid), .h_cnt(h_cnt), .v_cnt(v_cnt)
    );

    wire start_db, start_pulse, jump_db;
    wire duck_db, pause_db, pause_pulse;
    debounce db_start (.pb_debounced(start_db), .pb(start), .clk(clk));
    one_pulse pulse_start (.clk(pclk), .pb_in(start_db), .pb_out(start_pulse));
    debounce db_jump (.pb_debounced(jump_db), .pb(jump), .clk(clk));
    debounce db_duck (.pb_debounced(duck_db), .pb(duck), .clk(clk));
    debounce db_pause (.pb_debounced(pause_db), .pb(pause), .clk(clk));
    one_pulse pulse_pause (.clk(pclk), .pb_in(pause_db), .pb_out(pause_pulse));

    wire [511:0] key_down;
    wire [8:0] last_change;
    wire key_valid;
    KeyboardDecoder kbd_decoder (
        .key_down(key_down), 
        .last_change(last_change),
        .key_valid(key_valid),
        .PS2_DATA(PS2_DATA),
        .PS2_CLK(PS2_CLK),
        .rst(rst),
        .clk(clk)
    );

    wire [19:0] distance;
    sonic_top B(
        .clk(clk), 
        .rst(rst), 
        .Echo(echo), 
        .Trig(trig),
        .distance(distance)
    );

    // Audio Logic
    wire clkDiv22 = clk; // Use original clock for audio generation

    wire [15:0] audio_in_left, audio_in_right;
    reg [31:0] freqL, freqR;
    wire [21:0] freq_outL = 50000000 / freqL;
    wire [21:0] freq_outR = 50000000 / freqR;

    // Keyboard-based base frequency (kept intact)
    reg [31:0] keyboard_freq;
    always @(*) begin
        if (key_down[9'h01C]) keyboard_freq = `c4; // A key
        else if (key_down[9'h032]) keyboard_freq = `d4; // B key
        else if (key_down[9'h021]) keyboard_freq = `e4; // C key
        else if (key_down[9'h023]) keyboard_freq = `f4; // D key
        else if (key_down[9'h024]) keyboard_freq = `g4; // E key
        else if (key_down[9'h02B]) keyboard_freq = `a4; // F key
        else if (key_down[9'h034]) keyboard_freq = `b4; // G key
        else keyboard_freq = `silence;
    end

    // Event-driven tone logic (synchronized from pclk domain)
    reg jump_sync0, jump_sync1, prev_jump_sync;
    reg land_sync0, land_sync1, prev_land_sync;
    reg tone_active;
    reg [31:0] tone_counter;
    reg [31:0] tone_freq;

    // Synchronize event toggles and detect changes (clk domain)
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            jump_sync0 <= 1'b0; jump_sync1 <= 1'b0; prev_jump_sync <= 1'b0;
            land_sync0 <= 1'b0; land_sync1 <= 1'b0; prev_land_sync <= 1'b0;
            tone_active <= 1'b0;
            tone_counter <= 32'd0;
            tone_freq <= `silence;
        end else begin
            // two-stage synchronizers
            jump_sync0 <= jump_event_pclk;
            jump_sync1 <= jump_sync0;
            land_sync0 <= land_event_pclk;
            land_sync1 <= land_sync0;

            // detect toggle changes
            if (jump_sync1 != prev_jump_sync) begin
                tone_freq <= `c4; // play C4 on jump start
                tone_counter <= 32'd50000000; // 1 second @ 50MHz
                tone_active <= 1'b1;
            end
            if (land_sync1 != prev_land_sync) begin
                tone_freq <= `a4; // play A4 on landing
                tone_counter <= 32'd50000000; // 1 second @ 50MHz
                tone_active <= 1'b1;
            end

            prev_jump_sync <= jump_sync1;
            prev_land_sync <= land_sync1;

            // countdown
            if (tone_active) begin
                if (tone_counter == 0) begin
                    tone_active <= 1'b0;
                    tone_freq <= `silence;
                end else begin
                    tone_counter <= tone_counter - 1;
                end
            end
        end
    end

    // Final frequency selection: event tone has priority, else keyboard
    always @(*) begin
        if (tone_active) freqL = tone_freq;
        else freqL = keyboard_freq;
        freqR = freqL;
    end

    note_gen noteGen_00(
        .clk(clkDiv22),
        .rst(rst),
        .volume(3'd5),
        .note_div_left(freq_outL),
        .note_div_right(freq_outR),
        .audio_left(audio_in_left),
        .audio_right(audio_in_right)
    );

    speaker_control sc(
        .clk(clk),
        .rst(rst),
        .audio_in_left(audio_in_left),
        .audio_in_right(audio_in_right),
        .audio_mclk(audio_mclk),
        .audio_lrck(audio_lrck),
        .audio_sck(audio_sck),
        .audio_sdin(audio_sdin)
    );

    wire [11:0] pixel_out;
    wire [15:0] led_out_wire;
    wire jump_event_pclk;
    wire land_event_pclk;
    dino_logic game_inst (
        .pclk(pclk),
        .rst(rst),
        .start_pulse(start_pulse),
        .jump_signal(jump_db),
        .duck_signal(duck_db),
        .pause_pulse(pause_pulse),
        .key_down(key_down),
        .last_change(last_change),
        .key_valid(key_valid),
        .h_cnt(h_cnt),
        .v_cnt(v_cnt),
        .vsync(vsync),
        .pixel_out(pixel_out),
        .led_out(led_out_wire),
        .jump_event(jump_event_pclk),
        .land_event(land_event_pclk),
        .distance(distance)
    );


    always @(*) begin
        if (!valid) 
            {vgaRed, vgaGreen, vgaBlue} = 12'h000;
        else 
            {vgaRed, vgaGreen, vgaBlue} = pixel_out;
    end

    always @(*) begin
        led = led_out_wire;
        if (freqL != `silence) led[1] = 1'b1; // LED[1] indicates volume output
    end

    wire game_active = led[15]; 
    reg [5:0] frame_count;
    reg [3:0] sec_ones, sec_tens, min_ones, min_tens;
    reg prev_vsync_top;
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            frame_count <= 0;
            sec_ones <= 0; sec_tens <= 0;
            min_ones <= 0; min_tens <= 0;
            prev_vsync_top <= 0;
        end else begin
            prev_vsync_top <= vsync;
            if (game_active && vsync && !prev_vsync_top) begin
                if (frame_count == 59) begin
                    frame_count <= 0;
                    if (sec_ones == 9) begin
                        sec_ones <= 0;
                        if (sec_tens == 5) begin
                            sec_tens <= 0;
                            if (min_ones == 9) begin
                                min_ones <= 0;
                                min_tens <= min_tens + 1;
                            end else begin
                                min_ones <= min_ones + 1;
                            end
                        end else begin
                            sec_tens <= sec_tens + 1;
                        end
                    end else begin
                        sec_ones <= sec_ones + 1;
                    end
                end else begin
                    frame_count <= frame_count + 1;
                end
            end
        end
    end
    SevenSegment display_inst (
        .clk(clk),
        .rst(rst),
        // Time
        .nums({min_tens, min_ones, sec_tens, sec_ones}), 
        .display(seg),
        .digit(Display)
    );

endmodule

module note_gen(
    input clk, // clock from crystal
    input rst, // active high reset
    input [2:0] volume, 
    input [21:0] note_div_left, // div for note generation
    input [21:0] note_div_right,
    output [15:0] audio_left,
    output [15:0] audio_right
    );

    // Declare internal signals
    reg [21:0] clk_cnt_next, clk_cnt;
    reg [21:0] clk_cnt_next_2, clk_cnt_2;
    reg b_clk, b_clk_next;
    reg c_clk, c_clk_next;

    // Note frequency generation
    // clk_cnt, clk_cnt_2, b_clk, c_clk
    always @(posedge clk or posedge rst)
        if (rst == 1'b1)
            begin
                clk_cnt <= 22'd0;
                clk_cnt_2 <= 22'd0;
                b_clk <= 1'b0;
                c_clk <= 1'b0;
            end
        else
            begin
                clk_cnt <= clk_cnt_next;
                clk_cnt_2 <= clk_cnt_next_2;
                b_clk <= b_clk_next;
                c_clk <= c_clk_next;
            end
    
    // clk_cnt_next, b_clk_next
    always @*
        if (clk_cnt == note_div_left)
            begin
                clk_cnt_next = 22'd0;
                b_clk_next = ~b_clk;
            end
        else
            begin
                clk_cnt_next = clk_cnt + 1'b1;
                b_clk_next = b_clk;
            end

    // clk_cnt_next_2, c_clk_next
    always @*
        if (clk_cnt_2 == note_div_right)
            begin
                clk_cnt_next_2 = 22'd0;
                c_clk_next = ~c_clk;
            end
        else
            begin
                clk_cnt_next_2 = clk_cnt_2 + 1'b1;
                c_clk_next = c_clk;
            end

    // Assign the amplitude of the note
    // Volume is controlled here
    assign audio_left = (note_div_left == 22'd1) ? 16'h0000 : 
                        (volume == 1) ? ((b_clk == 1'b0) ? -16'd200 : 16'd200):
                        (volume == 2) ? ((b_clk == 1'b0) ? -16'd400 : 16'd400):
                        (volume == 3) ? ((b_clk == 1'b0) ? -16'd600 : 16'd600):
                        (volume == 4) ? ((b_clk == 1'b0) ? -16'd800 : 16'd800):
                        (volume == 5) ? ((b_clk == 1'b0) ? -16'd1000 : 16'd1000):
                        16'h0000;
    assign audio_right = (note_div_right == 22'd1) ? 16'h0000 : 
                        (volume == 1) ? ((c_clk == 1'b0) ? -16'd200 : 16'd200):
                        (volume == 2) ? ((c_clk == 1'b0) ? -16'd400 : 16'd400):
                        (volume == 3) ? ((c_clk == 1'b0) ? -16'd600 : 16'd600):
                        (volume == 4) ? ((c_clk == 1'b0) ? -16'd800 : 16'd800):
                        (volume == 5) ? ((c_clk == 1'b0) ? -16'd1000 : 16'd1000):
                        16'h0000;
endmodule

module speaker_control(
    input clk,  // clock from the crystal
    input rst,  // active high reset
    input [15:0] audio_in_left, // left channel audio data input
    input [15:0] audio_in_right, // right channel audio data input
    output audio_mclk, // master clock
    output audio_lrck, // left-right clock, Word Select clock, or sample rate clock
    output audio_sck, // serial clock
    output reg audio_sdin // serial audio data input
    ); 

    // Declare internal signal nodes 
    wire [8:0] clk_cnt_next;
    reg [8:0] clk_cnt;
    reg [15:0] audio_left, audio_right;

    // Counter for the clock divider
    assign clk_cnt_next = clk_cnt + 1'b1;

    always @(posedge clk or posedge rst)
        if (rst == 1'b1)
            clk_cnt <= 9'd0;
        else
            clk_cnt <= clk_cnt_next;

    // Assign divided clock output
    assign audio_mclk = clk_cnt[1];
    assign audio_lrck = clk_cnt[8];
    assign audio_sck = 1'b1; // use internal serial clock mode

    // audio input data buffer
    always @(posedge clk_cnt[8] or posedge rst)
        if (rst == 1'b1)
            begin
                audio_left <= 16'd0;
                audio_right <= 16'd0;
            end
        else
            begin
                audio_left <= audio_in_left;
                audio_right <= audio_in_right;
            end

    always @*
        case (clk_cnt[8:4])
            5'b00000: audio_sdin = audio_right[0];
            5'b00001: audio_sdin = audio_left[15];
            5'b00010: audio_sdin = audio_left[14];
            5'b00011: audio_sdin = audio_left[13];
            5'b00100: audio_sdin = audio_left[12];
            5'b00101: audio_sdin = audio_left[11];
            5'b00110: audio_sdin = audio_left[10];
            5'b00111: audio_sdin = audio_left[9];
            5'b01000: audio_sdin = audio_left[8];
            5'b01001: audio_sdin = audio_left[7];
            5'b01010: audio_sdin = audio_left[6];
            5'b01011: audio_sdin = audio_left[5];
            5'b01100: audio_sdin = audio_left[4];
            5'b01101: audio_sdin = audio_left[3];
            5'b01110: audio_sdin = audio_left[2];
            5'b01111: audio_sdin = audio_left[1];
            5'b10000: audio_sdin = audio_left[0];
            5'b10001: audio_sdin = audio_right[15];
            5'b10010: audio_sdin = audio_right[14];
            5'b10011: audio_sdin = audio_right[13];
            5'b10100: audio_sdin = audio_right[12];
            5'b10101: audio_sdin = audio_right[11];
            5'b10110: audio_sdin = audio_right[10];
            5'b10111: audio_sdin = audio_right[9];
            5'b11000: audio_sdin = audio_right[8];
            5'b11001: audio_sdin = audio_right[7];
            5'b11010: audio_sdin = audio_right[6];
            5'b11011: audio_sdin = audio_right[5];
            5'b11100: audio_sdin = audio_right[4];
            5'b11101: audio_sdin = audio_right[3];
            5'b11110: audio_sdin = audio_right[2];
            5'b11111: audio_sdin = audio_right[1];
            default: audio_sdin = 1'b0;
        endcase

endmodule