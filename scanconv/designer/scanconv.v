`timescale 1 ns/100 ps


module memory(dMemOut, dVga, dCga, dMem_in, \state_1[1] , \state[1] , 
        wrVga_i, nOe_c, nCs_c, y_72, wrVga, nWe_c, dirout_i, halfclk_i, 
        halfclk, dirout, nReset_c, clk_c, access_i, dirout_0, access);
output  [7:0] dMemOut;
input  [7:0] dVga;
output  [7:0] dCga;
input  [7:0] dMem_in;
input  \state_1[1] ;
output  \state[1] ;
input  wrVga_i;
output  nOe_c, nCs_c;
input  y_72, wrVga;
output  nWe_c, dirout_i, halfclk_i, halfclk, dirout;
input  nReset_c, clk_c, access_i;
output  dirout_0;
input  access;

    wire y_73, wrRequestZ0, y_74, rdBuf6, VCCZ0, GNDZ0, 
        un1_t3_1_0_cm8iZ0;
    
    DFE1B dMemOutZ0Z_2 (.D(dVga[2]), .CLK(clk_c), .E(wrVga_i), .Q(
        dMemOut[2]));
    DFE1B dMemOutZ0Z_1 (.D(dVga[1]), .CLK(clk_c), .E(wrVga_i), .Q(
        dMemOut[1]));
    DF1 state_0 (.D(halfclk_i), .CLK(clk_c), .Q(halfclk));
    DFE1B dMemOutZ0Z_7 (.D(dVga[7]), .CLK(clk_c), .E(wrVga_i), .Q(
        dMemOut[7]));
    DFE3C dCgaZ0Z_1 (.D(dMem_in[1]), .CLK(clk_c), .CLR(nReset_c), .E(
        rdBuf6), .Q(dCga[1]));
    DFE3C dCgaZ0Z_6 (.D(dMem_in[6]), .CLK(clk_c), .CLR(nReset_c), .E(
        rdBuf6), .Q(dCga[6]));
    DFE1B dMemOutZ0Z_6 (.D(dVga[6]), .CLK(clk_c), .E(wrVga_i), .Q(
        dMemOut[6]));
    DFE1B dMemOutZ0Z_0 (.D(dVga[0]), .CLK(clk_c), .E(wrVga_i), .Q(
        dMemOut[0]));
    DFE3C wrRequest (.D(wrVga), .CLK(clk_c), .CLR(nReset_c), .E(y_72), 
        .Q(wrRequestZ0));
    GND GND (.Y(GNDZ0));
    DFE1B dMemOutZ0Z_4 (.D(dVga[4]), .CLK(clk_c), .E(wrVga_i), .Q(
        dMemOut[4]));
    DFE3C dCgaZ0Z_7 (.D(dMem_in[7]), .CLK(clk_c), .CLR(nReset_c), .E(
        rdBuf6), .Q(dCga[7]));
    OR2A rdBuf6_0_and2 (.A(access), .B(dirout_0), .Y(rdBuf6));
    DFE3C dCgaZ0Z_4 (.D(dMem_in[4]), .CLK(clk_c), .CLR(nReset_c), .E(
        rdBuf6), .Q(dCga[4]));
    DF1 stateZ0Z_1 (.D(\state_1[1] ), .CLK(clk_c), .Q(\state[1] ));
    DFE3C diroutZ0 (.D(wrRequestZ0), .CLK(clk_c), .CLR(nReset_c), .E(
        access_i), .Q(dirout));
    CM8 dirout_iZ0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(dirout), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        dirout_i));
    CM8 un1_t3_1_0 (.D0(un1_t3_1_0_cm8iZ0), .D1(VCCZ0), .D2(VCCZ0), 
        .D3(GNDZ0), .S00(halfclk), .S01(VCCZ0), .S10(\state[1] ), .S11(
        GNDZ0), .Y(y_73));
    CM8 un1_t3_0 (.D0(dirout), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(halfclk), .S01(VCCZ0), .S10(\state[1] ), .S11(GNDZ0), .Y(
        y_74));
    DFE3C dCgaZ0Z_3 (.D(dMem_in[3]), .CLK(clk_c), .CLR(nReset_c), .E(
        rdBuf6), .Q(dCga[3]));
    DFE4F nWeMem (.D(halfclk), .CLK(clk_c), .PRE(nReset_c), .E(y_73), 
        .Q(nWe_c));
    DFE1B dMemOutZ0Z_5 (.D(dVga[5]), .CLK(clk_c), .E(wrVga_i), .Q(
        dMemOut[5]));
    DFE4F nCsMem (.D(halfclk), .CLK(clk_c), .PRE(nReset_c), .E(
        \state_1[1] ), .Q(nCs_c));
    DFE3C dCgaZ0Z_2 (.D(dMem_in[2]), .CLK(clk_c), .CLR(nReset_c), .E(
        rdBuf6), .Q(dCga[2]));
    VCC VCC (.Y(VCCZ0));
    CM8 halfclk_iZ0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(halfclk), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        halfclk_i));
    DFE3C dCgaZ0Z_0 (.D(dMem_in[0]), .CLK(clk_c), .CLR(nReset_c), .E(
        rdBuf6), .Q(dCga[0]));
    DFE3C diroutZ0Z_0 (.D(wrRequestZ0), .CLK(clk_c), .CLR(nReset_c), 
        .E(access_i), .Q(dirout_0));
    CM8INV un1_t3_1_0_cm8i (.A(dirout), .Y(un1_t3_1_0_cm8iZ0));
    DFE3C dCgaZ0Z_5 (.D(dMem_in[5]), .CLK(clk_c), .CLR(nReset_c), .E(
        rdBuf6), .Q(dCga[5]));
    DFE1B dMemOutZ0Z_3 (.D(dVga[3]), .CLK(clk_c), .E(wrVga_i), .Q(
        dMemOut[3]));
    DFE4F nOeMem (.D(halfclk), .CLK(clk_c), .PRE(nReset_c), .E(y_74), 
        .Q(nOe_c));
    
endmodule


module cgaega(dCga, aCga, halfclk_i, access_i, nReset_c, clk_c, ega_c, 
        csync_c, access, oVideo_c);
input  [7:0] dCga;
output  [15:0] aCga;
input  halfclk_i, access_i, nReset_c, clk_c, ega_c;
output  csync_c;
input  access;
output  oVideo_c;

    wire y_7, y_2, y_52, y_1, un1_w_end_of_lineZ0Z_3, w_end_of_lineZ0, 
        y_3, hsync13_2, y_6, N_236_n, N_248_n, y_0, c1, x2, y_53, y_58, 
        y_54, y_55, y_56, y_66, y_57, aCga_iZ0Z_1, hsyncZ0Z14, hsyncZ0, 
        aCga_iZ0Z_9, vsyncZ0Z14, vsyncZ0, hframe_6, vframe_8, vframeZ0, 
        frameZ0Z_1, hframeZ0, byteRateZ0, frameZ0Z_0, y_68, y_69, y_70, 
        y_71, un6_hcnt_1, hcnt_6Z0Z_0, vcnt_10Z0Z_8, vcnt_10Z0Z_7, 
        y_59, y_60, y_61, y_62, y_63, y_64, y_65, bRate_4_1, 
        bRateZ0Z_1, bRate_4_0, bRateZ0Z_0, shifter_6Z0Z_7, 
        shifterZ0Z_7, shifter_6Z0Z_6, shifterZ0Z_6, shifter_6Z0Z_5, 
        shifterZ0Z_5, shifter_6Z0Z_4, shifterZ0Z_4, shifter_6Z0Z_3, 
        shifterZ0Z_3, shifter_6Z0Z_2, shifterZ0Z_2, shifter_6Z0Z_1, 
        shifterZ0Z_1, shifter_6Z0Z_0, shifterZ0Z_0, y_67, GNDZ0, VCCZ0, 
        un1_w_end_of_line_2_229_cm8iZ0, w_end_of_frame_219_n_cm8iZ0, 
        w_hframe_end_207_n_cm8iZ0, vsync14_203_cm8iZ0, hsync14_cm8iZ0, 
        vcnt_10_cm8iZ0Z_7, vframe_8_f0_cm8iZ0, un1_vcnt_2_cm8iZ0Z_6;
    
    AND3 video (.A(vframeZ0), .B(shifterZ0Z_7), .C(frameZ0Z_1), .Y(
        oVideo_c));
    DFC1B vcnt_2 (.D(y_63), .CLK(clk_c), .CLR(nReset_c), .Q(aCga[9]));
    XOR2 un1_vcnt_2_4 (.A(y_56), .B(aCga[10]), .Y(y_62));
    CM8 hsync14 (.D0(VCCZ0), .D1(aCga[5]), .D2(VCCZ0), .D3(VCCZ0), 
        .S00(aCga[2]), .S01(hsync13_2), .S10(aCga[3]), .S11(
        hsync14_cm8iZ0), .Y(hsyncZ0Z14));
    CM8 hframe_6_f0 (.D0(GNDZ0), .D1(GNDZ0), .D2(VCCZ0), .D3(N_236_n), 
        .S00(hsync13_2), .S01(VCCZ0), .S10(hframeZ0), .S11(
        w_end_of_lineZ0), .Y(hframe_6));
    DFE3C hframe (.D(hframe_6), .CLK(clk_c), .CLR(nReset_c), .E(
        access_i), .Q(hframeZ0));
    CM8 w_hframe_end_207_n (.D0(VCCZ0), .D1(aCga[2]), .D2(VCCZ0), .D3(
        VCCZ0), .S00(w_hframe_end_207_n_cm8iZ0), .S01(aCga_iZ0Z_1), 
        .S10(aCga[4]), .S11(aCga[3]), .Y(N_236_n));
    CM8 shifter_6_6 (.D0(dCga[6]), .D1(shifterZ0Z_5), .D2(GNDZ0), .D3(
        GNDZ0), .S00(byteRateZ0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0)
        , .Y(shifter_6Z0Z_6));
    CM8INV w_hframe_end_207_n_cm8i (.A(aCga[5]), .Y(
        w_hframe_end_207_n_cm8iZ0));
    CM8 shifter_6_3 (.D0(dCga[3]), .D1(shifterZ0Z_2), .D2(GNDZ0), .D3(
        GNDZ0), .S00(byteRateZ0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0)
        , .Y(shifter_6Z0Z_3));
    AND2B hcnt_6_0 (.A(aCga[0]), .B(w_end_of_lineZ0), .Y(hcnt_6Z0Z_0));
    DFE3C hcnt_5 (.D(y_68), .CLK(clk_c), .CLR(nReset_c), .E(access_i), 
        .Q(aCga[5]));
    DF1 bRate_1 (.D(bRate_4_1), .CLK(clk_c), .Q(bRateZ0Z_1));
    CM8INV w_end_of_frame_219_n_cm8i (.A(aCga[13]), .Y(
        w_end_of_frame_219_n_cm8iZ0));
    CM8INV vframe_8_f0_cm8i (.A(y_1), .Y(vframe_8_f0_cm8iZ0));
    XOR2 un1_vcnt_2_3 (.A(y_57), .B(aCga[9]), .Y(y_63));
    DFE3C frame_0 (.D(hframeZ0), .CLK(clk_c), .CLR(nReset_c), .E(
        byteRateZ0), .Q(frameZ0Z_0));
    AND2 I_53_c1 (.A(y_52), .B(aCga[4]), .Y(c1));
    DFE3C hcnt_2 (.D(y_71), .CLK(clk_c), .CLR(nReset_c), .E(access_i), 
        .Q(aCga[2]));
    CM8 aCga_i_9 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), .S00(
        aCga[9]), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        aCga_iZ0Z_9));
    DFE3C shifter_5 (.D(shifter_6Z0Z_5), .CLK(clk_c), .CLR(nReset_c), 
        .E(halfclk_i), .Q(shifterZ0Z_5));
    CM8 aCga_i_1 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), .S00(
        aCga[1]), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        aCga_iZ0Z_1));
    CM8INV vcnt_10_cm8i_7 (.A(aCga[14]), .Y(vcnt_10_cm8iZ0Z_7));
    DFC1B vcnt_6 (.D(y_59), .CLK(clk_c), .CLR(nReset_c), .Q(aCga[13]));
    VCC VCC (.Y(VCCZ0));
    CM8 vcnt_10_8 (.D0(y_58), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), .S00(
        access), .S01(un1_w_end_of_lineZ0Z_3), .S10(GNDZ0), .S11(GNDZ0)
        , .Y(vcnt_10Z0Z_8));
    CM8INV un1_w_end_of_line_2_229_cm8i (.A(aCga[8]), .Y(
        un1_w_end_of_line_2_229_cm8iZ0));
    AND2A shifter_6_0 (.A(byteRateZ0), .B(dCga[0]), .Y(shifter_6Z0Z_0));
    AND2 un1_vcnt_2x_c7 (.A(y_56), .B(y_54), .Y(y_53));
    DFE3C shifter_7 (.D(shifter_6Z0Z_7), .CLK(clk_c), .CLR(nReset_c), 
        .E(halfclk_i), .Q(shifterZ0Z_7));
    DFE3C shifter_0 (.D(shifter_6Z0Z_0), .CLK(clk_c), .CLR(nReset_c), 
        .E(halfclk_i), .Q(shifterZ0Z_0));
    CM8 I_53_s1 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), .S00(
        aCga[4]), .S01(y_52), .S10(aCga[5]), .S11(GNDZ0), .Y(y_68));
    CM8INV hsync14_cm8i (.A(aCga[4]), .Y(hsync14_cm8iZ0));
    CM8 vcnt_10_7 (.D0(aCga[14]), .D1(GNDZ0), .D2(vcnt_10_cm8iZ0Z_7), 
        .D3(GNDZ0), .S00(access), .S01(un1_w_end_of_lineZ0Z_3), .S10(
        y_53), .S11(GNDZ0), .Y(vcnt_10Z0Z_7));
    DFE3C frame_1 (.D(frameZ0Z_0), .CLK(clk_c), .CLR(nReset_c), .E(
        byteRateZ0), .Q(frameZ0Z_1));
    DFE3C hcnt_6 (.D(y_67), .CLK(clk_c), .CLR(nReset_c), .E(access_i), 
        .Q(aCga[6]));
    DFC1B vcnt_8 (.D(vcnt_10Z0Z_8), .CLK(clk_c), .CLR(nReset_c), .Q(
        aCga[15]));
    DFC1B vcnt_1 (.D(y_64), .CLK(clk_c), .CLR(nReset_c), .Q(aCga[8]));
    CM8 shifter_6_4 (.D0(dCga[4]), .D1(shifterZ0Z_3), .D2(GNDZ0), .D3(
        GNDZ0), .S00(byteRateZ0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0)
        , .Y(shifter_6Z0Z_4));
    AND4C w_end_of_line (.A(aCga[0]), .B(aCga[4]), .C(aCga[3]), .D(y_2)
        , .Y(w_end_of_lineZ0));
    CM8INV un1_vcnt_2_cm8i_6 (.A(aCga[11]), .Y(un1_vcnt_2_cm8iZ0Z_6));
    AND4A un1_w_end_of_line_2_228 (.A(aCga[15]), .B(aCga_iZ0Z_9), .C(
        aCga[11]), .D(aCga[12]), .Y(y_1));
    CM8 un1_vcnt_2_7 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(y_55), .S01(y_56), .S10(aCga[13]), .S11(GNDZ0), .Y(y_59));
    CM8 shifter_6_2 (.D0(dCga[2]), .D1(shifterZ0Z_1), .D2(GNDZ0), .D3(
        GNDZ0), .S00(byteRateZ0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0)
        , .Y(shifter_6Z0Z_2));
    OR3C vsync14 (.A(y_7), .B(y_6), .C(aCga[10]), .Y(vsyncZ0Z14));
    CM8 I_52_s3_s0 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(x2), .S01(aCga[0]), .S10(aCga[3]), .S11(GNDZ0), .Y(y_70));
    GND GND (.Y(GNDZ0));
    DFC1B vcnt_3 (.D(y_62), .CLK(clk_c), .CLR(nReset_c), .Q(aCga[10]));
    CM8INV vsync14_203_cm8i (.A(aCga[14]), .Y(vsync14_203_cm8iZ0));
    CM8 un1_w_end_of_line_2_229 (.D0(GNDZ0), .D1(
        un1_w_end_of_line_2_229_cm8iZ0), .D2(GNDZ0), .D3(GNDZ0), .S00(
        aCga[14]), .S01(aCga[13]), .S10(aCga[10]), .S11(aCga[7]), .Y(
        y_0));
    AND3 I_52_cry (.A(aCga[0]), .B(aCga[3]), .C(x2), .Y(y_52));
    DFE3C hcnt_1 (.D(un6_hcnt_1), .CLK(clk_c), .CLR(nReset_c), .E(
        access_i), .Q(aCga[1]));
    DFE3C shifter_6 (.D(shifter_6Z0Z_6), .CLK(clk_c), .CLR(nReset_c), 
        .E(halfclk_i), .Q(shifterZ0Z_6));
    AND4 un1_vcnt_2_c7 (.A(aCga[10]), .B(aCga[11]), .C(aCga[12]), .D(
        aCga[13]), .Y(y_54));
    CM8 un1_access (.D0(GNDZ0), .D1(VCCZ0), .D2(GNDZ0), .D3(N_248_n), 
        .S00(w_end_of_lineZ0), .S01(access), .S10(y_3), .S11(GNDZ0), 
        .Y(y_66));
    CM8 shifter_6_7 (.D0(dCga[7]), .D1(shifterZ0Z_6), .D2(GNDZ0), .D3(
        GNDZ0), .S00(byteRateZ0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0)
        , .Y(shifter_6Z0Z_7));
    CM8 shifter_6_1 (.D0(dCga[1]), .D1(shifterZ0Z_0), .D2(GNDZ0), .D3(
        GNDZ0), .S00(byteRateZ0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0)
        , .Y(shifter_6Z0Z_1));
    CM8 byteRate (.D0(VCCZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), .S00(
        bRateZ0Z_0), .S01(access), .S10(bRateZ0Z_1), .S11(ega_c), .Y(
        byteRateZ0));
    DFE3C hcnt_3 (.D(y_70), .CLK(clk_c), .CLR(nReset_c), .E(access_i), 
        .Q(aCga[3]));
    DFE3C vframe (.D(vframe_8), .CLK(clk_c), .CLR(nReset_c), .E(
        access_i), .Q(vframeZ0));
    XOR2 I_53_s0 (.A(y_52), .B(aCga[4]), .Y(y_69));
    CM8 I_52_s2_s0 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(aCga[1]), .S01(aCga[0]), .S10(aCga[2]), .S11(GNDZ0), .Y(
        y_71));
    AND2A hsync14_2 (.A(aCga[0]), .B(aCga[6]), .Y(hsync13_2));
    DFC1B vcnt_4 (.D(y_61), .CLK(clk_c), .CLR(nReset_c), .Q(aCga[11]));
    AND4 un1_vcnt_2_c3 (.A(aCga[7]), .B(y_66), .C(aCga[8]), .D(aCga[9])
        , .Y(y_56));
    CM8 shifter_6_5 (.D0(dCga[5]), .D1(shifterZ0Z_4), .D2(GNDZ0), .D3(
        GNDZ0), .S00(byteRateZ0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0)
        , .Y(shifter_6Z0Z_5));
    DF1 bRate_0 (.D(bRate_4_0), .CLK(clk_c), .Q(bRateZ0Z_0));
    XOR2 csync (.A(vsyncZ0), .B(hsyncZ0), .Y(csync_c));
    CM8 un1_vcnt_2_5 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(aCga[10]), .S01(y_56), .S10(aCga[11]), .S11(GNDZ0), .Y(
        y_61));
    CM8 w_end_of_frame_219_n (.D0(VCCZ0), .D1(aCga[7]), .D2(VCCZ0), 
        .D3(VCCZ0), .S00(w_end_of_frame_219_n_cm8iZ0), .S01(aCga[15]), 
        .S10(aCga[8]), .S11(aCga[10]), .Y(N_248_n));
    CM8 vframe_8_f0 (.D0(GNDZ0), .D1(GNDZ0), .D2(VCCZ0), .D3(
        vframe_8_f0_cm8iZ0), .S00(y_0), .S01(w_end_of_lineZ0), .S10(
        vframeZ0), .S11(un1_w_end_of_lineZ0Z_3), .Y(vframe_8));
    CM8 I_61_s1_s0 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(bRateZ0Z_0), .S01(access), .S10(bRateZ0Z_1), .S11(GNDZ0), 
        .Y(bRate_4_1));
    DFE3C shifter_4 (.D(shifter_6Z0Z_4), .CLK(clk_c), .CLR(nReset_c), 
        .E(halfclk_i), .Q(shifterZ0Z_4));
    DFE3C shifter_2 (.D(shifter_6Z0Z_2), .CLK(clk_c), .CLR(nReset_c), 
        .E(halfclk_i), .Q(shifterZ0Z_2));
    CM8 vsync14_203 (.D0(GNDZ0), .D1(aCga[11]), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(aCga[13]), .S01(aCga[12]), .S10(vsync14_203_cm8iZ0), .S11(
        aCga[7]), .Y(y_6));
    AND3 un1_vcnt_2_c6 (.A(aCga[10]), .B(aCga[11]), .C(aCga[12]), .Y(
        y_55));
    CM8 un1_vcnt_2_6 (.D0(GNDZ0), .D1(aCga[11]), .D2(VCCZ0), .D3(
        un1_vcnt_2_cm8iZ0Z_6), .S00(aCga[10]), .S01(y_56), .S10(
        aCga[12]), .S11(GNDZ0), .Y(y_60));
    AND3 un1_vcnt_2_c2 (.A(aCga[7]), .B(y_66), .C(aCga[8]), .Y(y_57));
    CM8 un1_vcnt_2_2 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(aCga[7]), .S01(y_66), .S10(aCga[8]), .S11(GNDZ0), .Y(y_64)
        );
    XOR2 un1_vcnt_2_1 (.A(y_66), .B(aCga[7]), .Y(y_65));
    DFE3C shifter_1 (.D(shifter_6Z0Z_1), .CLK(clk_c), .CLR(nReset_c), 
        .E(halfclk_i), .Q(shifterZ0Z_1));
    AND4B w_end_of_frame_218 (.A(aCga[11]), .B(aCga[12]), .C(
        aCga_iZ0Z_9), .D(aCga[14]), .Y(y_3));
    AND2A vsync14_200 (.A(aCga[15]), .B(aCga[8]), .Y(y_7));
    XOR2 I_52_s1 (.A(aCga[0]), .B(aCga[1]), .Y(un6_hcnt_1));
    DFE3C hcnt_4 (.D(y_69), .CLK(clk_c), .CLR(nReset_c), .E(access_i), 
        .Q(aCga[4]));
    DFE3C shifter_3 (.D(shifter_6Z0Z_3), .CLK(clk_c), .CLR(nReset_c), 
        .E(halfclk_i), .Q(shifterZ0Z_3));
    DFE3C vsync (.D(aCga_iZ0Z_9), .CLK(clk_c), .CLR(nReset_c), .E(
        vsyncZ0Z14), .Q(vsyncZ0));
    DFC1B vcnt_0 (.D(y_65), .CLK(clk_c), .CLR(nReset_c), .Q(aCga[7]));
    AND2 I_52_x2 (.A(aCga[1]), .B(aCga[2]), .Y(x2));
    DFC1B vcnt_7 (.D(vcnt_10Z0Z_7), .CLK(clk_c), .CLR(nReset_c), .Q(
        aCga[14]));
    AX1C un1_vcnt_2_9 (.A(y_53), .B(aCga[14]), .C(aCga[15]), .Y(y_58));
    CM8 I_53_s2_s0 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(c1), .S01(aCga[5]), .S10(aCga[6]), .S11(GNDZ0), .Y(y_67));
    DFE3C hsync (.D(aCga_iZ0Z_1), .CLK(clk_c), .CLR(nReset_c), .E(
        hsyncZ0Z14), .Q(hsyncZ0));
    XOR2 I_61_s0 (.A(access), .B(bRateZ0Z_0), .Y(bRate_4_0));
    AND4C w_end_of_line_224 (.A(aCga[2]), .B(aCga[6]), .C(aCga[5]), .D(
        aCga_iZ0Z_1), .Y(y_2));
    AND3A un1_w_end_of_line_3 (.A(N_248_n), .B(w_end_of_lineZ0), .C(
        y_3), .Y(un1_w_end_of_lineZ0Z_3));
    DFC1B vcnt_5 (.D(y_60), .CLK(clk_c), .CLR(nReset_c), .Q(aCga[12]));
    DFE3C hcnt_0 (.D(hcnt_6Z0Z_0), .CLK(clk_c), .CLR(nReset_c), .E(
        access_i), .Q(aCga[0]));
    
endmodule


module myFAILINGEX_1(hsync_c, nReset_c, clk_c, hsync_0, hsync);
input  hsync_c, nReset_c, clk_c;
output  hsync_0, hsync;

    wire riseZ0Z_1, riseZ0Z_0;
    
    OR2A out_0 (.A(riseZ0Z_1), .B(riseZ0Z_0), .Y(hsync_0));
    DFC1B rise_1 (.D(riseZ0Z_0), .CLK(clk_c), .CLR(nReset_c), .Q(
        riseZ0Z_1));
    DFC1B rise_0 (.D(hsync_c), .CLK(clk_c), .CLR(nReset_c), .Q(
        riseZ0Z_0));
    OR2A out (.A(riseZ0Z_1), .B(riseZ0Z_0), .Y(hsync));
    
endmodule


module myFAILINGEX(rise, vsync_c, nReset_c, clk_c);
output  [1:0] rise;
input  vsync_c, nReset_c, clk_c;

    
    DFC1B riseZ0Z_1 (.D(rise[0]), .CLK(clk_c), .CLR(nReset_c), .Q(
        rise[1]));
    DFC1B riseZ0Z_0 (.D(vsync_c), .CLK(clk_c), .CLR(nReset_c), .Q(
        rise[0]));
    
endmodule


module vga(dVga, aVga, hsync_c, vsync_c, iVideo_c, nReset_c, relay_c, 
        clk_c, dirout_0, access, wrVga, wrVga_i);
output  [7:0] dVga;
output  [15:0] aVga;
input  hsync_c, vsync_c, iVideo_c, nReset_c;
output  relay_c;
input  clk_c, dirout_0, access;
output  wrVga, wrVga_i;

    wire N_372_1, N_347, N_114_0, N_327, N_326, N_221_n, N_330_n, 
        N_337, y_5, y_4, y, y_9, y_8, pixel8_3, pixelZ0Z8, y_43, y_26, 
        linesZ0Z350, y_31, y_40, lineZ0, y_49, frameZ0, pixel_n3, 
        pixelZ0Z_3, pixel_n2, pixelZ0Z_2, y_44, pixelZ0Z_1, 
        pixel_iZ0Z_0, pixelZ0Z_0, y_30, y_32, y_37, aVga_iZ0Z_7, y_33, 
        y_36, N_355, vdelayZ0Z_0, y_28, y_29, y_34, y_39, y_45, 
        vdelay_l2, vdelayZ0Z_2, vdelay_l1, vdelayZ0Z_1, N_293, N_357, 
        vdelayZ0Z_4, N_356, y_48, vdelayZ0Z_3, h_l3, y_35, h_l1, N_165, 
        y_41, h_l4, y_42, N_377, hdelayZ0Z_2, hdelay_l1, hdelayZ0Z_1, 
        N_376, y_38, hdelayZ0Z_0, y_47, nlineZ0Z_2, y_46, nlineZ0Z_1, 
        y_27, un1_hsync_2_i, nlineZ0Z_0, y_50, y_51, rise_0, rise_1, 
        hsync_0, hsync, VCCZ0, GNDZ0, G_67_i_0_cm8iZ0, 
        un1_hsync_3_i_0_cm8iZ0, G_55_i_and2_0_and2_cm8iZ0, 
        h_l5_i_0_cm8iZ0, un1_un1_un1_hsync_1_i_0_0_cm8iZ0, 
        nline_9_i_0_cm8iZ0Z_2, nline_9_i_0_cm8iZ0Z_1, G_13_i_0_cm8iZ0, 
        v_n6_0_xor2_i_cm8iZ0, v_n5_0_xor2_i_cm8iZ0, 
        v_n2_0_xor2_i_cm8iZ0, G_308_cm8iZ0, G_310_cm8iZ0, 
        nline_9_1_i_and2_cm8iZ0Z_0, hdelay_l2_i_and2_0_and2_cm8iZ0, 
        h_l3_0_and3_0_and2_cm8iZ0, G_311_cm8iZ0, 
        vdelay_l4_i_and2_0_and2_cm8iZ0, vdelay_l3_i_and2_0_and2_cm8iZ0, 
        pixel_n2_0_xor2_cm8iZ0;
    
    DFE3C v_5 (.D(y_33), .CLK(clk_c), .CLR(y_45), .E(y_39), .Q(
        aVga[12]));
    DFE3C nline_2 (.D(y_47), .CLK(clk_c), .CLR(nReset_c), .E(
        un1_hsync_2_i), .Q(nlineZ0Z_2));
    DFE1B h_2 (.D(y_35), .CLK(clk_c), .E(y_42), .Q(aVga[2]));
    myFAILINGEX_1 hFrontExt (.hsync_c(hsync_c), .nReset_c(nReset_c), 
        .clk_c(clk_c), .hsync_0(hsync_0), .hsync(hsync));
    CM8INV G_308_cm8i (.A(aVga[11]), .Y(G_308_cm8iZ0));
    CM8 G_16_i_0 (.D0(GNDZ0), .D1(VCCZ0), .D2(GNDZ0), .D3(N_372_1), 
        .S00(hsync_0), .S01(VCCZ0), .S10(pixelZ0Z8), .S11(GNDZ0), .Y(
        y_38));
    CM8 pixel_n3_0_xor2 (.D0(GNDZ0), .D1(pixelZ0Z_0), .D2(VCCZ0), .D3(
        pixel_iZ0Z_0), .S00(pixelZ0Z_1), .S01(pixelZ0Z_2), .S10(
        pixelZ0Z_3), .S11(GNDZ0), .Y(pixel_n3));
    DFC1B pixel_3 (.D(pixel_n3), .CLK(clk_c), .CLR(hsync), .Q(
        pixelZ0Z_3));
    CM8INV v_n5_0_xor2_i_cm8i (.A(aVga[11]), .Y(v_n5_0_xor2_i_cm8iZ0));
    DFE4F hdelay_2 (.D(N_377), .CLK(clk_c), .PRE(nReset_c), .E(y_38), 
        .Q(hdelayZ0Z_2));
    AND2 un1_hsync_3_i_0_and2_209 (.A(aVga[13]), .B(aVga[10]), .Y(y_5));
    CM8 h_l5_i_0 (.D0(hsync), .D1(GNDZ0), .D2(GNDZ0), .D3(hsync), .S00(
        aVga[5]), .S01(VCCZ0), .S10(h_l5_i_0_cm8iZ0), .S11(N_326), .Y(
        y_41));
    CM8 G_55_i_and2_0_and2 (.D0(VCCZ0), .D1(N_221_n), .D2(VCCZ0), .D3(
        VCCZ0), .S00(aVga[14]), .S01(aVga[11]), .S10(
        G_55_i_and2_0_and2_cm8iZ0), .S11(N_330_n), .Y(y_26));
    CM8INV un1_un1_un1_hsync_1_i_0_0_cm8i (.A(vdelayZ0Z_3), .Y(
        un1_un1_un1_hsync_1_i_0_0_cm8iZ0));
    DFC1B pixel8 (.D(pixel8_3), .CLK(clk_c), .CLR(hsync), .Q(pixelZ0Z8)
        );
    CM8INV pixel_n2_0_xor2_cm8i (.A(pixelZ0Z_1), .Y(
        pixel_n2_0_xor2_cm8iZ0));
    XNOR2 G_200_0 (.A(y_51), .B(aVga[11]), .Y(y_36));
    AND3 wrVga_0_and2_0_and2 (.A(pixelZ0Z8), .B(lineZ0), .C(frameZ0), 
        .Y(wrVga));
    CM8INV v_n2_0_xor2_i_cm8i (.A(aVga[8]), .Y(v_n2_0_xor2_i_cm8iZ0));
    DFE1B h_6 (.D(N_165), .CLK(clk_c), .E(y_42), .Q(aVga[6]));
    CM8 G_10_i_0 (.D0(N_114_0), .D1(un1_hsync_2_i), .D2(un1_hsync_2_i), 
        .D3(un1_hsync_2_i), .S00(N_327), .S01(VCCZ0), .S10(vdelayZ0Z_3)
        , .S11(vdelayZ0Z_4), .Y(y_48));
    CM8 vdelay_l1_0_and2_0_and2 (.D0(N_114_0), .D1(GNDZ0), .D2(GNDZ0), 
        .D3(N_114_0), .S00(vdelayZ0Z_0), .S01(VCCZ0), .S10(vdelayZ0Z_1)
        , .S11(GNDZ0), .Y(vdelay_l1));
    OR2A G_95_0 (.A(rise_1), .B(rise_0), .Y(N_114_0));
    OR2A G_95 (.A(rise_1), .B(rise_0), .Y(y_45));
    OR2B G_55_i_and2_0_and2_192_n (.A(aVga[12]), .B(aVga[13]), .Y(
        N_221_n));
    XOR2 G_114 (.A(pixelZ0Z_0), .B(pixelZ0Z_1), .Y(y_44));
    myFAILINGEX vFrontExt (.rise({rise_1, rise_0}), .vsync_c(vsync_c), 
        .nReset_c(nReset_c), .clk_c(clk_c));
    DFE3C v_3 (.D(y_30), .CLK(clk_c), .CLR(y_45), .E(y_39), .Q(
        aVga[10]));
    AND2 line_8_0_and2_i (.A(hsync_0), .B(nlineZ0Z_0), .Y(y_31));
    CM8INV hdelay_l2_i_and2_0_and2_cm8i (.A(hsync_0), .Y(
        hdelay_l2_i_and2_0_and2_cm8iZ0));
    OR2B vdelay_l0_i_and2_0_and2 (.A(vdelayZ0Z_0), .B(N_114_0), .Y(
        N_355));
    CM8INV nline_9_i_0_cm8i_1 (.A(nlineZ0Z_1), .Y(
        nline_9_i_0_cm8iZ0Z_1));
    CM8INV h_l5_i_0_cm8i (.A(aVga[4]), .Y(h_l5_i_0_cm8iZ0));
    CM8INV G_310_cm8i (.A(y_51), .Y(G_310_cm8iZ0));
    DFE3C v_1 (.D(y_37), .CLK(clk_c), .CLR(y_45), .E(y_39), .Q(aVga[8])
        );
    VCC VCC (.Y(VCCZ0));
    CM8 h_l4_0_and3_0_and2 (.D0(hsync_0), .D1(GNDZ0), .D2(GNDZ0), .D3(
        hsync_0), .S00(N_326), .S01(VCCZ0), .S10(aVga[4]), .S11(GNDZ0), 
        .Y(h_l4));
    CM8 v_n5_0_xor2_i (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(VCCZ0), 
        .S00(aVga[12]), .S01(VCCZ0), .S10(v_n5_0_xor2_i_cm8iZ0), .S11(
        y_51), .Y(y_33));
    CM8 hdelay_l2_i_and2_0_and2 (.D0(VCCZ0), .D1(
        hdelay_l2_i_and2_0_and2_cm8iZ0), .D2(
        hdelay_l2_i_and2_0_and2_cm8iZ0), .D3(VCCZ0), .S00(hdelayZ0Z_2), 
        .S01(VCCZ0), .S10(hdelayZ0Z_1), .S11(hdelayZ0Z_0), .Y(N_377));
    DFE4F nline_0 (.D(y_27), .CLK(clk_c), .PRE(nReset_c), .E(
        un1_hsync_2_i), .Q(nlineZ0Z_0));
    DFE1B h_3 (.D(h_l3), .CLK(clk_c), .E(y_42), .Q(aVga[3]));
    DFE3C v_6 (.D(y_34), .CLK(clk_c), .CLR(y_45), .E(y_39), .Q(
        aVga[13]));
    DFE3C v_2 (.D(y_32), .CLK(clk_c), .CLR(y_45), .E(y_39), .Q(aVga[9])
        );
    CM8 pixel_n2_0_xor2 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(VCCZ0)
        , .S00(pixelZ0Z_2), .S01(VCCZ0), .S10(pixel_n2_0_xor2_cm8iZ0), 
        .S11(pixel_iZ0Z_0), .Y(pixel_n2));
    CM8INV nline_9_i_0_cm8i_2 (.A(nlineZ0Z_2), .Y(
        nline_9_i_0_cm8iZ0Z_2));
    AND3C G_16_i_0_and2_0_1 (.A(hdelayZ0Z_0), .B(hdelayZ0Z_1), .C(
        hdelayZ0Z_2), .Y(N_372_1));
    CM8 pixel_i_0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(pixelZ0Z_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        pixel_iZ0Z_0));
    CM8 v_n2_0_xor2_i (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(VCCZ0), 
        .S00(aVga[9]), .S01(VCCZ0), .S10(v_n2_0_xor2_i_cm8iZ0), .S11(
        aVga_iZ0Z_7), .Y(y_32));
    CM8INV vdelay_l4_i_and2_0_and2_cm8i (.A(N_114_0), .Y(
        vdelay_l4_i_and2_0_and2_cm8iZ0));
    CM8 nline_9_i_0_1 (.D0(GNDZ0), .D1(nline_9_i_0_cm8iZ0Z_1), .D2(
        GNDZ0), .D3(nlineZ0Z_0), .S00(N_114_0), .S01(VCCZ0), .S10(
        linesZ0Z350), .S11(GNDZ0), .Y(y_46));
    CM8 vdelay_l4_i_and2_0_and2 (.D0(VCCZ0), .D1(
        vdelay_l4_i_and2_0_and2_cm8iZ0), .D2(
        vdelay_l4_i_and2_0_and2_cm8iZ0), .D3(VCCZ0), .S00(vdelayZ0Z_4), 
        .S01(VCCZ0), .S10(vdelayZ0Z_3), .S11(N_327), .Y(N_357));
    DFE4F hdelay_0 (.D(N_376), .CLK(clk_c), .PRE(nReset_c), .E(y_38), 
        .Q(hdelayZ0Z_0));
    CM8 G_67_i_0_195 (.D0(VCCZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(aVga[6]), .S01(VCCZ0), .S10(aVga[4]), .S11(aVga[5]), .Y(
        y_8));
    CM8 nline_9_1_i_and2_0 (.D0(VCCZ0), .D1(nline_9_1_i_and2_cm8iZ0Z_0)
        , .D2(VCCZ0), .D3(nlineZ0Z_2), .S00(N_114_0), .S01(VCCZ0), 
        .S10(linesZ0Z350), .S11(GNDZ0), .Y(y_27));
    AND2B G_67_i_0_and2_0_188 (.A(aVga[2]), .B(aVga[3]), .Y(y_9));
    AND4A pixel8_3_0_and2 (.A(pixelZ0Z_3), .B(pixelZ0Z_2), .C(
        pixel_iZ0Z_0), .D(pixelZ0Z_1), .Y(pixel8_3));
    DF1 dVgaZ0Z_7 (.D(dVga[6]), .CLK(clk_c), .Q(dVga[7]));
    DFE4F vdelay_3 (.D(N_356), .CLK(clk_c), .PRE(nReset_c), .E(y_48), 
        .Q(vdelayZ0Z_3));
    CM8 G_308 (.D0(aVga[11]), .D1(G_308_cm8iZ0), .D2(GNDZ0), .D3(VCCZ0)
        , .S00(aVga[14]), .S01(VCCZ0), .S10(N_221_n), .S11(y_51), .Y(
        y_29));
    DF1 dVgaZ0Z_4 (.D(dVga[3]), .CLK(clk_c), .Q(dVga[4]));
    DFE3C vdelay_2 (.D(vdelay_l2), .CLK(clk_c), .CLR(nReset_c), .E(
        y_48), .Q(vdelayZ0Z_2));
    CM8 h_l2_0_and3_i (.D0(GNDZ0), .D1(hsync), .D2(hsync), .D3(GNDZ0), 
        .S00(aVga[1]), .S01(aVga[0]), .S10(aVga[2]), .S11(GNDZ0), .Y(
        y_35));
    CM8INV G_311_cm8i (.A(N_326), .Y(G_311_cm8iZ0));
    CM8 G_67_i_0 (.D0(y_8), .D1(VCCZ0), .D2(y_8), .D3(y_8), .S00(
        G_67_i_0_cm8iZ0), .S01(y_9), .S10(aVga[0]), .S11(aVga[5]), .Y(
        y_43));
    DFE3C hdelay_1 (.D(hdelay_l1), .CLK(clk_c), .CLR(nReset_c), .E(
        y_38), .Q(hdelayZ0Z_1));
    DFC1B pixel_1 (.D(y_44), .CLK(clk_c), .CLR(hsync), .Q(pixelZ0Z_1));
    DFC1B pixel_0 (.D(pixel_iZ0Z_0), .CLK(clk_c), .CLR(hsync), .Q(
        pixelZ0Z_0));
    OR3B G_301 (.A(aVga[8]), .B(aVga[9]), .C(aVga_iZ0Z_7), .Y(N_337));
    GND GND (.Y(GNDZ0));
    CM8 v_n6_0_xor2_i (.D0(aVga[12]), .D1(N_221_n), .D2(GNDZ0), .D3(
        VCCZ0), .S00(aVga[13]), .S01(VCCZ0), .S10(v_n6_0_xor2_i_cm8iZ0)
        , .S11(y_51), .Y(y_34));
    CM8 un1_hsync_3_i_0 (.D0(GNDZ0), .D1(un1_hsync_3_i_0_cm8iZ0), .D2(
        VCCZ0), .D3(VCCZ0), .S00(y_5), .S01(y_4), .S10(y), .S11(hsync), 
        .Y(y_39));
    OR3C wrVga_iZ0 (.A(lineZ0), .B(frameZ0), .C(pixelZ0Z8), .Y(wrVga_i)
        );
    CM8 G_13_i_0 (.D0(hsync_0), .D1(hsync_0), .D2(hsync_0), .D3(GNDZ0), 
        .S00(access), .S01(dirout_0), .S10(G_13_i_0_cm8iZ0), .S11(
        N_347), .Y(y_42));
    DF1 dVgaZ0Z_3 (.D(dVga[2]), .CLK(clk_c), .Q(dVga[3]));
    DFE1B h_4 (.D(h_l4), .CLK(clk_c), .E(y_42), .Q(aVga[4]));
    CM8 hdelay_l1_0_and2_0_and2 (.D0(hsync_0), .D1(GNDZ0), .D2(GNDZ0), 
        .D3(hsync_0), .S00(hdelayZ0Z_0), .S01(VCCZ0), .S10(hdelayZ0Z_1)
        , .S11(GNDZ0), .Y(hdelay_l1));
    CM8INV un1_hsync_3_i_0_cm8i (.A(N_337), .Y(un1_hsync_3_i_0_cm8iZ0));
    CM8 G_305 (.D0(GNDZ0), .D1(aVga[7]), .D2(VCCZ0), .D3(aVga_iZ0Z_7), 
        .S00(aVga[8]), .S01(aVga[9]), .S10(aVga[10]), .S11(GNDZ0), .Y(
        y_30));
    OR4D G_290 (.A(aVga[1]), .B(aVga[3]), .C(aVga[0]), .D(aVga[2]), .Y(
        N_326));
    DFC1B pixel_2 (.D(pixel_n2), .CLK(clk_c), .CLR(hsync), .Q(
        pixelZ0Z_2));
    DF1 dVgaZ0Z_5 (.D(dVga[4]), .CLK(clk_c), .Q(dVga[5]));
    AND2 G_10_i_0_and2 (.A(hsync_0), .B(N_114_0), .Y(un1_hsync_2_i));
    AND4 v_ca7 (.A(aVga[11]), .B(aVga[12]), .C(aVga[13]), .D(aVga[14]), 
        .Y(y_50));
    OR2A un1_hsync_3_i_0_236 (.A(frameZ0), .B(nlineZ0Z_0), .Y(y));
    DFE3C nline_1 (.D(y_46), .CLK(clk_c), .CLR(nReset_c), .E(
        un1_hsync_2_i), .Q(nlineZ0Z_1));
    CM8INV nline_9_1_i_and2_cm8i_0 (.A(nlineZ0Z_0), .Y(
        nline_9_1_i_and2_cm8iZ0Z_0));
    DF1 dVgaZ0Z_2 (.D(dVga[1]), .CLK(clk_c), .Q(dVga[2]));
    DFE1B h_1 (.D(h_l1), .CLK(clk_c), .E(y_42), .Q(aVga[1]));
    DFE3C frame (.D(y_45), .CLK(clk_c), .CLR(nReset_c), .E(y_49), .Q(
        frameZ0));
    DFE3C v_0 (.D(aVga_iZ0Z_7), .CLK(clk_c), .CLR(y_45), .E(y_39), .Q(
        aVga[7]));
    CM8 nline_9_i_0_2 (.D0(GNDZ0), .D1(nline_9_i_0_cm8iZ0Z_2), .D2(
        GNDZ0), .D3(nlineZ0Z_1), .S00(N_114_0), .S01(VCCZ0), .S10(
        linesZ0Z350), .S11(GNDZ0), .Y(y_47));
    DFE3C line (.D(y_31), .CLK(clk_c), .CLR(nReset_c), .E(y_40), .Q(
        lineZ0));
    XA1 h_l1_0_and3_0_and2 (.A(aVga[0]), .B(aVga[1]), .C(hsync_0), .Y(
        h_l1));
    CM8 G_311 (.D0(GNDZ0), .D1(G_311_cm8iZ0), .D2(VCCZ0), .D3(N_326), 
        .S00(aVga[4]), .S01(aVga[5]), .S10(aVga[6]), .S11(GNDZ0), .Y(
        N_347));
    AND2A h_l0_0_and3_i (.A(aVga[0]), .B(hsync_0), .Y(N_293));
    DF1 dVgaZ0Z_1 (.D(dVga[0]), .CLK(clk_c), .Q(dVga[1]));
    DFE3C v_4 (.D(y_36), .CLK(clk_c), .CLR(y_45), .E(y_39), .Q(
        aVga[11]));
    CM8INV h_l3_0_and3_0_and2_cm8i (.A(hsync_0), .Y(
        h_l3_0_and3_0_and2_cm8iZ0));
    CM8 G_310 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), .S00(
        G_310_cm8iZ0), .S01(y_50), .S10(aVga[15]), .S11(GNDZ0), .Y(
        y_28));
    DFE4F vdelay_0 (.D(N_355), .CLK(clk_c), .PRE(nReset_c), .E(y_48), 
        .Q(vdelayZ0Z_0));
    AND2 h_l6_i_0 (.A(hsync_0), .B(N_347), .Y(N_165));
    OR3 G_291 (.A(vdelayZ0Z_0), .B(vdelayZ0Z_2), .C(vdelayZ0Z_1), .Y(
        N_327));
    CM8INV G_13_i_0_cm8i (.A(aVga[6]), .Y(G_13_i_0_cm8iZ0));
    CM8INV v_n6_0_xor2_i_cm8i (.A(aVga[11]), .Y(v_n6_0_xor2_i_cm8iZ0));
    CM8INV G_55_i_and2_0_and2_cm8i (.A(aVga[15]), .Y(
        G_55_i_and2_0_and2_cm8iZ0));
    DFE3C v_7 (.D(y_29), .CLK(clk_c), .CLR(y_45), .E(y_39), .Q(
        aVga[14]));
    DFE1B notVga (.D(y_43), .CLK(clk_c), .E(hsync), .Q(relay_c));
    DFE1B lines350 (.D(y_26), .CLK(clk_c), .E(hsync), .Q(linesZ0Z350));
    DF1 dVgaZ0Z_0 (.D(iVideo_c), .CLK(clk_c), .Q(dVga[0]));
    DFE3C vdelay_1 (.D(vdelay_l1), .CLK(clk_c), .CLR(nReset_c), .E(
        y_48), .Q(vdelayZ0Z_1));
    AND2B G_294_n (.A(aVga[9]), .B(aVga[10]), .Y(N_330_n));
    DFE4F vdelay_4 (.D(N_357), .CLK(clk_c), .PRE(nReset_c), .E(y_48), 
        .Q(vdelayZ0Z_4));
    CM8INV vdelay_l3_i_and2_0_and2_cm8i (.A(N_114_0), .Y(
        vdelay_l3_i_and2_0_and2_cm8iZ0));
    XNOR2 G_199_0 (.A(aVga_iZ0Z_7), .B(aVga[8]), .Y(y_37));
    DFE3C v_8 (.D(y_28), .CLK(clk_c), .CLR(y_45), .E(y_39), .Q(
        aVga[15]));
    CM8 h_l3_0_and3_0_and2 (.D0(aVga[3]), .D1(N_326), .D2(GNDZ0), .D3(
        GNDZ0), .S00(aVga[1]), .S01(aVga[0]), .S10(y_9), .S11(
        h_l3_0_and3_0_and2_cm8iZ0), .Y(h_l3));
    OR2B hdelay_l0_i_and2_0_and2 (.A(hdelayZ0Z_0), .B(hsync_0), .Y(
        N_376));
    DF1 dVgaZ0Z_6 (.D(dVga[5]), .CLK(clk_c), .Q(dVga[6]));
    CM8 aVga_i_7 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), .S00(
        aVga[7]), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        aVga_iZ0Z_7));
    NAND4 v_ca3 (.A(aVga[7]), .B(aVga[8]), .C(aVga[9]), .D(aVga[10]), 
        .Y(y_51));
    DFE1B h_0 (.D(N_293), .CLK(clk_c), .E(y_42), .Q(aVga[0]));
    DFE1B h_5 (.D(y_41), .CLK(clk_c), .E(y_42), .Q(aVga[5]));
    CM8 un1_un1_un1_hsync_i_0_0 (.D0(hsync_0), .D1(GNDZ0), .D2(GNDZ0), 
        .D3(GNDZ0), .S00(pixelZ0Z8), .S01(N_372_1), .S10(GNDZ0), .S11(
        GNDZ0), .Y(y_40));
    CM8INV G_67_i_0_cm8i (.A(aVga[1]), .Y(G_67_i_0_cm8iZ0));
    CM8 un1_un1_un1_hsync_1_i_0_0 (.D0(N_114_0), .D1(hsync), .D2(
        N_114_0), .D3(VCCZ0), .S00(un1_un1_un1_hsync_1_i_0_0_cm8iZ0), 
        .S01(N_114_0), .S10(vdelayZ0Z_4), .S11(N_327), .Y(y_49));
    AND4 un1_hsync_3_i_0_and2_211 (.A(aVga[11]), .B(aVga[14]), .C(
        aVga[12]), .D(aVga[15]), .Y(y_4));
    CM8 vdelay_l2_0_and2_0_and2 (.D0(N_114_0), .D1(GNDZ0), .D2(GNDZ0), 
        .D3(N_114_0), .S00(vdelayZ0Z_2), .S01(VCCZ0), .S10(vdelayZ0Z_1)
        , .S11(vdelayZ0Z_0), .Y(vdelay_l2));
    CM8 vdelay_l3_i_and2_0_and2 (.D0(VCCZ0), .D1(
        vdelay_l3_i_and2_0_and2_cm8iZ0), .D2(
        vdelay_l3_i_and2_0_and2_cm8iZ0), .D3(VCCZ0), .S00(N_327), .S01(
        VCCZ0), .S10(vdelayZ0Z_3), .S11(GNDZ0), .Y(N_356));
    
endmodule


module scanconv(aMem, dMem, clk, nReset, hsync, vsync, ega, iVideo, 
        oVideo, csync, relay, nCs, nOe, nWe);
output  [15:0] aMem;
inout  [7:0] dMem;
input  clk, nReset, hsync, vsync, ega, iVideo;
output  oVideo, csync, relay, nCs, nOe, nWe;

    wire dVga_0, dVga_1, dVga_2, dVga_3, dVga_4, dVga_5, dVga_6, 
        dVga_7, aVga_0, aVga_1, aVga_2, aVga_3, aVga_4, aVga_5, aVga_6, 
        aVga_7, aVga_8, aVga_9, aVga_10, aVga_11, aVga_12, aVga_13, 
        aVga_14, aVga_15, wrVga, dCga_0, dCga_1, dCga_2, dCga_3, 
        dCga_4, dCga_5, dCga_6, dCga_7, aCga_0, aCga_1, aCga_2, aCga_3, 
        aCga_4, aCga_5, aCga_6, aCga_7, aCga_8, aCga_9, aCga_10, 
        aCga_11, aCga_12, aCga_13, aCga_14, aCga_15, dMemOut_0, 
        dMemOut_1, dMemOut_2, dMemOut_3, dMemOut_4, dMemOut_5, 
        dMemOut_6, dMemOut_7, dirout, halfclk, imemory_state_1, 
        imemory_state_1_1, access, GNDZ0, VCCZ0, clk_c, nReset_c, 
        hsync_c, vsync_c, ega_c, iVideo_c, oVideo_c, csync_c, relay_c, 
        dMem_in_0, dMem_in_1, dMem_in_2, dMem_in_3, dMem_in_4, 
        dMem_in_5, dMem_in_6, dMem_in_7, nCs_c, nOe_c, nWe_c, wrVga_i, 
        halfclk_i, access_iZ0, dirout_i, dirout_0, y_10, y_11, y_12, 
        y_13, y_14, y_15, y_16, y_17, y_18, y_19, y_20, y_21, y_22, 
        y_23, y_24, y_25, y_72;
    
    CM8 G_160 (.D0(aCga_5), .D1(aVga_5), .D2(GNDZ0), .D3(GNDZ0), .S00(
        dirout_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_20));
    BIBUF dMem_pad_5 (.PAD(dMem[5]), .D(dMemOut_5), .E(dirout_i), .Y(
        dMem_in_5));
    CM8 G_150 (.D0(aCga_15), .D1(aVga_15), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(dirout), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_10));
    OUTBUF relay_pad (.PAD(relay), .D(relay_c));
    OUTBUF oVideo_pad (.PAD(oVideo), .D(oVideo_c));
    INBUF iVideo_pad (.PAD(iVideo), .Y(iVideo_c));
    OUTBUF aMem_pad_3 (.PAD(aMem[3]), .D(y_22));
    AND2 G_114 (.A(halfclk), .B(imemory_state_1), .Y(access));
    CM8 G_156 (.D0(aCga_9), .D1(aVga_9), .D2(GNDZ0), .D3(GNDZ0), .S00(
        dirout_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_16));
    OUTBUF nWe_pad (.PAD(nWe), .D(nWe_c));
    VCC VCC (.Y(VCCZ0));
    BIBUF dMem_pad_3 (.PAD(dMem[3]), .D(dMemOut_3), .E(dirout_i), .Y(
        dMem_in_3));
    OUTBUF aMem_pad_6 (.PAD(aMem[6]), .D(y_19));
    OUTBUF aMem_pad_1 (.PAD(aMem[1]), .D(y_24));
    INBUF ega_pad (.PAD(ega), .Y(ega_c));
    CM8 G_157 (.D0(aCga_8), .D1(aVga_8), .D2(GNDZ0), .D3(GNDZ0), .S00(
        dirout_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_17));
    BIBUF dMem_pad_6 (.PAD(dMem[6]), .D(dMemOut_6), .E(dirout_i), .Y(
        dMem_in_6));
    BIBUF dMem_pad_1 (.PAD(dMem[1]), .D(dMemOut_1), .E(dirout_i), .Y(
        dMem_in_1));
    CM8 G_163 (.D0(aCga_2), .D1(aVga_2), .D2(GNDZ0), .D3(GNDZ0), .S00(
        dirout_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_23));
    CM8 G_153 (.D0(aCga_12), .D1(aVga_12), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(dirout), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_13));
    OUTBUF nOe_pad (.PAD(nOe), .D(nOe_c));
    OUTBUF nCs_pad (.PAD(nCs), .D(nCs_c));
    XOR2 I_56_s1_s0 (.A(halfclk), .B(imemory_state_1), .Y(
        imemory_state_1_1));
    GND GND (.Y(GNDZ0));
    OUTBUF aMem_pad_10 (.PAD(aMem[10]), .D(y_15));
    OUTBUF aMem_pad_11 (.PAD(aMem[11]), .D(y_14));
    INBUF vsync_pad (.PAD(vsync), .Y(vsync_c));
    OUTBUF aMem_pad_8 (.PAD(aMem[8]), .D(y_17));
    OUTBUF aMem_pad_13 (.PAD(aMem[13]), .D(y_12));
    memory imemory (.dMemOut({dMemOut_7, dMemOut_6, dMemOut_5, 
        dMemOut_4, dMemOut_3, dMemOut_2, dMemOut_1, dMemOut_0}), .dVga({
        dVga_7, dVga_6, dVga_5, dVga_4, dVga_3, dVga_2, dVga_1, dVga_0})
        , .dCga({dCga_7, dCga_6, dCga_5, dCga_4, dCga_3, dCga_2, 
        dCga_1, dCga_0}), .dMem_in({dMem_in_7, dMem_in_6, dMem_in_5, 
        dMem_in_4, dMem_in_3, dMem_in_2, dMem_in_1, dMem_in_0}), 
        .\state_1[1] (imemory_state_1_1), .\state[1] (imemory_state_1), 
        .wrVga_i(wrVga_i), .nOe_c(nOe_c), .nCs_c(nCs_c), .y_72(y_72), 
        .wrVga(wrVga), .nWe_c(nWe_c), .dirout_i(dirout_i), .halfclk_i(
        halfclk_i), .halfclk(halfclk), .dirout(dirout), .nReset_c(
        nReset_c), .clk_c(clk_c), .access_i(access_iZ0), .dirout_0(
        dirout_0), .access(access));
    OUTBUF aMem_pad_9 (.PAD(aMem[9]), .D(y_16));
    OUTBUF aMem_pad_2 (.PAD(aMem[2]), .D(y_23));
    OUTBUF aMem_pad_14 (.PAD(aMem[14]), .D(y_11));
    CM8 G_159 (.D0(aCga_6), .D1(aVga_6), .D2(GNDZ0), .D3(GNDZ0), .S00(
        dirout_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_19));
    INBUF hsync_pad (.PAD(hsync), .Y(hsync_c));
    OUTBUF aMem_pad_15 (.PAD(aMem[15]), .D(y_10));
    CM8 G_161 (.D0(aCga_4), .D1(aVga_4), .D2(GNDZ0), .D3(GNDZ0), .S00(
        dirout_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_21));
    BIBUF dMem_pad_2 (.PAD(dMem[2]), .D(dMemOut_2), .E(dirout_i), .Y(
        dMem_in_2));
    OUTBUF aMem_pad_7 (.PAD(aMem[7]), .D(y_18));
    OUTBUF aMem_pad_12 (.PAD(aMem[12]), .D(y_13));
    CM8 G_164 (.D0(aCga_1), .D1(aVga_1), .D2(GNDZ0), .D3(GNDZ0), .S00(
        dirout_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_24));
    CM8 G_151 (.D0(aCga_14), .D1(aVga_14), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(dirout), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_11));
    OUTBUF aMem_pad_0 (.PAD(aMem[0]), .D(y_25));
    CM8 G_154 (.D0(aCga_11), .D1(aVga_11), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(dirout), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_14));
    CM8 access_i (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), .S00(
        access), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(access_iZ0));
    CM8 G_158 (.D0(aCga_7), .D1(aVga_7), .D2(GNDZ0), .D3(GNDZ0), .S00(
        dirout_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_18));
    XNOR2 G_148 (.A(dirout), .B(wrVga), .Y(y_72));
    CLKBUF nReset_pad (.PAD(nReset), .Y(nReset_c));
    cgaega icgaega (.dCga({dCga_7, dCga_6, dCga_5, dCga_4, dCga_3, 
        dCga_2, dCga_1, dCga_0}), .aCga({aCga_15, aCga_14, aCga_13, 
        aCga_12, aCga_11, aCga_10, aCga_9, aCga_8, aCga_7, aCga_6, 
        aCga_5, aCga_4, aCga_3, aCga_2, aCga_1, aCga_0}), .halfclk_i(
        halfclk_i), .access_i(access_iZ0), .nReset_c(nReset_c), .clk_c(
        clk_c), .ega_c(ega_c), .csync_c(csync_c), .access(access), 
        .oVideo_c(oVideo_c));
    OUTBUF aMem_pad_4 (.PAD(aMem[4]), .D(y_21));
    BIBUF dMem_pad_7 (.PAD(dMem[7]), .D(dMemOut_7), .E(dirout_i), .Y(
        dMem_in_7));
    CM8 G_162 (.D0(aCga_3), .D1(aVga_3), .D2(GNDZ0), .D3(GNDZ0), .S00(
        dirout_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_22));
    OUTBUF csync_pad (.PAD(csync), .D(csync_c));
    BIBUF dMem_pad_0 (.PAD(dMem[0]), .D(dMemOut_0), .E(dirout_i), .Y(
        dMem_in_0));
    CM8 G_152 (.D0(aCga_13), .D1(aVga_13), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(dirout), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_12));
    OUTBUF aMem_pad_5 (.PAD(aMem[5]), .D(y_20));
    CM8 G_165 (.D0(aCga_0), .D1(aVga_0), .D2(GNDZ0), .D3(GNDZ0), .S00(
        dirout_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_25));
    CM8 G_155 (.D0(aCga_10), .D1(aVga_10), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(dirout), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_15));
    BIBUF dMem_pad_4 (.PAD(dMem[4]), .D(dMemOut_4), .E(dirout_i), .Y(
        dMem_in_4));
    vga ivga (.dVga({dVga_7, dVga_6, dVga_5, dVga_4, dVga_3, dVga_2, 
        dVga_1, dVga_0}), .aVga({aVga_15, aVga_14, aVga_13, aVga_12, 
        aVga_11, aVga_10, aVga_9, aVga_8, aVga_7, aVga_6, aVga_5, 
        aVga_4, aVga_3, aVga_2, aVga_1, aVga_0}), .hsync_c(hsync_c), 
        .vsync_c(vsync_c), .iVideo_c(iVideo_c), .nReset_c(nReset_c), 
        .relay_c(relay_c), .clk_c(clk_c), .dirout_0(dirout_0), .access(
        access), .wrVga(wrVga), .wrVga_i(wrVga_i));
    HCLKBUF clk_pad (.PAD(clk), .Y(clk_c));
    
endmodule
