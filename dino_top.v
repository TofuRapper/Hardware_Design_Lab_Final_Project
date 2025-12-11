module dino_top (
    input wire clk,
    input wire rst,
    input wire start,
    input wire jump,
    inout wire PS2_CLK,
    inout wire PS2_DATA,
    output reg [3:0] vgaRed,
    output reg [3:0] vgaGreen,
    output reg [3:0] vgaBlue,
    output wire hsync,
    output wire vsync,
    output wire [15:0] led,
    output wire [6:0] seg,
    output wire [3:0] Display
);

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
    debounce db_start (.pb_debounced(start_db), .pb(start), .clk(clk));
    one_pulse pulse_start (.clk(pclk), .pb_in(start_db), .pb_out(start_pulse));
    debounce db_jump (.pb_debounced(jump_db), .pb(jump), .clk(clk));

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

    wire [11:0] pixel_out;
    dino_logic game_inst (
        .pclk(pclk),
        .rst(rst),
        .start_pulse(start_pulse),
        .jump_signal(jump_db),
        .key_down(key_down),
        .last_change(last_change),
        .key_valid(key_valid),
        .h_cnt(h_cnt),
        .v_cnt(v_cnt),
        .vsync(vsync),
        .pixel_out(pixel_out),
        .led_out(led)
    );

    always @(*) begin
        if (!valid) 
            {vgaRed, vgaGreen, vgaBlue} = 12'h000;
        else 
            {vgaRed, vgaGreen, vgaBlue} = pixel_out;
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