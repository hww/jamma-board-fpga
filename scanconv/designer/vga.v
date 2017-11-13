`timescale 1 ns/100 ps


module vga(vd, clk, video, hsync, vsync, save, saved);
output  [7:0] vd;
input  clk, video, hsync, vsync;
output  save;
input  saved;

    wire pixelZ0Z_3, pixelZ0Z_1, pixelZ0Z_2, pixelZ0Z_0, GNDZ0, VCCZ0, 
        pixel_n3, pixel_n2, clk_c, video_c, hsync_c, vd_c_0, vd_c_1, 
        vd_c_2, vd_c_3, vd_c_4, vd_c_5, vd_c_6, vd_c_7, save_c, 
        pixel_iZ0Z_0, hsync_c_iZ0, y, pixel_n2_0_xor2_cm8iZ0;
    
    CM8 pixel_n3_0_xor2 (.D0(GNDZ0), .D1(pixelZ0Z_0), .D2(VCCZ0), .D3(
        pixel_iZ0Z_0), .S00(pixelZ0Z_1), .S01(pixelZ0Z_2), .S10(
        pixelZ0Z_3), .S11(GNDZ0), .Y(pixel_n3));
    DFC1B pixel_3 (.D(pixel_n3), .CLK(clk_c), .CLR(hsync_c_iZ0), .Q(
        pixelZ0Z_3));
    OUTBUF save_pad (.PAD(save), .D(save_c));
    CM8 hsync_c_i (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(hsync_c), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        hsync_c_iZ0));
    AND4A save_0_and2 (.A(pixelZ0Z_3), .B(pixelZ0Z_2), .C(pixelZ0Z_0), 
        .D(pixelZ0Z_1), .Y(save_c));
    CM8INV pixel_n2_0_xor2_cm8i (.A(pixelZ0Z_1), .Y(
        pixel_n2_0_xor2_cm8iZ0));
    OUTBUF vd_pad_0 (.PAD(vd[0]), .D(vd_c_0));
    OUTBUF vd_pad_7 (.PAD(vd[7]), .D(vd_c_7));
    DF1 vdZ0Z_0 (.D(video_c), .CLK(clk_c), .Q(vd_c_0));
    VCC VCC (.Y(VCCZ0));
    OUTBUF vd_pad_3 (.PAD(vd[3]), .D(vd_c_3));
    DF1 vdZ0Z_4 (.D(vd_c_3), .CLK(clk_c), .Q(vd_c_4));
    CM8 pixel_n2_0_xor2 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(VCCZ0)
        , .S00(pixelZ0Z_2), .S01(VCCZ0), .S10(pixel_n2_0_xor2_cm8iZ0), 
        .S11(pixel_iZ0Z_0), .Y(pixel_n2));
    XOR2 G_13 (.A(pixelZ0Z_0), .B(pixelZ0Z_1), .Y(y));
    CM8 pixel_i_0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(pixelZ0Z_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        pixel_iZ0Z_0));
    DF1 vdZ0Z_2 (.D(vd_c_1), .CLK(clk_c), .Q(vd_c_2));
    OUTBUF vd_pad_1 (.PAD(vd[1]), .D(vd_c_1));
    DF1 vdZ0Z_1 (.D(vd_c_0), .CLK(clk_c), .Q(vd_c_1));
    DF1 vdZ0Z_6 (.D(vd_c_5), .CLK(clk_c), .Q(vd_c_6));
    DF1 vdZ0Z_3 (.D(vd_c_2), .CLK(clk_c), .Q(vd_c_3));
    DFC1B pixel_1 (.D(y), .CLK(clk_c), .CLR(hsync_c_iZ0), .Q(
        pixelZ0Z_1));
    DFC1B pixel_0 (.D(pixel_iZ0Z_0), .CLK(clk_c), .CLR(hsync_c_iZ0), 
        .Q(pixelZ0Z_0));
    GND GND (.Y(GNDZ0));
    DF1 vdZ0Z_5 (.D(vd_c_4), .CLK(clk_c), .Q(vd_c_5));
    OUTBUF vd_pad_4 (.PAD(vd[4]), .D(vd_c_4));
    DFC1B pixel_2 (.D(pixel_n2), .CLK(clk_c), .CLR(hsync_c_iZ0), .Q(
        pixelZ0Z_2));
    DF1 vdZ0Z_7 (.D(vd_c_6), .CLK(clk_c), .Q(vd_c_7));
    OUTBUF vd_pad_5 (.PAD(vd[5]), .D(vd_c_5));
    OUTBUF vd_pad_6 (.PAD(vd[6]), .D(vd_c_6));
    INBUF hsync_pad (.PAD(hsync), .Y(hsync_c));
    INBUF video_pad (.PAD(video), .Y(video_c));
    OUTBUF vd_pad_2 (.PAD(vd[2]), .D(vd_c_2));
    HCLKBUF clk_pad (.PAD(clk), .Y(clk_c));
    
endmodule
