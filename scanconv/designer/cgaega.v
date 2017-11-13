`timescale 1 ns/100 ps


module cgaega(ha, va, clk, egamode, csync, reset);
output  [8:0] ha;
output  [7:0] va;
input  clk, egamode;
output  csync;
input  reset;

    wire hsyncZ0, vsyncZ0, GNDZ0, VCCZ0, va_n7, va_n6, va_n5, va_n3, 
        va_n2, vsync14, vframe23, hsync14, hsync14_1, clk_c, ha_c_0, 
        ha_c_1, ha_c_2, ha_c_3, ha_c_4, ha_c_5, ha_c_6, ha_c_7, ha_c_8, 
        va_c_0, va_c_1, va_c_2, va_c_3, va_c_4, va_c_5, va_c_6, va_c_7, 
        csync_c, reset_c, reset_i_0_bufZ0, va_c_iZ0Z_2, ha_c_iZ0Z_1, 
        va_c_iZ0Z_0, reset_c_iZ0, y, y_0, y_1, y_2, y_3, y_4, y_5, y_6, 
        y_7, y_8, y_9, y_10, y_11, y_12, y_13, y_14, y_15, y_16, y_17, 
        hsync14_0_and2_cm8iZ0, un6_hcnt_0_xor2_cm8iZ0Z_6, 
        va_n7_0_xor2_cm8iZ0, va_n6_0_xor2_cm8iZ0, va_n5_0_xor2_cm8iZ0;
    
    AND3 un6_hcnt_c6 (.A(ha_c_4), .B(ha_c_5), .C(ha_c_6), .Y(y_14));
    OUTBUF ha_pad_6 (.PAD(ha[6]), .D(ha_c_6));
    XOR2 G_89 (.A(ha_c_0), .B(ha_c_1), .Y(y_7));
    XOR2 G_92 (.A(y_15), .B(ha_c_4), .Y(y_5));
    OUTBUF va_pad_2 (.PAD(va[2]), .D(va_c_2));
    AND3 un6_hcnt_c2 (.A(ha_c_0), .B(ha_c_1), .C(ha_c_2), .Y(y_16));
    CM8 un6_hcnt_0_xor2_5 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(
        GNDZ0), .S00(ha_c_4), .S01(y_15), .S10(ha_c_5), .S11(GNDZ0), 
        .Y(y_3));
    CM8INV un6_hcnt_0_xor2_cm8i_6 (.A(ha_c_4), .Y(
        un6_hcnt_0_xor2_cm8iZ0Z_6));
    CM8 hcnt_6_i_8 (.D0(GNDZ0), .D1(vframe23), .D2(vframe23), .D3(
        GNDZ0), .S00(y_13), .S01(y_15), .S10(ha_c_8), .S11(GNDZ0), .Y(
        y_8));
    OUTBUF va_pad_7 (.PAD(va[7]), .D(va_c_7));
    DFC1B haZ0Z_0 (.D(y_10), .CLK(clk_c), .CLR(reset_i_0_bufZ0), .Q(
        ha_c_0));
    CM8 hsync14_0_and2 (.D0(VCCZ0), .D1(ha_c_0), .D2(VCCZ0), .D3(VCCZ0)
        , .S00(hsync14_1), .S01(y_0), .S10(hsync14_0_and2_cm8iZ0), 
        .S11(ha_c_5), .Y(hsync14));
    DFC1B haZ0Z_7 (.D(y_9), .CLK(clk_c), .CLR(reset_i_0_bufZ0), .Q(
        ha_c_7));
    CM8INV va_n7_0_xor2_cm8i (.A(va_c_7), .Y(va_n7_0_xor2_cm8iZ0));
    CM8 hcnt_6_i_7 (.D0(GNDZ0), .D1(vframe23), .D2(vframe23), .D3(
        GNDZ0), .S00(y_14), .S01(y_15), .S10(ha_c_7), .S11(GNDZ0), .Y(
        y_9));
    OUTBUF va_pad_1 (.PAD(va[1]), .D(va_c_1));
    DFC1B haZ0Z_4 (.D(y_5), .CLK(clk_c), .CLR(reset_i_0_bufZ0), .Q(
        ha_c_4));
    DFE3C vaZ0Z_0 (.D(va_c_iZ0Z_0), .CLK(clk_c), .CLR(reset_i_0_bufZ0), 
        .E(vframe23), .Q(va_c_0));
    OUTBUF ha_pad_8 (.PAD(ha[8]), .D(ha_c_8));
    AND2A hcnt_6_i_0 (.A(ha_c_0), .B(vframe23), .Y(y_10));
    OUTBUF ha_pad_2 (.PAD(ha[2]), .D(ha_c_2));
    VCC VCC (.Y(VCCZ0));
    CM8 ha_c_i_1 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), .S00(
        ha_c_1), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(ha_c_iZ0Z_1)
        );
    OUTBUF ha_pad_7 (.PAD(ha[7]), .D(ha_c_7));
    CM8 va_n7_0_xor2 (.D0(va_c_7), .D1(va_n7_0_xor2_cm8iZ0), .D2(
        va_c_7), .D3(va_c_7), .S00(va_c_6), .S01(va_c_5), .S10(y_17), 
        .S11(y_11), .Y(va_n7));
    XNOR2 G_53 (.A(y_17), .B(va_c_4), .Y(y_11));
    AND4 un6_hcnt_c7 (.A(ha_c_4), .B(ha_c_5), .C(ha_c_6), .D(ha_c_7), 
        .Y(y_13));
    DFE3C vaZ0Z_4 (.D(y_11), .CLK(clk_c), .CLR(reset_i_0_bufZ0), .E(
        vframe23), .Q(va_c_4));
    OUTBUF va_pad_3 (.PAD(va[3]), .D(va_c_3));
    DFC1B haZ0Z_2 (.D(y_4), .CLK(clk_c), .CLR(reset_i_0_bufZ0), .Q(
        ha_c_2));
    CLKINT reset_i_0_buf (.A(reset_c_iZ0), .Y(reset_i_0_bufZ0));
    OUTBUF ha_pad_1 (.PAD(ha[1]), .D(ha_c_1));
    DFC1B haZ0Z_6 (.D(y_2), .CLK(clk_c), .CLR(reset_i_0_bufZ0), .Q(
        ha_c_6));
    DFC1B haZ0Z_1 (.D(y_7), .CLK(clk_c), .CLR(reset_i_0_bufZ0), .Q(
        ha_c_1));
    CM8INV va_n6_0_xor2_cm8i (.A(y_17), .Y(va_n6_0_xor2_cm8iZ0));
    CM8 va_n5_0_xor2 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(VCCZ0), 
        .S00(va_c_5), .S01(VCCZ0), .S10(va_n5_0_xor2_cm8iZ0), .S11(
        y_17), .Y(va_n5));
    DFE3C vaZ0Z_2 (.D(va_n2), .CLK(clk_c), .CLR(reset_i_0_bufZ0), .E(
        vframe23), .Q(va_c_2));
    OR4C vsync14_0_and2 (.A(va_c_5), .B(y_1), .C(va_c_4), .D(va_c_0), 
        .Y(vsync14));
    CM8 va_n6_0_xor2 (.D0(GNDZ0), .D1(va_n6_0_xor2_cm8iZ0), .D2(VCCZ0), 
        .D3(y_17), .S00(va_c_4), .S01(va_c_5), .S10(va_c_6), .S11(
        GNDZ0), .Y(va_n6));
    CM8 va_n2_0_xor2 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(VCCZ0), 
        .S00(va_c_1), .S01(va_c_0), .S10(va_c_iZ0Z_2), .S11(GNDZ0), .Y(
        va_n2));
    DFE3C vaZ0Z_1 (.D(y_12), .CLK(clk_c), .CLR(reset_i_0_bufZ0), .E(
        vframe23), .Q(va_c_1));
    CM8INV hsync14_0_and2_cm8i (.A(ha_c_2), .Y(hsync14_0_and2_cm8iZ0));
    GND GND (.Y(GNDZ0));
    DFE3C vaZ0Z_6 (.D(va_n6), .CLK(clk_c), .CLR(reset_i_0_bufZ0), .E(
        vframe23), .Q(va_c_6));
    DFE3C vaZ0Z_3 (.D(va_n3), .CLK(clk_c), .CLR(reset_i_0_bufZ0), .E(
        vframe23), .Q(va_c_3));
    AND4 un6_hcnt_c3 (.A(ha_c_0), .B(ha_c_1), .C(ha_c_2), .D(ha_c_3), 
        .Y(y_15));
    OUTBUF va_pad_4 (.PAD(va[4]), .D(va_c_4));
    OUTBUF ha_pad_3 (.PAD(ha[3]), .D(ha_c_3));
    NAND4 va_ca3 (.A(va_c_0), .B(va_c_1), .C(va_c_2), .D(va_c_3), .Y(
        y_17));
    OUTBUF va_pad_5 (.PAD(va[5]), .D(va_c_5));
    XOR2 G_91 (.A(y_16), .B(ha_c_3), .Y(y_6));
    INBUF reset_pad (.PAD(reset), .Y(reset_c));
    DFE3C vaZ0Z_5 (.D(va_n5), .CLK(clk_c), .CLR(reset_i_0_bufZ0), .E(
        vframe23), .Q(va_c_5));
    CM8 un6_hcnt_0_xor2_6 (.D0(GNDZ0), .D1(ha_c_4), .D2(VCCZ0), .D3(
        un6_hcnt_0_xor2_cm8iZ0Z_6), .S00(ha_c_5), .S01(y_15), .S10(
        ha_c_6), .S11(GNDZ0), .Y(y_2));
    AND4 vsync14_0_and2_106 (.A(va_c_1), .B(va_c_6), .C(va_c_3), .D(
        va_c_7), .Y(y_1));
    OUTBUF ha_pad_4 (.PAD(ha[4]), .D(ha_c_4));
    CM8 un6_hcnt_0_xor2_2 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(
        GNDZ0), .S00(ha_c_1), .S01(ha_c_0), .S10(ha_c_2), .S11(GNDZ0), 
        .Y(y_4));
    XOR2 G_52 (.A(va_c_0), .B(va_c_1), .Y(y_12));
    CM8INV va_n5_0_xor2_cm8i (.A(va_c_4), .Y(va_n5_0_xor2_cm8iZ0));
    CM8 va_c_i_2 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), .S00(
        va_c_2), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(va_c_iZ0Z_2)
        );
    OUTBUF ha_pad_5 (.PAD(ha[5]), .D(ha_c_5));
    DFE3C vaZ0Z_7 (.D(va_n7), .CLK(clk_c), .CLR(reset_i_0_bufZ0), .E(
        vframe23), .Q(va_c_7));
    OUTBUF va_pad_0 (.PAD(va[0]), .D(va_c_0));
    CM8 va_c_i_0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), .S00(
        va_c_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(va_c_iZ0Z_0)
        );
    CM8 hcnt_6_i_and2_0 (.D0(VCCZ0), .D1(ha_c_4), .D2(VCCZ0), .D3(
        VCCZ0), .S00(hsync14_1), .S01(y), .S10(ha_c_2), .S11(ha_c_5), 
        .Y(vframe23));
    DFC1B haZ0Z_3 (.D(y_6), .CLK(clk_c), .CLR(reset_i_0_bufZ0), .Q(
        ha_c_3));
    AND2A hsync14_0_and2_1 (.A(ha_c_3), .B(ha_c_8), .Y(hsync14_1));
    CM8 va_n3_0_xor2 (.D0(GNDZ0), .D1(va_c_0), .D2(VCCZ0), .D3(
        va_c_iZ0Z_0), .S00(va_c_1), .S01(va_c_2), .S10(va_c_3), .S11(
        GNDZ0), .Y(va_n3));
    DFE3C vsync (.D(va_c_iZ0Z_2), .CLK(clk_c), .CLR(reset_i_0_bufZ0), 
        .E(vsync14), .Q(vsyncZ0));
    OUTBUF va_pad_6 (.PAD(va[6]), .D(va_c_6));
    CM8 reset_c_i (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(reset_c), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        reset_c_iZ0));
    XOR2 csyncZ0 (.A(vsyncZ0), .B(hsyncZ0), .Y(csync_c));
    DFE3C hsync (.D(ha_c_iZ0Z_1), .CLK(clk_c), .CLR(reset_i_0_bufZ0), 
        .E(hsync14), .Q(hsyncZ0));
    DFC1B haZ0Z_5 (.D(y_3), .CLK(clk_c), .CLR(reset_i_0_bufZ0), .Q(
        ha_c_5));
    OUTBUF csync_pad (.PAD(csync), .D(csync_c));
    OUTBUF ha_pad_0 (.PAD(ha[0]), .D(ha_c_0));
    AND3A hcnt_6_i_and2_0_115 (.A(ha_c_6), .B(ha_c_iZ0Z_1), .C(ha_c_7), 
        .Y(y));
    AND3A hsync14_0_and2_110 (.A(ha_c_7), .B(ha_c_4), .C(ha_c_6), .Y(
        y_0));
    DFC1B haZ0Z_8 (.D(y_8), .CLK(clk_c), .CLR(reset_i_0_bufZ0), .Q(
        ha_c_8));
    HCLKBUF clk_pad (.PAD(clk), .Y(clk_c));
    
endmodule
