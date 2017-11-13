`timescale 1 ns/100 ps


module my4BREG(CoinLockout_c, CoinCounter_c, dd_in, nReset_c_3, 
        nDiow_c, cmd5N);
output  [2:1] CoinLockout_c;
output  [2:1] CoinCounter_c;
input  [3:0] dd_in;
input  nReset_c_3, nDiow_c, cmd5N;

    
    DFE3C q_3 (.D(dd_in[3]), .CLK(nDiow_c), .CLR(nReset_c_3), .E(cmd5N)
        , .Q(CoinLockout_c[2]));
    DFE3C q_1 (.D(dd_in[1]), .CLK(nDiow_c), .CLR(nReset_c_3), .E(cmd5N)
        , .Q(CoinCounter_c[2]));
    DFE3C q_0 (.D(dd_in[0]), .CLK(nDiow_c), .CLR(nReset_c_3), .E(cmd5N)
        , .Q(CoinCounter_c[1]));
    DFE3C q_2 (.D(dd_in[2]), .CLK(nDiow_c), .CLR(nReset_c_3), .E(cmd5N)
        , .Q(CoinLockout_c[1]));
    
endmodule


module myDFFE2_1(da_c, dd_in, key1, nReset_c_3, nDiow_c, bDevice, y_11, 
        cmd6N_0);
input  [1:0] da_c;
input  [7:0] dd_in;
output  key1;
input  nReset_c_3, nDiow_c, bDevice, y_11, cmd6N_0;

    wire y_4, mt_6_7, y_59, GNDZ0;
    
    DFE3C q (.D(mt_6_7), .CLK(nDiow_c), .CLR(nReset_c_3), .E(y_59), .Q(
        key1));
    CM8 mt_6_7_0_and2 (.D0(GNDZ0), .D1(y_4), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(dd_in[0]), .S01(dd_in[4]), .S10(dd_in[2]), .S11(dd_in[5]), 
        .Y(mt_6_7));
    GND GND (.Y(GNDZ0));
    CM8 un1_enaA_0 (.D0(cmd6N_0), .D1(GNDZ0), .D2(cmd6N_0), .D3(
        cmd6N_0), .S00(da_c[0]), .S01(y_11), .S10(bDevice), .S11(
        da_c[1]), .Y(y_59));
    AND4C mt_6_7_0_and2_506 (.A(dd_in[1]), .B(dd_in[6]), .C(dd_in[7]), 
        .D(dd_in[3]), .Y(y_4));
    
endmodule


module dc(da_c, csDevReg, y_11, y_10, nCS1_c, nCS0_c, csDataReg, acces, 
        y_1, bDevice);
input  [2:0] da_c;
output  csDevReg, y_11, y_10;
input  nCS1_c, nCS0_c;
output  csDataReg;
input  acces;
output  y_1;
input  bDevice;

    wire VCCZ0, csDevReg_0_and2_cm8iZ0;
    
    AND2 csCmdReg_0_and2_517 (.A(da_c[0]), .B(bDevice), .Y(y_1));
    VCC VCC (.Y(VCCZ0));
    CM8INV csDevReg_0_and2_cm8i (.A(nCS1_c), .Y(csDevReg_0_and2_cm8iZ0)
        );
    OR4A csDataReg_0_and2 (.A(acces), .B(da_c[1]), .C(da_c[2]), .D(
        da_c[0]), .Y(csDataReg));
    CM8 csDevReg_0_and2 (.D0(VCCZ0), .D1(da_c[0]), .D2(VCCZ0), .D3(
        VCCZ0), .S00(da_c[2]), .S01(da_c[1]), .S10(
        csDevReg_0_and2_cm8iZ0), .S11(nCS0_c), .Y(csDevReg));
    AND3B G_9 (.A(da_c[2]), .B(nCS0_c), .C(nCS1_c), .Y(y_10));
    AND3A G_8 (.A(nCS0_c), .B(da_c[2]), .C(nCS1_c), .Y(y_11));
    
endmodule


module my16COUNTER(count, y_56, y_55, nReset_c, cmd6N, cmd6N_0_0, 
        nReset_c_5, nDiow_c, cmd6N_0, N_502, N_501, N_14, y_57, 
        N_509_n, N_510_n, N_511_n, N_14_0, word);
output  [15:1] count;
output  y_56, y_55;
input  nReset_c, cmd6N, cmd6N_0_0, nReset_c_5, nDiow_c, cmd6N_0, N_502, 
        N_501, N_14;
output  y_57;
input  N_509_n, N_510_n, N_511_n, N_14_0;
output  word;

    wire q_l1, q_l0, q_l4, q_l3, q_l2, q_l7, q_l6, q_l5, q_l9, q_l8, 
        q_l12, q_l11, q_l10, q_l15, q_l14, q_l13, GNDZ0, VCCZ0, 
        q_l13_0_and2_0_and2_cm8iZ0, q_l12_0_and2_0_and2_cm8iZ0, 
        q_l10_0_and2_0_and2_cm8iZ0, q_l9_0_and2_0_and2_cm8iZ0, 
        q_l8_0_and2_0_and2_cm8iZ0, q_l5_0_and2_0_and2_cm8iZ0, 
        q_l1_0_and2_0_and2_cm8iZ0, q_l2_0_and2_0_and2_cm8iZ0, 
        q_l3_0_and2_0_and2_cm8iZ0, q_l4_0_and2_0_and2_cm8iZ0, 
        q_l6_0_and2_0_and2_cm8iZ0, q_l7_0_and2_0_and2_cm8iZ0, 
        q_l11_0_and2_0_and2_cm8iZ0, q_l14_0_and2_0_and2_cm8iZ0, 
        q_l15_0_and2_0_and2_cm8iZ0;
    
    CM8 q_l1_0_and2_0_and2 (.D0(GNDZ0), .D1(q_l1_0_and2_0_and2_cm8iZ0), 
        .D2(q_l1_0_and2_0_and2_cm8iZ0), .D3(GNDZ0), .S00(word), .S01(
        VCCZ0), .S10(count[1]), .S11(GNDZ0), .Y(q_l1));
    NAND4 q_ca3 (.A(word), .B(count[1]), .C(count[2]), .D(count[3]), 
        .Y(y_57));
    DFE4F q_9 (.D(q_l9), .CLK(nDiow_c), .PRE(nReset_c), .E(cmd6N), .Q(
        count[9]));
    CM8INV q_l1_0_and2_0_and2_cm8i (.A(N_14), .Y(
        q_l1_0_and2_0_and2_cm8iZ0));
    CM8INV q_l2_0_and2_0_and2_cm8i (.A(N_14_0), .Y(
        q_l2_0_and2_0_and2_cm8iZ0));
    CM8INV q_l15_0_and2_0_and2_cm8i (.A(N_14_0), .Y(
        q_l15_0_and2_0_and2_cm8iZ0));
    CM8INV q_l12_0_and2_0_and2_cm8i (.A(N_14), .Y(
        q_l12_0_and2_0_and2_cm8iZ0));
    DFE4F q_15 (.D(q_l15), .CLK(nDiow_c), .PRE(nReset_c), .E(cmd6N), 
        .Q(count[15]));
    CM8INV q_l9_0_and2_0_and2_cm8i (.A(N_501), .Y(
        q_l9_0_and2_0_and2_cm8iZ0));
    DFE4F q_14 (.D(q_l14), .CLK(nDiow_c), .PRE(nReset_c), .E(cmd6N), 
        .Q(count[14]));
    CM8INV q_l6_0_and2_0_and2_cm8i (.A(N_14_0), .Y(
        q_l6_0_and2_0_and2_cm8iZ0));
    NAND4 q_ca11 (.A(count[8]), .B(count[9]), .C(count[10]), .D(
        count[11]), .Y(y_55));
    DFE4F q_2 (.D(q_l2), .CLK(nDiow_c), .PRE(nReset_c_5), .E(cmd6N_0_0)
        , .Q(count[2]));
    CM8INV q_l8_0_and2_0_and2_cm8i (.A(N_14), .Y(
        q_l8_0_and2_0_and2_cm8iZ0));
    CM8 q_l12_0_and2_0_and2 (.D0(q_l12_0_and2_0_and2_cm8iZ0), .D1(
        GNDZ0), .D2(GNDZ0), .D3(q_l12_0_and2_0_and2_cm8iZ0), .S00(
        N_502), .S01(VCCZ0), .S10(count[12]), .S11(GNDZ0), .Y(q_l12));
    CM8 q_l11_0_and2_0_and2 (.D0(GNDZ0), .D1(
        q_l11_0_and2_0_and2_cm8iZ0), .D2(q_l11_0_and2_0_and2_cm8iZ0), 
        .D3(GNDZ0), .S00(count[10]), .S01(N_510_n), .S10(count[11]), 
        .S11(GNDZ0), .Y(q_l11));
    CM8 q_l7_0_and2_0_and2 (.D0(GNDZ0), .D1(q_l7_0_and2_0_and2_cm8iZ0), 
        .D2(q_l7_0_and2_0_and2_cm8iZ0), .D3(GNDZ0), .S00(count[6]), 
        .S01(N_509_n), .S10(count[7]), .S11(GNDZ0), .Y(q_l7));
    CM8 q_l3_0_and2_0_and2 (.D0(GNDZ0), .D1(word), .D2(
        q_l3_0_and2_0_and2_cm8iZ0), .D3(q_l0), .S00(count[1]), .S01(
        count[2]), .S10(count[3]), .S11(N_14_0), .Y(q_l3));
    CM8INV q_l5_0_and2_0_and2_cm8i (.A(y_57), .Y(
        q_l5_0_and2_0_and2_cm8iZ0));
    CM8 q_l15_0_and2_0_and2 (.D0(GNDZ0), .D1(
        q_l15_0_and2_0_and2_cm8iZ0), .D2(q_l15_0_and2_0_and2_cm8iZ0), 
        .D3(GNDZ0), .S00(count[14]), .S01(N_511_n), .S10(count[15]), 
        .S11(GNDZ0), .Y(q_l15));
    DFE4F q_8 (.D(q_l8), .CLK(nDiow_c), .PRE(nReset_c_5), .E(cmd6N), 
        .Q(count[8]));
    DFE4F q_10 (.D(q_l10), .CLK(nDiow_c), .PRE(nReset_c), .E(cmd6N), 
        .Q(count[10]));
    VCC VCC (.Y(VCCZ0));
    CM8INV q_l3_0_and2_0_and2_cm8i (.A(N_14_0), .Y(
        q_l3_0_and2_0_and2_cm8iZ0));
    CM8INV q_l11_0_and2_0_and2_cm8i (.A(N_14_0), .Y(
        q_l11_0_and2_0_and2_cm8iZ0));
    AND4 q_ca7 (.A(count[4]), .B(count[5]), .C(count[6]), .D(count[7]), 
        .Y(y_56));
    DFE4F q_4 (.D(q_l4), .CLK(nDiow_c), .PRE(nReset_c_5), .E(cmd6N_0), 
        .Q(count[4]));
    DFE4F q_11 (.D(q_l11), .CLK(nDiow_c), .PRE(nReset_c), .E(cmd6N), 
        .Q(count[11]));
    GND GND (.Y(GNDZ0));
    CM8INV q_l14_0_and2_0_and2_cm8i (.A(N_14_0), .Y(
        q_l14_0_and2_0_and2_cm8iZ0));
    CM8 q_l2_0_and2_0_and2 (.D0(GNDZ0), .D1(q_l2_0_and2_0_and2_cm8iZ0), 
        .D2(q_l2_0_and2_0_and2_cm8iZ0), .D3(GNDZ0), .S00(count[1]), 
        .S01(word), .S10(count[2]), .S11(GNDZ0), .Y(q_l2));
    DFE4F q_13 (.D(q_l13), .CLK(nDiow_c), .PRE(nReset_c), .E(cmd6N), 
        .Q(count[13]));
    DFE4F q_1 (.D(q_l1), .CLK(nDiow_c), .PRE(nReset_c_5), .E(cmd6N_0), 
        .Q(count[1]));
    CM8 q_l4_0_and2_0_and2 (.D0(q_l4_0_and2_0_and2_cm8iZ0), .D1(GNDZ0), 
        .D2(GNDZ0), .D3(q_l4_0_and2_0_and2_cm8iZ0), .S00(y_57), .S01(
        VCCZ0), .S10(count[4]), .S11(GNDZ0), .Y(q_l4));
    DFE4F q_5 (.D(q_l5), .CLK(nDiow_c), .PRE(nReset_c_5), .E(cmd6N), 
        .Q(count[5]));
    CM8 q_l13_0_and2_0_and2 (.D0(count[13]), .D1(VCCZ0), .D2(GNDZ0), 
        .D3(GNDZ0), .S00(count[12]), .S01(q_l13_0_and2_0_and2_cm8iZ0), 
        .S10(N_14), .S11(N_511_n), .Y(q_l13));
    CM8 q_l14_0_and2_0_and2 (.D0(GNDZ0), .D1(VCCZ0), .D2(
        q_l14_0_and2_0_and2_cm8iZ0), .D3(GNDZ0), .S00(
        q_l14_0_and2_0_and2_cm8iZ0), .S01(N_511_n), .S10(count[14]), 
        .S11(GNDZ0), .Y(q_l14));
    CM8INV q_l13_0_and2_0_and2_cm8i (.A(N_502), .Y(
        q_l13_0_and2_0_and2_cm8iZ0));
    CM8 q_l6_0_and2_0_and2 (.D0(GNDZ0), .D1(q_l6_0_and2_0_and2_cm8iZ0), 
        .D2(q_l6_0_and2_0_and2_cm8iZ0), .D3(GNDZ0), .S00(N_509_n), 
        .S01(VCCZ0), .S10(count[6]), .S11(GNDZ0), .Y(q_l6));
    DFE4F q_0 (.D(q_l0), .CLK(nDiow_c), .PRE(nReset_c_5), .E(cmd6N_0), 
        .Q(word));
    DFE4F q_7 (.D(q_l7), .CLK(nDiow_c), .PRE(nReset_c_5), .E(cmd6N_0_0)
        , .Q(count[7]));
    CM8 q_l9_0_and2_0_and2 (.D0(count[9]), .D1(VCCZ0), .D2(GNDZ0), .D3(
        GNDZ0), .S00(count[8]), .S01(q_l9_0_and2_0_and2_cm8iZ0), .S10(
        N_510_n), .S11(N_14), .Y(q_l9));
    CM8 q_l10_0_and2_0_and2 (.D0(GNDZ0), .D1(
        q_l10_0_and2_0_and2_cm8iZ0), .D2(q_l10_0_and2_0_and2_cm8iZ0), 
        .D3(GNDZ0), .S00(N_510_n), .S01(VCCZ0), .S10(count[10]), .S11(
        GNDZ0), .Y(q_l10));
    CM8 q_l8_0_and2_0_and2 (.D0(q_l8_0_and2_0_and2_cm8iZ0), .D1(GNDZ0), 
        .D2(GNDZ0), .D3(q_l8_0_and2_0_and2_cm8iZ0), .S00(N_501), .S01(
        VCCZ0), .S10(count[8]), .S11(GNDZ0), .Y(q_l8));
    CM8INV q_l4_0_and2_0_and2_cm8i (.A(N_14_0), .Y(
        q_l4_0_and2_0_and2_cm8iZ0));
    CM8INV q_l10_0_and2_0_and2_cm8i (.A(N_14), .Y(
        q_l10_0_and2_0_and2_cm8iZ0));
    CM8 q_l5_0_and2_0_and2 (.D0(count[5]), .D1(VCCZ0), .D2(GNDZ0), .D3(
        GNDZ0), .S00(count[4]), .S01(q_l5_0_and2_0_and2_cm8iZ0), .S10(
        N_509_n), .S11(N_14), .Y(q_l5));
    AND2B q_l0_0_and2_0_and2 (.A(word), .B(N_14_0), .Y(q_l0));
    DFE4F q_3 (.D(q_l3), .CLK(nDiow_c), .PRE(nReset_c_5), .E(cmd6N_0_0)
        , .Q(count[3]));
    DFE4F q_12 (.D(q_l12), .CLK(nDiow_c), .PRE(nReset_c), .E(cmd6N), 
        .Q(count[12]));
    CM8INV q_l7_0_and2_0_and2_cm8i (.A(N_14_0), .Y(
        q_l7_0_and2_0_and2_cm8iZ0));
    DFE4F q_6 (.D(q_l6), .CLK(nDiow_c), .PRE(nReset_c_5), .E(cmd6N_0_0)
        , .Q(count[6]));
    
endmodule


module myFRONTEXTRACTOR_2(\P_c[3] , nReset_c_0, nReset_c_1, clk_c, 
        nDior_c_i_0, riseA_n);
input  \P_c[3] , nReset_c_0, nReset_c_1, clk_c, nDior_c_i_0;
output  riseA_n;

    wire riseZ0Z_1, riseZ0Z_0;
    
    DFE3C rise_1 (.D(riseZ0Z_0), .CLK(clk_c), .CLR(nReset_c_1), .E(
        nDior_c_i_0), .Q(riseZ0Z_1));
    DFE3C rise_0 (.D(\P_c[3] ), .CLK(clk_c), .CLR(nReset_c_0), .E(
        nDior_c_i_0), .Q(riseZ0Z_0));
    XNOR2 out_n (.A(riseZ0Z_0), .B(riseZ0Z_1), .Y(riseA_n));
    
endmodule


module myFRONTEXTRACTOR_3(rise, \P_c[4] , nReset_c_1, clk_c, 
        nDior_c_i_0);
output  [1:0] rise;
input  \P_c[4] , nReset_c_1, clk_c, nDior_c_i_0;

    
    DFE3C riseZ0Z_1 (.D(rise[0]), .CLK(clk_c), .CLR(nReset_c_1), .E(
        nDior_c_i_0), .Q(rise[1]));
    DFE3C riseZ0Z_0 (.D(\P_c[4] ), .CLK(clk_c), .CLR(nReset_c_1), .E(
        nDior_c_i_0), .Q(rise[0]));
    
endmodule


module myREVCOUNTER_1(ballCnt1q, cnt_6_0, cnt_6_1, cnt_6_4, 
        \ballCnt1q_i[0] , y_16, s4i, s5i, nReset_c_1, clk_c, y_18);
output  [6:0] ballCnt1q;
input  cnt_6_0, cnt_6_1, cnt_6_4;
output  \ballCnt1q_i[0] ;
input  y_16, s4i, s5i, nReset_c_1, clk_c, y_18;

    wire VCCZ0, GNDZ0;
    
    DFE3C q_5 (.D(s5i), .CLK(clk_c), .CLR(nReset_c_1), .E(y_18), .Q(
        ballCnt1q[5]));
    DFE3C q_4 (.D(s4i), .CLK(clk_c), .CLR(nReset_c_1), .E(y_18), .Q(
        ballCnt1q[4]));
    VCC VCC (.Y(VCCZ0));
    DFE3C q_3 (.D(cnt_6_1), .CLK(clk_c), .CLR(nReset_c_1), .E(y_18), 
        .Q(ballCnt1q[3]));
    CM8 ballCnt1q_iZ0Z_0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(
        GNDZ0), .S00(ballCnt1q[0]), .S01(VCCZ0), .S10(GNDZ0), .S11(
        GNDZ0), .Y(\ballCnt1q_i[0] ));
    DFE3C q_6 (.D(cnt_6_4), .CLK(clk_c), .CLR(nReset_c_1), .E(y_18), 
        .Q(ballCnt1q[6]));
    DFE3C q_1 (.D(y_16), .CLK(clk_c), .CLR(nReset_c_1), .E(y_18), .Q(
        ballCnt1q[1]));
    DFE3C q_0 (.D(\ballCnt1q_i[0] ), .CLK(clk_c), .CLR(nReset_c_1), .E(
        y_18), .Q(ballCnt1q[0]));
    GND GND (.Y(GNDZ0));
    DFE3C q_2 (.D(cnt_6_0), .CLK(clk_c), .CLR(nReset_c_1), .E(y_18), 
        .Q(ballCnt1q[2]));
    
endmodule


module QUAD_COUNTER_1(P_c, ballCnt1q, nDior_c_i_0, clk_c, nReset_c_1, 
        nReset_c_0, nDior_c);
input  [4:3] P_c;
output  [6:0] ballCnt1q;
input  nDior_c_i_0, clk_c, nReset_c_1, nReset_c_0, nDior_c;

    wire axb0m, y_19, axb5mi, fadd6_nc_5t0_c, c6_0, axb4mi, c5, c4_0, 
        axb3m, axb2m, c4, y_17, c2, c3, riseA_n, rise_0, rise_1, 
        cnt_6_2, cnt_6_3, cnt_6_6, ballCnt1q_i_0, y_16, s4i, s5i, y_18, 
        GNDZ0, VCCZ0, G_60_cm8iZ0, ena_i_0_cm8iZ0;
    
    CM8 fadd6_nc_5t0_c4 (.D0(c4_0), .D1(c2), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(axb3m), .S01(axb2m), .S10(GNDZ0), .S11(GNDZ0), .Y(c4));
    MAJ3 fadd6_nc_5t0_c3 (.A(ballCnt1q[2]), .B(y_17), .C(c2), .Y(c3));
    CY2A fadd6_nc_5t0_c2 (.A0(ballCnt1q[0]), .A1(ballCnt1q[1]), .B0(
        VCCZ0), .B1(y_17), .Y(c2));
    CM8INV ena_i_0_cm8i (.A(nDior_c), .Y(ena_i_0_cm8iZ0));
    myFRONTEXTRACTOR_2 ifrontsExtractorA (.\P_c[3] (P_c[3]), 
        .nReset_c_0(nReset_c_0), .nReset_c_1(nReset_c_1), .clk_c(clk_c)
        , .nDior_c_i_0(nDior_c_i_0), .riseA_n(riseA_n));
    GND GND (.Y(GNDZ0));
    CM8 fadd6_nc_5t0_c5 (.D0(c4_0), .D1(c2), .D2(ballCnt1q[4]), .D3(
        y_17), .S00(axb3m), .S01(axb2m), .S10(axb4mi), .S11(GNDZ0), .Y(
        c5));
    XNOR2 G_66 (.A(y_17), .B(ballCnt1q[4]), .Y(axb4mi));
    myFRONTEXTRACTOR_3 ifrontsExtractorB (.rise({rise_1, rise_0}), 
        .\P_c[4] (P_c[4]), .nReset_c_1(nReset_c_1), .clk_c(clk_c), 
        .nDior_c_i_0(nDior_c_i_0));
    XNOR2 G_67 (.A(y_17), .B(ballCnt1q[5]), .Y(axb5mi));
    XOR2 fadd1_6t6_s0 (.A(fadd6_nc_5t0_c), .B(axb0m), .Y(cnt_6_6));
    CM8 G_62 (.D0(ballCnt1q[0]), .D1(ballCnt1q_i_0), .D2(ballCnt1q_i_0)
        , .D3(ballCnt1q[0]), .S00(y_17), .S01(VCCZ0), .S10(
        ballCnt1q[1]), .S11(GNDZ0), .Y(y_16));
    XOR2 fadd6_nc_5t0_s3 (.A(c3), .B(axb3m), .Y(cnt_6_3));
    XOR2 G_63 (.A(y_17), .B(ballCnt1q[6]), .Y(axb0m));
    CM8 G_60 (.D0(G_60_cm8iZ0), .D1(riseA_n), .D2(rise_1), .D3(riseA_n)
        , .S00(y_19), .S01(VCCZ0), .S10(rise_0), .S11(GNDZ0), .Y(y_17));
    XOR2 fadd6_nc_5t0_s2 (.A(c2), .B(axb2m), .Y(cnt_6_2));
    XNOR2 fadd6_nc_5t0_s4i (.A(c4), .B(axb4mi), .Y(s4i));
    CY2A fadd6_nc_5t0_c6_0 (.A0(ballCnt1q[4]), .A1(ballCnt1q[5]), .B0(
        y_17), .B1(y_17), .Y(c6_0));
    XOR2 G_23 (.A(P_c[4]), .B(P_c[3]), .Y(y_19));
    CM8 fadd6_nc_5t0_cout (.D0(c4_0), .D1(c2), .D2(c6_0), .D3(c6_0), 
        .S00(axb3m), .S01(axb2m), .S10(axb5mi), .S11(axb4mi), .Y(
        fadd6_nc_5t0_c));
    XNOR2 fadd6_nc_5t0_s5i (.A(c5), .B(axb5mi), .Y(s5i));
    VCC VCC (.Y(VCCZ0));
    XOR2 G_65 (.A(y_17), .B(ballCnt1q[3]), .Y(axb3m));
    CM8 ena_i_0 (.D0(riseA_n), .D1(GNDZ0), .D2(ena_i_0_cm8iZ0), .D3(
        VCCZ0), .S00(rise_0), .S01(riseA_n), .S10(rise_1), .S11(
        ena_i_0_cm8iZ0), .Y(y_18));
    XOR2 G_64 (.A(y_17), .B(ballCnt1q[2]), .Y(axb2m));
    CM8INV G_60_cm8i (.A(rise_1), .Y(G_60_cm8iZ0));
    myREVCOUNTER_1 irevCounter (.ballCnt1q({ballCnt1q[6], ballCnt1q[5], 
        ballCnt1q[4], ballCnt1q[3], ballCnt1q[2], ballCnt1q[1], 
        ballCnt1q[0]}), .cnt_6_0(cnt_6_2), .cnt_6_1(cnt_6_3), .cnt_6_4(
        cnt_6_6), .\ballCnt1q_i[0] (ballCnt1q_i_0), .y_16(y_16), .s4i(
        s4i), .s5i(s5i), .nReset_c_1(nReset_c_1), .clk_c(clk_c), .y_18(
        y_18));
    CY2A fadd6_nc_5t0_c4_0 (.A0(ballCnt1q[2]), .A1(ballCnt1q[3]), .B0(
        y_17), .B1(y_17), .Y(c4_0));
    
endmodule


module myMUX_16_6(dataInput, ballCnt3q, bCounter, ballCnt1q, ballCnt2q, 
        ballCnt0q, bCounter_0, P_c, \ballCnt3q_i[0] , \ballCnt2q_i[0] , 
        \bCounter_i[0] );
output  [6:0] dataInput;
input  [6:1] ballCnt3q;
input  [3:0] bCounter;
input  [6:0] ballCnt1q;
input  [6:1] ballCnt2q;
input  [6:0] ballCnt0q;
input  [3:1] bCounter_0;
input  [28:0] P_c;
input  \ballCnt3q_i[0] , \ballCnt2q_i[0] , \bCounter_i[0] ;

    wire y_54, y_49, y_44, y_43, y_36, y_53, y_48, y_42, y_35, y_52, 
        y_41, y_47, y_34, y_51, y_40, y_46, y_33, y_50, y_39, y_45, 
        y_32, y_37, y_30, y_38, y_31, VCCZ0, GNDZ0, out_13_cm8iZ0Z_0, 
        out_10_cm8iZ0Z_0;
    
    CM8 out_10_6 (.D0(ballCnt0q[6]), .D1(GNDZ0), .D2(ballCnt2q[6]), 
        .D3(GNDZ0), .S00(bCounter[2]), .S01(VCCZ0), .S10(bCounter_0[1])
        , .S11(GNDZ0), .Y(y_37));
    CM8INV out_10_cm8i_0 (.A(\ballCnt2q_i[0] ), .Y(out_10_cm8iZ0Z_0));
    CM8 out_13_2 (.D0(P_c[17]), .D1(GNDZ0), .D2(ballCnt3q[2]), .D3(
        GNDZ0), .S00(bCounter[2]), .S01(VCCZ0), .S10(bCounter_0[3]), 
        .S11(GNDZ0), .Y(y_34));
    CM8 out_15_0_and2_0_and2_5 (.D0(GNDZ0), .D1(GNDZ0), .D2(y_38), .D3(
        y_31), .S00(bCounter[0]), .S01(VCCZ0), .S10(bCounter[3]), .S11(
        GNDZ0), .Y(dataInput[5]));
    CM8 out_15_0 (.D0(y_44), .D1(GNDZ0), .D2(y_43), .D3(y_36), .S00(
        bCounter[3]), .S01(bCounter[0]), .S10(bCounter[3]), .S11(GNDZ0)
        , .Y(dataInput[0]));
    CM8 out_13_6 (.D0(ballCnt1q[6]), .D1(GNDZ0), .D2(ballCnt3q[6]), 
        .D3(GNDZ0), .S00(bCounter[2]), .S01(VCCZ0), .S10(bCounter[1]), 
        .S11(GNDZ0), .Y(y_30));
    CM8 out_3_2 (.D0(P_c[2]), .D1(P_c[22]), .D2(ballCnt0q[2]), .D3(
        GNDZ0), .S00(bCounter_0[2]), .S01(VCCZ0), .S10(bCounter_0[3]), 
        .S11(GNDZ0), .Y(y_52));
    VCC VCC (.Y(VCCZ0));
    CM8 out_3_3 (.D0(P_c[3]), .D1(P_c[23]), .D2(ballCnt0q[3]), .D3(
        GNDZ0), .S00(bCounter_0[2]), .S01(VCCZ0), .S10(bCounter_0[3]), 
        .S11(GNDZ0), .Y(y_51));
    CM8 out_10_4 (.D0(P_c[9]), .D1(GNDZ0), .D2(ballCnt1q[4]), .D3(
        GNDZ0), .S00(bCounter[2]), .S01(VCCZ0), .S10(bCounter_0[3]), 
        .S11(GNDZ0), .Y(y_39));
    CM8INV out_13_cm8i_0 (.A(\ballCnt3q_i[0] ), .Y(out_13_cm8iZ0Z_0));
    CM8 out_10_1 (.D0(ballCnt0q[1]), .D1(GNDZ0), .D2(ballCnt2q[1]), 
        .D3(GNDZ0), .S00(bCounter_0[2]), .S01(VCCZ0), .S10(
        bCounter_0[1]), .S11(GNDZ0), .Y(y_42));
    CM8 out_15_0_and2_0_and2_6 (.D0(GNDZ0), .D1(GNDZ0), .D2(y_37), .D3(
        y_30), .S00(bCounter[0]), .S01(VCCZ0), .S10(bCounter[3]), .S11(
        GNDZ0), .Y(dataInput[6]));
    CM8 out_15_1 (.D0(y_53), .D1(y_48), .D2(y_42), .D3(y_35), .S00(
        bCounter[0]), .S01(VCCZ0), .S10(bCounter[3]), .S11(GNDZ0), .Y(
        dataInput[1]));
    CM8 out_6_0 (.D0(P_c[15]), .D1(VCCZ0), .D2(P_c[10]), .D3(GNDZ0), 
        .S00(bCounter_0[2]), .S01(VCCZ0), .S10(\bCounter_i[0] ), .S11(
        GNDZ0), .Y(y_49));
    CM8 out_3_4 (.D0(P_c[4]), .D1(P_c[24]), .D2(ballCnt0q[4]), .D3(
        GNDZ0), .S00(bCounter_0[2]), .S01(VCCZ0), .S10(bCounter_0[3]), 
        .S11(GNDZ0), .Y(y_50));
    GND GND (.Y(GNDZ0));
    CM8 out_10_3 (.D0(P_c[8]), .D1(P_c[28]), .D2(ballCnt1q[3]), .D3(
        GNDZ0), .S00(bCounter_0[2]), .S01(VCCZ0), .S10(bCounter_0[3]), 
        .S11(GNDZ0), .Y(y_40));
    CM8 out_10_0 (.D0(ballCnt0q[0]), .D1(GNDZ0), .D2(out_10_cm8iZ0Z_0), 
        .D3(GNDZ0), .S00(bCounter_0[2]), .S01(VCCZ0), .S10(
        bCounter_0[1]), .S11(GNDZ0), .Y(y_43));
    CM8 out_6_1 (.D0(P_c[6]), .D1(P_c[26]), .D2(P_c[16]), .D3(GNDZ0), 
        .S00(bCounter_0[2]), .S01(VCCZ0), .S10(bCounter_0[1]), .S11(
        GNDZ0), .Y(y_48));
    CM8 out_6_4 (.D0(P_c[14]), .D1(GNDZ0), .D2(ballCnt2q[4]), .D3(
        GNDZ0), .S00(bCounter_0[2]), .S01(VCCZ0), .S10(bCounter_0[3]), 
        .S11(GNDZ0), .Y(y_45));
    CM8 out_13_5 (.D0(ballCnt1q[5]), .D1(GNDZ0), .D2(ballCnt3q[5]), 
        .D3(GNDZ0), .S00(bCounter[2]), .S01(VCCZ0), .S10(bCounter_0[1])
        , .S11(GNDZ0), .Y(y_31));
    CM8 out_3_1 (.D0(P_c[1]), .D1(P_c[21]), .D2(P_c[11]), .D3(GNDZ0), 
        .S00(bCounter_0[2]), .S01(VCCZ0), .S10(bCounter_0[1]), .S11(
        GNDZ0), .Y(y_53));
    CM8 out_10_5 (.D0(ballCnt0q[5]), .D1(GNDZ0), .D2(ballCnt2q[5]), 
        .D3(GNDZ0), .S00(bCounter[2]), .S01(VCCZ0), .S10(bCounter_0[1])
        , .S11(GNDZ0), .Y(y_38));
    CM8 out_3_0 (.D0(P_c[5]), .D1(P_c[25]), .D2(P_c[0]), .D3(P_c[20]), 
        .S00(bCounter_0[2]), .S01(VCCZ0), .S10(\bCounter_i[0] ), .S11(
        GNDZ0), .Y(y_54));
    CM8 out_13_0 (.D0(ballCnt1q[0]), .D1(GNDZ0), .D2(out_13_cm8iZ0Z_0), 
        .D3(GNDZ0), .S00(bCounter[2]), .S01(VCCZ0), .S10(bCounter_0[1])
        , .S11(GNDZ0), .Y(y_36));
    CM8 out_13_1 (.D0(ballCnt1q[1]), .D1(GNDZ0), .D2(ballCnt3q[1]), 
        .D3(GNDZ0), .S00(bCounter[2]), .S01(VCCZ0), .S10(bCounter_0[1])
        , .S11(GNDZ0), .Y(y_35));
    CM8 out_10_2 (.D0(P_c[7]), .D1(P_c[27]), .D2(ballCnt1q[2]), .D3(
        GNDZ0), .S00(bCounter_0[2]), .S01(VCCZ0), .S10(bCounter_0[3]), 
        .S11(GNDZ0), .Y(y_41));
    CM8 out_15_3 (.D0(y_51), .D1(y_40), .D2(y_46), .D3(y_33), .S00(
        bCounter[0]), .S01(VCCZ0), .S10(bCounter[1]), .S11(GNDZ0), .Y(
        dataInput[3]));
    CM8 out_13_4 (.D0(P_c[19]), .D1(GNDZ0), .D2(ballCnt3q[4]), .D3(
        GNDZ0), .S00(bCounter[2]), .S01(VCCZ0), .S10(bCounter[3]), 
        .S11(GNDZ0), .Y(y_32));
    CM8 out_15_2 (.D0(y_52), .D1(y_41), .D2(y_47), .D3(y_34), .S00(
        bCounter[0]), .S01(VCCZ0), .S10(bCounter[1]), .S11(GNDZ0), .Y(
        dataInput[2]));
    CM8 out_6_3 (.D0(P_c[13]), .D1(GNDZ0), .D2(ballCnt2q[3]), .D3(
        GNDZ0), .S00(bCounter_0[2]), .S01(VCCZ0), .S10(bCounter_0[3]), 
        .S11(GNDZ0), .Y(y_46));
    CM8 out_15_4 (.D0(y_50), .D1(y_39), .D2(y_45), .D3(y_32), .S00(
        bCounter[0]), .S01(VCCZ0), .S10(bCounter[1]), .S11(GNDZ0), .Y(
        dataInput[4]));
    CM8 out_7_0 (.D0(y_54), .D1(y_49), .D2(GNDZ0), .D3(GNDZ0), .S00(
        bCounter_0[1]), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_44)
        );
    CM8 out_13_3 (.D0(P_c[18]), .D1(GNDZ0), .D2(ballCnt3q[3]), .D3(
        GNDZ0), .S00(bCounter[2]), .S01(VCCZ0), .S10(bCounter[3]), 
        .S11(GNDZ0), .Y(y_33));
    CM8 out_6_2 (.D0(P_c[12]), .D1(GNDZ0), .D2(ballCnt2q[2]), .D3(
        GNDZ0), .S00(bCounter_0[2]), .S01(VCCZ0), .S10(bCounter_0[3]), 
        .S11(GNDZ0), .Y(y_47));
    
endmodule


module myNOISE(noice_15, noice_1, noice_0, nReset_c_5, nReset_c_4, 
        nDior_c, y_9);
output  noice_15, noice_1, noice_0;
input  nReset_c_5, nReset_c_4, nDior_c, y_9;

    wire y_61, noice_14, noice_13, noice_12, noice_11, noice_10, 
        noice_9, noice_8, noice_7, noice_6, noice_5, noice_4, noice_3, 
        noice_2, VCCZ0, GNDZ0, un5_mt_cm8iZ0;
    
    CM8INV un5_mt_cm8i (.A(noice_2), .Y(un5_mt_cm8iZ0));
    DFC1B q_3 (.D(noice_2), .CLK(nDior_c), .CLR(nReset_c_4), .Q(
        noice_3));
    DFC1B q_11 (.D(noice_10), .CLK(nDior_c), .CLR(nReset_c_4), .Q(
        noice_11));
    DFC1B q_7 (.D(noice_6), .CLK(nDior_c), .CLR(nReset_c_4), .Q(
        noice_7));
    DFC1B q_12 (.D(noice_11), .CLK(nDior_c), .CLR(nReset_c_5), .Q(
        noice_12));
    DFC1B q_8 (.D(noice_7), .CLK(nDior_c), .CLR(nReset_c_4), .Q(
        noice_8));
    DFC1B q_13 (.D(noice_12), .CLK(nDior_c), .CLR(nReset_c_5), .Q(
        noice_13));
    DFC1B q_10 (.D(noice_9), .CLK(nDior_c), .CLR(nReset_c_4), .Q(
        noice_10));
    DFC1B q_1 (.D(noice_0), .CLK(nDior_c), .CLR(nReset_c_4), .Q(
        noice_1));
    DFC1B q_0 (.D(y_61), .CLK(nDior_c), .CLR(nReset_c_4), .Q(noice_0));
    GND GND (.Y(GNDZ0));
    DFC1B q_9 (.D(noice_8), .CLK(nDior_c), .CLR(nReset_c_4), .Q(
        noice_9));
    DFC1B q_5 (.D(noice_4), .CLK(nDior_c), .CLR(nReset_c_4), .Q(
        noice_5));
    DFC1B q_6 (.D(noice_5), .CLK(nDior_c), .CLR(nReset_c_4), .Q(
        noice_6));
    DFC1B q_15 (.D(noice_14), .CLK(nDior_c), .CLR(nReset_c_5), .Q(
        noice_15));
    CM8 un5_mt (.D0(un5_mt_cm8iZ0), .D1(noice_2), .D2(noice_2), .D3(
        un5_mt_cm8iZ0), .S00(y_9), .S01(VCCZ0), .S10(noice_4), .S11(
        GNDZ0), .Y(y_61));
    DFC1B q_14 (.D(noice_13), .CLK(nDior_c), .CLR(nReset_c_5), .Q(
        noice_14));
    DFC1B q_2 (.D(noice_1), .CLK(nDior_c), .CLR(nReset_c_4), .Q(
        noice_2));
    DFC1B q_4 (.D(noice_3), .CLK(nDior_c), .CLR(nReset_c_4), .Q(
        noice_4));
    VCC VCC (.Y(VCCZ0));
    
endmodule


module myDFFE2(da_c, dd_in_4, dd_in_3, dd_in_1, dd_in_6, dd_in_5, 
        dd_in_0, key0, nReset_c_3, nDiow_c, bDevice, y_11, cmd6N_0, 
        y_29);
input  [1:0] da_c;
input  dd_in_4, dd_in_3, dd_in_1, dd_in_6, dd_in_5, dd_in_0;
output  key0;
input  nReset_c_3, nDiow_c, bDevice, y_11, cmd6N_0, y_29;

    wire y_3, mt_6_7, y_58, VCCZ0;
    
    VCC VCC (.Y(VCCZ0));
    DFE3C q (.D(mt_6_7), .CLK(nDiow_c), .CLR(nReset_c_3), .E(y_58), .Q(
        key0));
    AND4A mt_6_7_0_and2 (.A(dd_in_3), .B(dd_in_4), .C(y_3), .D(y_29), 
        .Y(mt_6_7));
    AND4C mt_6_7_0_and2_509 (.A(dd_in_0), .B(dd_in_5), .C(dd_in_6), .D(
        dd_in_1), .Y(y_3));
    CM8 un1_enaA_0 (.D0(cmd6N_0), .D1(da_c[1]), .D2(cmd6N_0), .D3(
        VCCZ0), .S00(y_11), .S01(cmd6N_0), .S10(bDevice), .S11(da_c[0])
        , .Y(y_58));
    
endmodule


module myFRONTEXTRACTOR_4(\P_c[11] , nDior_c_i, nReset_c_1, clk_c, 
        nDior_c_i_0, riseA_n);
input  \P_c[11] , nDior_c_i, nReset_c_1, clk_c, nDior_c_i_0;
output  riseA_n;

    wire riseZ0Z_1, riseZ0Z_0;
    
    DFE3C rise_1 (.D(riseZ0Z_0), .CLK(clk_c), .CLR(nReset_c_1), .E(
        nDior_c_i_0), .Q(riseZ0Z_1));
    DFE3C rise_0 (.D(\P_c[11] ), .CLK(clk_c), .CLR(nReset_c_1), .E(
        nDior_c_i), .Q(riseZ0Z_0));
    XNOR2 out_n (.A(riseZ0Z_0), .B(riseZ0Z_1), .Y(riseA_n));
    
endmodule


module myFRONTEXTRACTOR_5(rise, \P_c[12] , nReset_c_1, nReset_c_2, 
        clk_c, nDior_c_i);
output  [1:0] rise;
input  \P_c[12] , nReset_c_1, nReset_c_2, clk_c, nDior_c_i;

    
    DFE3C riseZ0Z_1 (.D(rise[0]), .CLK(clk_c), .CLR(nReset_c_2), .E(
        nDior_c_i), .Q(rise[1]));
    DFE3C riseZ0Z_0 (.D(\P_c[12] ), .CLK(clk_c), .CLR(nReset_c_1), .E(
        nDior_c_i), .Q(rise[0]));
    
endmodule


module myREVCOUNTER_2(ballCnt2q, cnt_6_0, cnt_6_1, cnt_6_4, 
        \ballCnt2q_i[0] , y_20, s4i, s5i, nReset_c_2, clk_c, y_22);
output  [6:0] ballCnt2q;
input  cnt_6_0, cnt_6_1, cnt_6_4;
output  \ballCnt2q_i[0] ;
input  y_20, s4i, s5i, nReset_c_2, clk_c, y_22;

    wire VCCZ0, GNDZ0;
    
    DFE3C q_5 (.D(s5i), .CLK(clk_c), .CLR(nReset_c_2), .E(y_22), .Q(
        ballCnt2q[5]));
    DFE3C q_4 (.D(s4i), .CLK(clk_c), .CLR(nReset_c_2), .E(y_22), .Q(
        ballCnt2q[4]));
    CM8 ballCnt2q_iZ0Z_0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(
        GNDZ0), .S00(ballCnt2q[0]), .S01(VCCZ0), .S10(GNDZ0), .S11(
        GNDZ0), .Y(\ballCnt2q_i[0] ));
    VCC VCC (.Y(VCCZ0));
    DFE3C q_3 (.D(cnt_6_1), .CLK(clk_c), .CLR(nReset_c_2), .E(y_22), 
        .Q(ballCnt2q[3]));
    DFE3C q_6 (.D(cnt_6_4), .CLK(clk_c), .CLR(nReset_c_2), .E(y_22), 
        .Q(ballCnt2q[6]));
    DFE3C q_1 (.D(y_20), .CLK(clk_c), .CLR(nReset_c_2), .E(y_22), .Q(
        ballCnt2q[1]));
    DFE3C q_0 (.D(\ballCnt2q_i[0] ), .CLK(clk_c), .CLR(nReset_c_2), .E(
        y_22), .Q(ballCnt2q[0]));
    GND GND (.Y(GNDZ0));
    DFE3C q_2 (.D(cnt_6_0), .CLK(clk_c), .CLR(nReset_c_2), .E(y_22), 
        .Q(ballCnt2q[2]));
    
endmodule


module QUAD_COUNTER_2(P_c, \ballCnt2q_i[0] , ballCnt2q_1, ballCnt2q_6, 
        ballCnt2q_2, ballCnt2q_3, ballCnt2q_4, ballCnt2q_5, nReset_c_2, 
        nDior_c_i_0, clk_c, nReset_c_1, nDior_c_i, nDior_c);
input  [12:11] P_c;
output  \ballCnt2q_i[0] , ballCnt2q_1, ballCnt2q_6, ballCnt2q_2, 
        ballCnt2q_3, ballCnt2q_4, ballCnt2q_5;
input  nReset_c_2, nDior_c_i_0, clk_c, nReset_c_1, nDior_c_i, nDior_c;

    wire axb0m, y_23, axb5mi, fadd6_nc_5t0_c, c6_0, axb4mi, c5, c4_0, 
        axb3m, axb2m, c4, y_21, c2, c3, riseA_n, rise_0, rise_1, 
        cnt_6_2, cnt_6_3, cnt_6_6, ballCnt2q_0, y_20, s4i, s5i, y_22, 
        GNDZ0, VCCZ0, G_60_cm8iZ0, ena_i_0_cm8iZ0;
    
    CM8 fadd6_nc_5t0_c4 (.D0(c4_0), .D1(c2), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(axb3m), .S01(axb2m), .S10(GNDZ0), .S11(GNDZ0), .Y(c4));
    MAJ3 fadd6_nc_5t0_c3 (.A(ballCnt2q_2), .B(y_21), .C(c2), .Y(c3));
    CY2A fadd6_nc_5t0_c2 (.A0(ballCnt2q_0), .A1(ballCnt2q_1), .B0(
        VCCZ0), .B1(y_21), .Y(c2));
    CM8INV ena_i_0_cm8i (.A(nDior_c), .Y(ena_i_0_cm8iZ0));
    myFRONTEXTRACTOR_4 ifrontsExtractorA (.\P_c[11] (P_c[11]), 
        .nDior_c_i(nDior_c_i), .nReset_c_1(nReset_c_1), .clk_c(clk_c), 
        .nDior_c_i_0(nDior_c_i_0), .riseA_n(riseA_n));
    GND GND (.Y(GNDZ0));
    CM8 fadd6_nc_5t0_c5 (.D0(c4_0), .D1(c2), .D2(ballCnt2q_4), .D3(
        y_21), .S00(axb3m), .S01(axb2m), .S10(axb4mi), .S11(GNDZ0), .Y(
        c5));
    XNOR2 G_66 (.A(y_21), .B(ballCnt2q_4), .Y(axb4mi));
    myFRONTEXTRACTOR_5 ifrontsExtractorB (.rise({rise_1, rise_0}), 
        .\P_c[12] (P_c[12]), .nReset_c_1(nReset_c_1), .nReset_c_2(
        nReset_c_2), .clk_c(clk_c), .nDior_c_i(nDior_c_i));
    XNOR2 G_67 (.A(y_21), .B(ballCnt2q_5), .Y(axb5mi));
    XOR2 fadd1_6t6_s0 (.A(fadd6_nc_5t0_c), .B(axb0m), .Y(cnt_6_6));
    CM8 G_62 (.D0(ballCnt2q_0), .D1(\ballCnt2q_i[0] ), .D2(
        \ballCnt2q_i[0] ), .D3(ballCnt2q_0), .S00(y_21), .S01(VCCZ0), 
        .S10(ballCnt2q_1), .S11(GNDZ0), .Y(y_20));
    XOR2 fadd6_nc_5t0_s3 (.A(c3), .B(axb3m), .Y(cnt_6_3));
    XOR2 G_63 (.A(y_21), .B(ballCnt2q_6), .Y(axb0m));
    CM8 G_60 (.D0(G_60_cm8iZ0), .D1(riseA_n), .D2(rise_1), .D3(riseA_n)
        , .S00(y_23), .S01(VCCZ0), .S10(rise_0), .S11(GNDZ0), .Y(y_21));
    XOR2 fadd6_nc_5t0_s2 (.A(c2), .B(axb2m), .Y(cnt_6_2));
    XNOR2 fadd6_nc_5t0_s4i (.A(c4), .B(axb4mi), .Y(s4i));
    CY2A fadd6_nc_5t0_c6_0 (.A0(ballCnt2q_4), .A1(ballCnt2q_5), .B0(
        y_21), .B1(y_21), .Y(c6_0));
    XOR2 G_23 (.A(P_c[12]), .B(P_c[11]), .Y(y_23));
    CM8 fadd6_nc_5t0_cout (.D0(c4_0), .D1(c2), .D2(c6_0), .D3(c6_0), 
        .S00(axb3m), .S01(axb2m), .S10(axb5mi), .S11(axb4mi), .Y(
        fadd6_nc_5t0_c));
    XNOR2 fadd6_nc_5t0_s5i (.A(c5), .B(axb5mi), .Y(s5i));
    VCC VCC (.Y(VCCZ0));
    XOR2 G_65 (.A(y_21), .B(ballCnt2q_3), .Y(axb3m));
    CM8 ena_i_0 (.D0(riseA_n), .D1(GNDZ0), .D2(ena_i_0_cm8iZ0), .D3(
        VCCZ0), .S00(rise_0), .S01(riseA_n), .S10(rise_1), .S11(
        ena_i_0_cm8iZ0), .Y(y_22));
    XOR2 G_64 (.A(y_21), .B(ballCnt2q_2), .Y(axb2m));
    CM8INV G_60_cm8i (.A(rise_1), .Y(G_60_cm8iZ0));
    myREVCOUNTER_2 irevCounter (.ballCnt2q({ballCnt2q_6, ballCnt2q_5, 
        ballCnt2q_4, ballCnt2q_3, ballCnt2q_2, ballCnt2q_1, 
        ballCnt2q_0}), .cnt_6_0(cnt_6_2), .cnt_6_1(cnt_6_3), .cnt_6_4(
        cnt_6_6), .\ballCnt2q_i[0] (\ballCnt2q_i[0] ), .y_20(y_20), 
        .s4i(s4i), .s5i(s5i), .nReset_c_2(nReset_c_2), .clk_c(clk_c), 
        .y_22(y_22));
    CY2A fadd6_nc_5t0_c4_0 (.A0(ballCnt2q_2), .A1(ballCnt2q_3), .B0(
        y_21), .B1(y_21), .Y(c4_0));
    
endmodule


module myFRONTEXTRACTOR_6(\P_c[13] , nReset_c_2, clk_c, nDior_c_i, 
        riseA_n);
input  \P_c[13] , nReset_c_2, clk_c, nDior_c_i;
output  riseA_n;

    wire riseZ0Z_1, riseZ0Z_0;
    
    DFE3C rise_1 (.D(riseZ0Z_0), .CLK(clk_c), .CLR(nReset_c_2), .E(
        nDior_c_i), .Q(riseZ0Z_1));
    DFE3C rise_0 (.D(\P_c[13] ), .CLK(clk_c), .CLR(nReset_c_2), .E(
        nDior_c_i), .Q(riseZ0Z_0));
    XNOR2 out_n (.A(riseZ0Z_0), .B(riseZ0Z_1), .Y(riseA_n));
    
endmodule


module myFRONTEXTRACTOR_7(rise, \P_c[14] , nReset_c_2, clk_c, 
        nDior_c_i);
output  [1:0] rise;
input  \P_c[14] , nReset_c_2, clk_c, nDior_c_i;

    
    DFE3C riseZ0Z_1 (.D(rise[0]), .CLK(clk_c), .CLR(nReset_c_2), .E(
        nDior_c_i), .Q(rise[1]));
    DFE3C riseZ0Z_0 (.D(\P_c[14] ), .CLK(clk_c), .CLR(nReset_c_2), .E(
        nDior_c_i), .Q(rise[0]));
    
endmodule


module myREVCOUNTER_3(ballCnt3q, cnt_6_0, cnt_6_1, cnt_6_4, 
        \ballCnt3q_i[0] , nReset_c_2, y_24, s4i, s5i, nReset_c_3, 
        clk_c, y_26);
output  [6:0] ballCnt3q;
input  cnt_6_0, cnt_6_1, cnt_6_4;
output  \ballCnt3q_i[0] ;
input  nReset_c_2, y_24, s4i, s5i, nReset_c_3, clk_c, y_26;

    wire VCCZ0, GNDZ0;
    
    DFE3C q_5 (.D(s5i), .CLK(clk_c), .CLR(nReset_c_3), .E(y_26), .Q(
        ballCnt3q[5]));
    DFE3C q_4 (.D(s4i), .CLK(clk_c), .CLR(nReset_c_3), .E(y_26), .Q(
        ballCnt3q[4]));
    CM8 ballCnt3q_iZ0Z_0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(
        GNDZ0), .S00(ballCnt3q[0]), .S01(VCCZ0), .S10(GNDZ0), .S11(
        GNDZ0), .Y(\ballCnt3q_i[0] ));
    VCC VCC (.Y(VCCZ0));
    DFE3C q_3 (.D(cnt_6_1), .CLK(clk_c), .CLR(nReset_c_3), .E(y_26), 
        .Q(ballCnt3q[3]));
    DFE3C q_6 (.D(cnt_6_4), .CLK(clk_c), .CLR(nReset_c_3), .E(y_26), 
        .Q(ballCnt3q[6]));
    DFE3C q_1 (.D(y_24), .CLK(clk_c), .CLR(nReset_c_3), .E(y_26), .Q(
        ballCnt3q[1]));
    DFE3C q_0 (.D(\ballCnt3q_i[0] ), .CLK(clk_c), .CLR(nReset_c_2), .E(
        y_26), .Q(ballCnt3q[0]));
    GND GND (.Y(GNDZ0));
    DFE3C q_2 (.D(cnt_6_0), .CLK(clk_c), .CLR(nReset_c_3), .E(y_26), 
        .Q(ballCnt3q[2]));
    
endmodule


module QUAD_COUNTER_3(P_c, \ballCnt3q_i[0] , ballCnt3q_1, ballCnt3q_6, 
        ballCnt3q_2, ballCnt3q_3, ballCnt3q_4, ballCnt3q_5, nReset_c_3, 
        nDior_c_i, clk_c, nReset_c_2, nDior_c);
input  [14:13] P_c;
output  \ballCnt3q_i[0] , ballCnt3q_1, ballCnt3q_6, ballCnt3q_2, 
        ballCnt3q_3, ballCnt3q_4, ballCnt3q_5;
input  nReset_c_3, nDior_c_i, clk_c, nReset_c_2, nDior_c;

    wire axb0m, y_27, axb5mi, fadd6_nc_5t0_c, c6_0, axb4mi, c5, c4_0, 
        axb3m, axb2m, c4, y_25, c2, c3, riseA_n, rise_0, rise_1, 
        cnt_6_2, cnt_6_3, cnt_6_6, ballCnt3q_0, y_24, s4i, s5i, y_26, 
        GNDZ0, VCCZ0, G_60_cm8iZ0, ena_i_0_cm8iZ0;
    
    CM8 fadd6_nc_5t0_c4 (.D0(c4_0), .D1(c2), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(axb3m), .S01(axb2m), .S10(GNDZ0), .S11(GNDZ0), .Y(c4));
    MAJ3 fadd6_nc_5t0_c3 (.A(ballCnt3q_2), .B(y_25), .C(c2), .Y(c3));
    CY2A fadd6_nc_5t0_c2 (.A0(ballCnt3q_0), .A1(ballCnt3q_1), .B0(
        VCCZ0), .B1(y_25), .Y(c2));
    CM8INV ena_i_0_cm8i (.A(nDior_c), .Y(ena_i_0_cm8iZ0));
    myFRONTEXTRACTOR_6 ifrontsExtractorA (.\P_c[13] (P_c[13]), 
        .nReset_c_2(nReset_c_2), .clk_c(clk_c), .nDior_c_i(nDior_c_i), 
        .riseA_n(riseA_n));
    GND GND (.Y(GNDZ0));
    CM8 fadd6_nc_5t0_c5 (.D0(c4_0), .D1(c2), .D2(ballCnt3q_4), .D3(
        y_25), .S00(axb3m), .S01(axb2m), .S10(axb4mi), .S11(GNDZ0), .Y(
        c5));
    XNOR2 G_66 (.A(y_25), .B(ballCnt3q_4), .Y(axb4mi));
    myFRONTEXTRACTOR_7 ifrontsExtractorB (.rise({rise_1, rise_0}), 
        .\P_c[14] (P_c[14]), .nReset_c_2(nReset_c_2), .clk_c(clk_c), 
        .nDior_c_i(nDior_c_i));
    XNOR2 G_67 (.A(y_25), .B(ballCnt3q_5), .Y(axb5mi));
    XOR2 fadd1_6t6_s0 (.A(fadd6_nc_5t0_c), .B(axb0m), .Y(cnt_6_6));
    CM8 G_62 (.D0(ballCnt3q_0), .D1(\ballCnt3q_i[0] ), .D2(
        \ballCnt3q_i[0] ), .D3(ballCnt3q_0), .S00(y_25), .S01(VCCZ0), 
        .S10(ballCnt3q_1), .S11(GNDZ0), .Y(y_24));
    XOR2 fadd6_nc_5t0_s3 (.A(c3), .B(axb3m), .Y(cnt_6_3));
    XOR2 G_63 (.A(y_25), .B(ballCnt3q_6), .Y(axb0m));
    CM8 G_60 (.D0(G_60_cm8iZ0), .D1(riseA_n), .D2(rise_1), .D3(riseA_n)
        , .S00(y_27), .S01(VCCZ0), .S10(rise_0), .S11(GNDZ0), .Y(y_25));
    XOR2 fadd6_nc_5t0_s2 (.A(c2), .B(axb2m), .Y(cnt_6_2));
    XNOR2 fadd6_nc_5t0_s4i (.A(c4), .B(axb4mi), .Y(s4i));
    CY2A fadd6_nc_5t0_c6_0 (.A0(ballCnt3q_4), .A1(ballCnt3q_5), .B0(
        y_25), .B1(y_25), .Y(c6_0));
    XOR2 G_23 (.A(P_c[14]), .B(P_c[13]), .Y(y_27));
    CM8 fadd6_nc_5t0_cout (.D0(c4_0), .D1(c2), .D2(c6_0), .D3(c6_0), 
        .S00(axb3m), .S01(axb2m), .S10(axb5mi), .S11(axb4mi), .Y(
        fadd6_nc_5t0_c));
    XNOR2 fadd6_nc_5t0_s5i (.A(c5), .B(axb5mi), .Y(s5i));
    VCC VCC (.Y(VCCZ0));
    XOR2 G_65 (.A(y_25), .B(ballCnt3q_3), .Y(axb3m));
    CM8 ena_i_0 (.D0(riseA_n), .D1(GNDZ0), .D2(ena_i_0_cm8iZ0), .D3(
        VCCZ0), .S00(rise_0), .S01(riseA_n), .S10(rise_1), .S11(
        ena_i_0_cm8iZ0), .Y(y_26));
    XOR2 G_64 (.A(y_25), .B(ballCnt3q_2), .Y(axb2m));
    CM8INV G_60_cm8i (.A(rise_1), .Y(G_60_cm8iZ0));
    myREVCOUNTER_3 irevCounter (.ballCnt3q({ballCnt3q_6, ballCnt3q_5, 
        ballCnt3q_4, ballCnt3q_3, ballCnt3q_2, ballCnt3q_1, 
        ballCnt3q_0}), .cnt_6_0(cnt_6_2), .cnt_6_1(cnt_6_3), .cnt_6_4(
        cnt_6_6), .\ballCnt3q_i[0] (\ballCnt3q_i[0] ), .nReset_c_2(
        nReset_c_2), .y_24(y_24), .s4i(s4i), .s5i(s5i), .nReset_c_3(
        nReset_c_3), .clk_c(clk_c), .y_26(y_26));
    CY2A fadd6_nc_5t0_c4_0 (.A0(ballCnt3q_2), .A1(ballCnt3q_3), .B0(
        y_25), .B1(y_25), .Y(c4_0));
    
endmodule


module myDFFE2_2(da_c, dd_in, key2, nReset_c_4, nDiow_c, bDevice, y_10, 
        cmd6N_0);
input  [1:0] da_c;
input  [7:0] dd_in;
output  key2;
input  nReset_c_4, nDiow_c, bDevice, y_10, cmd6N_0;

    wire y_2, mt_6_7, y_60, GNDZ0, un1_enaA_0_cm8iZ0;
    
    AND4A mt_6_7_0_and2_512 (.A(dd_in[3]), .B(dd_in[0]), .C(dd_in[5]), 
        .D(dd_in[1]), .Y(y_2));
    CM8INV un1_enaA_0_cm8i (.A(da_c[0]), .Y(un1_enaA_0_cm8iZ0));
    DFE3C q (.D(mt_6_7), .CLK(nDiow_c), .CLR(nReset_c_4), .E(y_60), .Q(
        key2));
    CM8 mt_6_7_0_and2 (.D0(GNDZ0), .D1(y_2), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(dd_in[6]), .S01(dd_in[4]), .S10(dd_in[7]), .S11(dd_in[2]), 
        .Y(mt_6_7));
    GND GND (.Y(GNDZ0));
    CM8 un1_enaA_0 (.D0(cmd6N_0), .D1(GNDZ0), .D2(cmd6N_0), .D3(
        cmd6N_0), .S00(da_c[1]), .S01(y_10), .S10(bDevice), .S11(
        un1_enaA_0_cm8iZ0), .Y(y_60));
    
endmodule


module myFRONTEXTRACTOR(\P_c[1] , nReset_c_0, clk_c, nDior_c_i_0, 
        riseA_n);
input  \P_c[1] , nReset_c_0, clk_c, nDior_c_i_0;
output  riseA_n;

    wire riseZ0Z_1, riseZ0Z_0;
    
    DFE3C rise_1 (.D(riseZ0Z_0), .CLK(clk_c), .CLR(nReset_c_0), .E(
        nDior_c_i_0), .Q(riseZ0Z_1));
    DFE3C rise_0 (.D(\P_c[1] ), .CLK(clk_c), .CLR(nReset_c_0), .E(
        nDior_c_i_0), .Q(riseZ0Z_0));
    XNOR2 out_n (.A(riseZ0Z_0), .B(riseZ0Z_1), .Y(riseA_n));
    
endmodule


module myFRONTEXTRACTOR_1(rise, \P_c[2] , nReset_c_0, clk_c, 
        nDior_c_i_0);
output  [1:0] rise;
input  \P_c[2] , nReset_c_0, clk_c, nDior_c_i_0;

    
    DFE3C riseZ0Z_1 (.D(rise[0]), .CLK(clk_c), .CLR(nReset_c_0), .E(
        nDior_c_i_0), .Q(rise[1]));
    DFE3C riseZ0Z_0 (.D(\P_c[2] ), .CLK(clk_c), .CLR(nReset_c_0), .E(
        nDior_c_i_0), .Q(rise[0]));
    
endmodule


module myREVCOUNTER(ballCnt0q, cnt_6_0, cnt_6_1, cnt_6_4, 
        \ballCnt0q_i[0] , y_12, s4i, s5i, nReset_c_0, clk_c, y_14);
output  [6:0] ballCnt0q;
input  cnt_6_0, cnt_6_1, cnt_6_4;
output  \ballCnt0q_i[0] ;
input  y_12, s4i, s5i, nReset_c_0, clk_c, y_14;

    wire VCCZ0, GNDZ0;
    
    DFE3C q_5 (.D(s5i), .CLK(clk_c), .CLR(nReset_c_0), .E(y_14), .Q(
        ballCnt0q[5]));
    DFE3C q_4 (.D(s4i), .CLK(clk_c), .CLR(nReset_c_0), .E(y_14), .Q(
        ballCnt0q[4]));
    VCC VCC (.Y(VCCZ0));
    DFE3C q_3 (.D(cnt_6_1), .CLK(clk_c), .CLR(nReset_c_0), .E(y_14), 
        .Q(ballCnt0q[3]));
    DFE3C q_6 (.D(cnt_6_4), .CLK(clk_c), .CLR(nReset_c_0), .E(y_14), 
        .Q(ballCnt0q[6]));
    DFE3C q_1 (.D(y_12), .CLK(clk_c), .CLR(nReset_c_0), .E(y_14), .Q(
        ballCnt0q[1]));
    DFE3C q_0 (.D(\ballCnt0q_i[0] ), .CLK(clk_c), .CLR(nReset_c_0), .E(
        y_14), .Q(ballCnt0q[0]));
    GND GND (.Y(GNDZ0));
    CM8 ballCnt0q_iZ0Z_0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(
        GNDZ0), .S00(ballCnt0q[0]), .S01(VCCZ0), .S10(GNDZ0), .S11(
        GNDZ0), .Y(\ballCnt0q_i[0] ));
    DFE3C q_2 (.D(cnt_6_0), .CLK(clk_c), .CLR(nReset_c_0), .E(y_14), 
        .Q(ballCnt0q[2]));
    
endmodule


module QUAD_COUNTER(P_c, ballCnt0q, nDior_c_i_0, clk_c, nReset_c_0, 
        nDior_c);
input  [2:1] P_c;
output  [6:0] ballCnt0q;
input  nDior_c_i_0, clk_c, nReset_c_0, nDior_c;

    wire axb0m, y_15, axb5mi, fadd6_nc_5t0_c, c6_0, axb4mi, c5, c4_0, 
        axb3m, axb2m, c4, y_13, c2, c3, riseA_n, rise_0, rise_1, 
        cnt_6_2, cnt_6_3, cnt_6_6, ballCnt0q_i_0, y_12, s4i, s5i, y_14, 
        GNDZ0, VCCZ0, G_60_cm8iZ0, ena_i_0_cm8iZ0;
    
    CM8 fadd6_nc_5t0_c4 (.D0(c4_0), .D1(c2), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(axb3m), .S01(axb2m), .S10(GNDZ0), .S11(GNDZ0), .Y(c4));
    MAJ3 fadd6_nc_5t0_c3 (.A(ballCnt0q[2]), .B(y_13), .C(c2), .Y(c3));
    CY2A fadd6_nc_5t0_c2 (.A0(ballCnt0q[0]), .A1(ballCnt0q[1]), .B0(
        VCCZ0), .B1(y_13), .Y(c2));
    CM8INV ena_i_0_cm8i (.A(nDior_c), .Y(ena_i_0_cm8iZ0));
    myFRONTEXTRACTOR ifrontsExtractorA (.\P_c[1] (P_c[1]), .nReset_c_0(
        nReset_c_0), .clk_c(clk_c), .nDior_c_i_0(nDior_c_i_0), 
        .riseA_n(riseA_n));
    GND GND (.Y(GNDZ0));
    CM8 fadd6_nc_5t0_c5 (.D0(c4_0), .D1(c2), .D2(ballCnt0q[4]), .D3(
        y_13), .S00(axb3m), .S01(axb2m), .S10(axb4mi), .S11(GNDZ0), .Y(
        c5));
    XNOR2 G_66 (.A(y_13), .B(ballCnt0q[4]), .Y(axb4mi));
    myFRONTEXTRACTOR_1 ifrontsExtractorB (.rise({rise_1, rise_0}), 
        .\P_c[2] (P_c[2]), .nReset_c_0(nReset_c_0), .clk_c(clk_c), 
        .nDior_c_i_0(nDior_c_i_0));
    XNOR2 G_67 (.A(y_13), .B(ballCnt0q[5]), .Y(axb5mi));
    XOR2 fadd1_6t6_s0 (.A(fadd6_nc_5t0_c), .B(axb0m), .Y(cnt_6_6));
    CM8 G_62 (.D0(ballCnt0q[0]), .D1(ballCnt0q_i_0), .D2(ballCnt0q_i_0)
        , .D3(ballCnt0q[0]), .S00(y_13), .S01(VCCZ0), .S10(
        ballCnt0q[1]), .S11(GNDZ0), .Y(y_12));
    XOR2 fadd6_nc_5t0_s3 (.A(c3), .B(axb3m), .Y(cnt_6_3));
    XOR2 G_63 (.A(y_13), .B(ballCnt0q[6]), .Y(axb0m));
    CM8 G_60 (.D0(G_60_cm8iZ0), .D1(riseA_n), .D2(rise_1), .D3(riseA_n)
        , .S00(y_15), .S01(VCCZ0), .S10(rise_0), .S11(GNDZ0), .Y(y_13));
    XOR2 fadd6_nc_5t0_s2 (.A(c2), .B(axb2m), .Y(cnt_6_2));
    XNOR2 fadd6_nc_5t0_s4i (.A(c4), .B(axb4mi), .Y(s4i));
    CY2A fadd6_nc_5t0_c6_0 (.A0(ballCnt0q[4]), .A1(ballCnt0q[5]), .B0(
        y_13), .B1(y_13), .Y(c6_0));
    XOR2 G_23 (.A(P_c[2]), .B(P_c[1]), .Y(y_15));
    CM8 fadd6_nc_5t0_cout (.D0(c4_0), .D1(c2), .D2(c6_0), .D3(c6_0), 
        .S00(axb3m), .S01(axb2m), .S10(axb5mi), .S11(axb4mi), .Y(
        fadd6_nc_5t0_c));
    XNOR2 fadd6_nc_5t0_s5i (.A(c5), .B(axb5mi), .Y(s5i));
    VCC VCC (.Y(VCCZ0));
    XOR2 G_65 (.A(y_13), .B(ballCnt0q[3]), .Y(axb3m));
    CM8 ena_i_0 (.D0(riseA_n), .D1(GNDZ0), .D2(ena_i_0_cm8iZ0), .D3(
        VCCZ0), .S00(rise_0), .S01(riseA_n), .S10(rise_1), .S11(
        ena_i_0_cm8iZ0), .Y(y_14));
    XOR2 G_64 (.A(y_13), .B(ballCnt0q[2]), .Y(axb2m));
    CM8INV G_60_cm8i (.A(rise_1), .Y(G_60_cm8iZ0));
    myREVCOUNTER irevCounter (.ballCnt0q({ballCnt0q[6], ballCnt0q[5], 
        ballCnt0q[4], ballCnt0q[3], ballCnt0q[2], ballCnt0q[1], 
        ballCnt0q[0]}), .cnt_6_0(cnt_6_2), .cnt_6_1(cnt_6_3), .cnt_6_4(
        cnt_6_6), .\ballCnt0q_i[0] (ballCnt0q_i_0), .y_12(y_12), .s4i(
        s4i), .s5i(s5i), .nReset_c_0(nReset_c_0), .clk_c(clk_c), .y_14(
        y_14));
    CY2A fadd6_nc_5t0_c4_0 (.A0(ballCnt0q[2]), .A1(ballCnt0q[3]), .B0(
        y_13), .B1(y_13), .Y(c4_0));
    
endmodule


module myDFFE(\dd_in[4] , bDevice, nReset_c_3, nDiow_c, csDevReg);
input  \dd_in[4] ;
output  bDevice;
input  nReset_c_3, nDiow_c, csDevReg;

    
    DFE3C q (.D(\dd_in[4] ), .CLK(nDiow_c), .CLR(nReset_c_3), .E(
        csDevReg), .Q(bDevice));
    
endmodule


module my4COUNTER(bCounter, bCounter_0, \bCounter_i[0] , y_62, nDior_c, 
        csDataReg, y_28);
output  [3:0] bCounter;
output  [3:1] bCounter_0;
output  \bCounter_i[0] ;
input  y_62, nDior_c, csDataReg, y_28;

    wire q_n2, q_n3, VCCZ0, GNDZ0, q_n2_0_xor2_0_xor2_cm8iZ0;
    
    CM8 q_n3_0_xor2_0_xor2 (.D0(GNDZ0), .D1(bCounter[0]), .D2(VCCZ0), 
        .D3(\bCounter_i[0] ), .S00(bCounter[1]), .S01(bCounter[2]), 
        .S10(bCounter[3]), .S11(GNDZ0), .Y(q_n3));
    DFE3C q_0_2 (.D(q_n2), .CLK(nDior_c), .CLR(y_62), .E(csDataReg), 
        .Q(bCounter_0[2]));
    CM8 bCounter_iZ0Z_0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0)
        , .S00(bCounter[0]), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        \bCounter_i[0] ));
    CM8 q_n2_0_xor2_0_xor2 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(
        VCCZ0), .S00(bCounter[2]), .S01(VCCZ0), .S10(
        q_n2_0_xor2_0_xor2_cm8iZ0), .S11(\bCounter_i[0] ), .Y(q_n2));
    DFE3C q_0_1 (.D(y_28), .CLK(nDior_c), .CLR(y_62), .E(csDataReg), 
        .Q(bCounter_0[1]));
    DFE3C q_0 (.D(\bCounter_i[0] ), .CLK(nDior_c), .CLR(y_62), .E(
        csDataReg), .Q(bCounter[0]));
    GND GND (.Y(GNDZ0));
    VCC VCC (.Y(VCCZ0));
    DFE3C q_3 (.D(q_n3), .CLK(nDior_c), .CLR(y_62), .E(csDataReg), .Q(
        bCounter[3]));
    CM8INV q_n2_0_xor2_0_xor2_cm8i (.A(bCounter[1]), .Y(
        q_n2_0_xor2_0_xor2_cm8iZ0));
    DFE3C q_0_3 (.D(q_n3), .CLK(nDior_c), .CLR(y_62), .E(csDataReg), 
        .Q(bCounter_0[3]));
    DFE3C q_1 (.D(y_28), .CLK(nDior_c), .CLR(y_62), .E(csDataReg), .Q(
        bCounter[1]));
    DFE3C q_2 (.D(q_n2), .CLK(nDior_c), .CLR(y_62), .E(csDataReg), .Q(
        bCounter[2]));
    
endmodule


module jamma(da, dd, CoinCounter, CoinLockout, P, clk, nReset, nDiow, 
        nDior, nCS0, nCS1, iordy);
input  [2:0] da;
inout  [7:0] dd;
output  [2:1] CoinCounter;
output  [2:1] CoinLockout;
input  [28:0] P;
input  clk, nReset, nDiow, nDior, nCS0, nCS1;
output  iordy;

    wire bDevice, csDevReg, key0, key1, key2, bCounter_1, bCounter_2, 
        bCounter_3, noice_0, noice_1, noice_15, count_1, count_2, 
        count_3, count_4, count_5, count_6, count_7, count_8, count_9, 
        count_10, count_11, count_12, count_13, count_14, count_15, 
        ballCnt0q_0, ballCnt0q_1, ballCnt0q_2, ballCnt0q_3, 
        ballCnt0q_4, ballCnt0q_5, ballCnt0q_6, ballCnt1q_0, 
        ballCnt1q_1, ballCnt1q_2, ballCnt1q_3, ballCnt1q_4, 
        ballCnt1q_5, ballCnt1q_6, ballCnt2q_1, ballCnt2q_2, 
        ballCnt2q_3, ballCnt2q_4, ballCnt2q_5, ballCnt2q_6, 
        ballCnt3q_1, ballCnt3q_2, ballCnt3q_3, ballCnt3q_4, 
        ballCnt3q_5, ballCnt3q_6, dataInput_0, dataInput_1, 
        dataInput_2, dataInput_3, dataInput_4, readZ0, csDataReg, 
        bCounter_0, word, GNDZ0, VCCZ0, acces, cmd5N, cmd6N, 
        dataInput_5, dataInput_6, cookie_bit, N_501, N_502, N_549, 
        N_611, N_14, clk_c, nReset_c, da_c_0, da_c_1, da_c_2, nDiow_c, 
        nCS0_c, nCS1_c, dd_in_0, dd_in_1, dd_in_2, dd_in_3, dd_in_4, 
        dd_in_5, dd_in_6, dd_in_7, CoinCounter_c_1, CoinCounter_c_2, 
        CoinLockout_c_1, CoinLockout_c_2, P_c_0, P_c_1, P_c_2, P_c_3, 
        P_c_4, P_c_5, P_c_6, P_c_7, P_c_8, P_c_9, P_c_10, P_c_11, 
        P_c_12, P_c_13, P_c_14, P_c_15, P_c_16, P_c_17, P_c_18, P_c_19, 
        P_c_20, P_c_21, P_c_22, P_c_23, P_c_24, P_c_25, P_c_26, P_c_27, 
        P_c_28, nDior_c, bCounter_i_0, ballCnt3q_i_0, nDior_c_iZ0, 
        ballCnt2q_i_0, N_511_n, N_510_n, N_509_n, nDior_c_iZ0Z_0, 
        N_14_0, cmd6N_0, bCounter_0_3, bCounter_0_2, bCounter_0_1, 
        nReset_c_0, nReset_c_1, nReset_c_2, nReset_c_3, nReset_c_4, 
        nReset_c_5, cmd6N_0_0, y, y_0, y_1, y_5, y_6, y_7, y_8, y_9, 
        y_10, y_11, y_28, y_29, y_55, y_56, y_57, y_62, G_361_cm8iZ0;
    
    INBUF da_pad_1 (.PAD(da[1]), .Y(da_c_1));
    INBUF P_pad_16 (.PAD(P[16]), .Y(P_c_16));
    CM8INV G_361_cm8i (.A(bCounter_3), .Y(G_361_cm8iZ0));
    BIBUF dd_pad_3 (.PAD(dd[3]), .D(dataInput_3), .E(readZ0), .Y(
        dd_in_3));
    INBUF P_pad_2 (.PAD(P[2]), .Y(P_c_2));
    AND4B un1_dd_1_0_and2_521 (.A(dd_in_5), .B(dd_in_7), .C(dd_in_4), 
        .D(dd_in_6), .Y(y_0));
    INBUF P_pad_13 (.PAD(P[13]), .Y(P_c_13));
    my4BREG idataReg (.CoinLockout_c({CoinLockout_c_2, CoinLockout_c_1})
        , .CoinCounter_c({CoinCounter_c_2, CoinCounter_c_1}), .dd_in({
        dd_in_3, dd_in_2, dd_in_1, dd_in_0}), .nReset_c_3(nReset_c_3), 
        .nDiow_c(nDiow_c), .cmd5N(cmd5N));
    INBUF P_pad_9 (.PAD(P[9]), .Y(P_c_9));
    INBUF P_pad_20 (.PAD(P[20]), .Y(P_c_20));
    BIBUF dd_pad_1 (.PAD(dd[1]), .D(dataInput_1), .E(readZ0), .Y(
        dd_in_1));
    BUFF nReset_pad_1 (.A(nReset_c), .Y(nReset_c_1));
    CM8 cookie_bit_0_mux2_0_mux2 (.D0(bCounter_0), .D1(noice_0), .D2(
        N_611), .D3(noice_0), .S00(N_549), .S01(VCCZ0), .S10(word), 
        .S11(bCounter_1), .Y(cookie_bit));
    VCC VCC (.Y(VCCZ0));
    INBUF P_pad_18 (.PAD(P[18]), .Y(P_c_18));
    CM8 G_361 (.D0(GNDZ0), .D1(GNDZ0), .D2(bCounter_1), .D3(GNDZ0), 
        .S00(bCounter_0), .S01(bCounter_2), .S10(G_361_cm8iZ0), .S11(
        bCounter_0), .Y(N_611));
    OR2A G_417 (.A(y_56), .B(y_57), .Y(N_501));
    INBUF P_pad_12 (.PAD(P[12]), .Y(P_c_12));
    OR4 G_465_500 (.A(count_6), .B(count_8), .C(count_5), .D(count_4), 
        .Y(y_6));
    INBUF P_pad_5 (.PAD(P[5]), .Y(P_c_5));
    INBUF P_pad_3 (.PAD(P[3]), .Y(P_c_3));
    INBUF P_pad_26 (.PAD(P[26]), .Y(P_c_26));
    INBUF P_pad_14 (.PAD(P[14]), .Y(P_c_14));
    AND3A G_425_n (.A(y_57), .B(count_5), .C(count_4), .Y(N_509_n));
    BIBUF dd_pad_4 (.PAD(dd[4]), .D(dataInput_4), .E(readZ0), .Y(
        dd_in_4));
    OUTBUF CoinLockout_pad_1 (.PAD(CoinLockout[1]), .D(CoinLockout_c_1)
        );
    OUTBUF CoinCounter_pad_2 (.PAD(CoinCounter[2]), .D(CoinCounter_c_2)
        );
    myDFFE2_1 ikey1 (.da_c({da_c_1, da_c_0}), .dd_in({dd_in_7, dd_in_6, 
        dd_in_5, dd_in_4, dd_in_3, dd_in_2, dd_in_1, dd_in_0}), .key1(
        key1), .nReset_c_3(nReset_c_3), .nDiow_c(nDiow_c), .bDevice(
        bDevice), .y_11(y_11), .cmd6N_0(cmd6N_0));
    XOR2 G_488 (.A(noice_1), .B(noice_15), .Y(y_9));
    INBUF P_pad_23 (.PAD(P[23]), .Y(P_c_23));
    TRIBUFF iordy_pad (.PAD(iordy), .D(VCCZ0), .E(acces));
    INBUF nCS0_pad (.PAD(nCS0), .Y(nCS0_c));
    dc idc (.da_c({da_c_2, da_c_1, da_c_0}), .csDevReg(csDevReg), 
        .y_11(y_11), .y_10(y_10), .nCS1_c(nCS1_c), .nCS0_c(nCS0_c), 
        .csDataReg(csDataReg), .acces(acces), .y_1(y_1), .bDevice(
        bDevice));
    my16COUNTER packetCounter (.count({count_15, count_14, count_13, 
        count_12, count_11, count_10, count_9, count_8, count_7, 
        count_6, count_5, count_4, count_3, count_2, count_1}), .y_56(
        y_56), .y_55(y_55), .nReset_c(nReset_c), .cmd6N(cmd6N), 
        .cmd6N_0_0(cmd6N_0_0), .nReset_c_5(nReset_c_5), .nDiow_c(
        nDiow_c), .cmd6N_0(cmd6N_0), .N_502(N_502), .N_501(N_501), 
        .N_14(N_14), .y_57(y_57), .N_509_n(N_509_n), .N_510_n(N_510_n), 
        .N_511_n(N_511_n), .N_14_0(N_14_0), .word(word));
    GND GND (.Y(GNDZ0));
    QUAD_COUNTER_1 ballCnt1 (.P_c({P_c_4, P_c_3}), .ballCnt1q({
        ballCnt1q_6, ballCnt1q_5, ballCnt1q_4, ballCnt1q_3, 
        ballCnt1q_2, ballCnt1q_1, ballCnt1q_0}), .nDior_c_i_0(
        nDior_c_iZ0Z_0), .clk_c(clk_c), .nReset_c_1(nReset_c_1), 
        .nReset_c_0(nReset_c_0), .nDior_c(nDior_c));
    AND3 trCookie_0 (.A(key0), .B(key2), .C(key1), .Y(N_14_0));
    BUFF nReset_pad_0 (.A(nReset_c), .Y(nReset_c_0));
    myMUX_16_6 imux_16_6 (.dataInput({dataInput_6, dataInput_5, 
        dataInput_4, dataInput_3, dataInput_2, dataInput_1, 
        dataInput_0}), .ballCnt3q({ballCnt3q_6, ballCnt3q_5, 
        ballCnt3q_4, ballCnt3q_3, ballCnt3q_2, ballCnt3q_1}), 
        .bCounter({bCounter_3, bCounter_2, bCounter_1, bCounter_0}), 
        .ballCnt1q({ballCnt1q_6, ballCnt1q_5, ballCnt1q_4, ballCnt1q_3, 
        ballCnt1q_2, ballCnt1q_1, ballCnt1q_0}), .ballCnt2q({
        ballCnt2q_6, ballCnt2q_5, ballCnt2q_4, ballCnt2q_3, 
        ballCnt2q_2, ballCnt2q_1}), .ballCnt0q({ballCnt0q_6, 
        ballCnt0q_5, ballCnt0q_4, ballCnt0q_3, ballCnt0q_2, 
        ballCnt0q_1, ballCnt0q_0}), .bCounter_0({bCounter_0_3, 
        bCounter_0_2, bCounter_0_1}), .P_c({P_c_28, P_c_27, P_c_26, 
        P_c_25, P_c_24, P_c_23, P_c_22, P_c_21, P_c_20, P_c_19, P_c_18, 
        P_c_17, P_c_16, P_c_15, P_c_14, P_c_13, P_c_12, P_c_11, P_c_10, 
        P_c_9, P_c_8, P_c_7, P_c_6, P_c_5, P_c_4, P_c_3, P_c_2, P_c_1, 
        P_c_0}), .\ballCnt3q_i[0] (ballCnt3q_i_0), .\ballCnt2q_i[0] (
        ballCnt2q_i_0), .\bCounter_i[0] (bCounter_i_0));
    INBUF P_pad_4 (.PAD(P[4]), .Y(P_c_4));
    OR4D un1_dd_1_0_and2 (.A(da_c_1), .B(y_0), .C(y_11), .D(y_1), .Y(
        cmd5N));
    myNOISE inoise (.noice_15(noice_15), .noice_1(noice_1), .noice_0(
        noice_0), .nReset_c_5(nReset_c_5), .nReset_c_4(nReset_c_4), 
        .nDior_c(nDior_c), .y_9(y_9));
    BIBUF dd_pad_5 (.PAD(dd[5]), .D(dataInput_5), .E(readZ0), .Y(
        dd_in_5));
    INBUF P_pad_28 (.PAD(P[28]), .Y(P_c_28));
    INBUF P_pad_17 (.PAD(P[17]), .Y(P_c_17));
    AND2A G_283 (.A(dd_in_3), .B(dd_in_0), .Y(y_29));
    CM8 nDior_c_i (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(nDior_c), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        nDior_c_iZ0));
    BIBUF dd_pad_6 (.PAD(dd[6]), .D(dataInput_6), .E(readZ0), .Y(
        dd_in_6));
    INBUF P_pad_7 (.PAD(P[7]), .Y(P_c_7));
    INBUF P_pad_22 (.PAD(P[22]), .Y(P_c_22));
    myDFFE2 ikey0 (.da_c({da_c_1, da_c_0}), .dd_in_4(dd_in_5), 
        .dd_in_3(dd_in_4), .dd_in_1(dd_in_2), .dd_in_6(dd_in_7), 
        .dd_in_5(dd_in_6), .dd_in_0(dd_in_1), .key0(key0), .nReset_c_3(
        nReset_c_3), .nDiow_c(nDiow_c), .bDevice(bDevice), .y_11(y_11), 
        .cmd6N_0(cmd6N_0), .y_29(y_29));
    INBUF P_pad_24 (.PAD(P[24]), .Y(P_c_24));
    OR3 G_465_498 (.A(count_2), .B(count_7), .C(count_11), .Y(y_8));
    OR3A G_418 (.A(y_56), .B(y_57), .C(y_55), .Y(N_502));
    INBUF da_pad_0 (.PAD(da[0]), .Y(da_c_0));
    INBUF P_pad_0 (.PAD(P[0]), .Y(P_c_0));
    BUFF nReset_pad_4 (.A(nReset_c), .Y(nReset_c_4));
    XOR2 G_429 (.A(bCounter_0), .B(bCounter_1), .Y(y_28));
    INBUF P_pad_11 (.PAD(P[11]), .Y(P_c_11));
    AND4B read (.A(nDior_c), .B(nCS0_c), .C(nCS1_c), .D(bDevice), .Y(
        readZ0));
    BUFF nReset_pad_5 (.A(nReset_c), .Y(nReset_c_5));
    QUAD_COUNTER_2 ballCnt2 (.P_c({P_c_12, P_c_11}), .\ballCnt2q_i[0] (
        ballCnt2q_i_0), .ballCnt2q_1(ballCnt2q_1), .ballCnt2q_6(
        ballCnt2q_6), .ballCnt2q_2(ballCnt2q_2), .ballCnt2q_3(
        ballCnt2q_3), .ballCnt2q_4(ballCnt2q_4), .ballCnt2q_5(
        ballCnt2q_5), .nReset_c_2(nReset_c_2), .nDior_c_i_0(
        nDior_c_iZ0Z_0), .clk_c(clk_c), .nReset_c_1(nReset_c_1), 
        .nDior_c_i(nDior_c_iZ0), .nDior_c(nDior_c));
    INBUF P_pad_19 (.PAD(P[19]), .Y(P_c_19));
    CLKBUF nDiow_pad (.PAD(nDiow), .Y(nDiow_c));
    AND3 trCookie (.A(key0), .B(key2), .C(key1), .Y(N_14));
    INBUF P_pad_15 (.PAD(P[15]), .Y(P_c_15));
    OUTBUF CoinCounter_pad_1 (.PAD(CoinCounter[1]), .D(CoinCounter_c_1)
        );
    BUFF un1_cmd6N_0_and2_0_0 (.A(cmd6N_0), .Y(cmd6N_0_0));
    OR4D un1_cmd6N_0_and2_0 (.A(da_c_1), .B(y), .C(y_11), .D(y_1), .Y(
        cmd6N_0));
    CLKBUF nDior_pad (.PAD(nDior), .Y(nDior_c));
    OR4 G_465 (.A(y_6), .B(y_5), .C(y_7), .D(y_8), .Y(N_549));
    OR4 G_465_499 (.A(count_14), .B(count_13), .C(count_15), .D(
        count_12), .Y(y_7));
    BIBUF dd_pad_2 (.PAD(dd[2]), .D(dataInput_2), .E(readZ0), .Y(
        dd_in_2));
    QUAD_COUNTER_3 ballCnt3 (.P_c({P_c_14, P_c_13}), .\ballCnt3q_i[0] (
        ballCnt3q_i_0), .ballCnt3q_1(ballCnt3q_1), .ballCnt3q_6(
        ballCnt3q_6), .ballCnt3q_2(ballCnt3q_2), .ballCnt3q_3(
        ballCnt3q_3), .ballCnt3q_4(ballCnt3q_4), .ballCnt3q_5(
        ballCnt3q_5), .nReset_c_3(nReset_c_3), .nDior_c_i(nDior_c_iZ0), 
        .clk_c(clk_c), .nReset_c_2(nReset_c_2), .nDior_c(nDior_c));
    AND4B un1_cmd6N_0_and2_528 (.A(dd_in_4), .B(dd_in_7), .C(dd_in_5), 
        .D(dd_in_6), .Y(y));
    INBUF P_pad_27 (.PAD(P[27]), .Y(P_c_27));
    AND2 un1_cmd6N_0 (.A(cmd6N_0), .B(nReset_c_0), .Y(y_62));
    myDFFE2_2 ikey2 (.da_c({da_c_1, da_c_0}), .dd_in({dd_in_7, dd_in_6, 
        dd_in_5, dd_in_4, dd_in_3, dd_in_2, dd_in_1, dd_in_0}), .key2(
        key2), .nReset_c_4(nReset_c_4), .nDiow_c(nDiow_c), .bDevice(
        bDevice), .y_10(y_10), .cmd6N_0(cmd6N_0));
    AND3A read_1 (.A(nCS0_c), .B(bDevice), .C(nCS1_c), .Y(acces));
    CM8 G_427_n (.D0(GNDZ0), .D1(y_56), .D2(GNDZ0), .D3(GNDZ0), .S00(
        count_12), .S01(count_13), .S10(y_55), .S11(y_57), .Y(N_511_n));
    BUFF nReset_pad_3 (.A(nReset_c), .Y(nReset_c_3));
    QUAD_COUNTER ballCnt0 (.P_c({P_c_2, P_c_1}), .ballCnt0q({
        ballCnt0q_6, ballCnt0q_5, ballCnt0q_4, ballCnt0q_3, 
        ballCnt0q_2, ballCnt0q_1, ballCnt0q_0}), .nDior_c_i_0(
        nDior_c_iZ0Z_0), .clk_c(clk_c), .nReset_c_0(nReset_c_0), 
        .nDior_c(nDior_c));
    INBUF P_pad_1 (.PAD(P[1]), .Y(P_c_1));
    INBUF nReset_pad (.PAD(nReset), .Y(nReset_c));
    INBUF nCS1_pad (.PAD(nCS1), .Y(nCS1_c));
    INBUF P_pad_8 (.PAD(P[8]), .Y(P_c_8));
    INBUF P_pad_21 (.PAD(P[21]), .Y(P_c_21));
    INBUF da_pad_2 (.PAD(da[2]), .Y(da_c_2));
    OR4D un1_cmd6N_0_and2 (.A(da_c_1), .B(y), .C(y_11), .D(y_1), .Y(
        cmd6N));
    INBUF P_pad_10 (.PAD(P[10]), .Y(P_c_10));
    INBUF P_pad_25 (.PAD(P[25]), .Y(P_c_25));
    AND4A G_426_n (.A(y_57), .B(count_9), .C(y_56), .D(count_8), .Y(
        N_510_n));
    myDFFE ibDevice (.\dd_in[4] (dd_in_4), .bDevice(bDevice), 
        .nReset_c_3(nReset_c_3), .nDiow_c(nDiow_c), .csDevReg(csDevReg)
        );
    OUTBUF CoinLockout_pad_2 (.PAD(CoinLockout[2]), .D(CoinLockout_c_2)
        );
    my4COUNTER ibCounter (.bCounter({bCounter_3, bCounter_2, 
        bCounter_1, bCounter_0}), .bCounter_0({bCounter_0_3, 
        bCounter_0_2, bCounter_0_1}), .\bCounter_i[0] (bCounter_i_0), 
        .y_62(y_62), .nDior_c(nDior_c), .csDataReg(csDataReg), .y_28(
        y_28));
    BIBUF dd_pad_0 (.PAD(dd[0]), .D(dataInput_0), .E(readZ0), .Y(
        dd_in_0));
    OR4A G_465_501 (.A(count_1), .B(count_10), .C(count_3), .D(count_9)
        , .Y(y_5));
    BIBUF dd_pad_7 (.PAD(dd[7]), .D(cookie_bit), .E(readZ0), .Y(
        dd_in_7));
    INBUF P_pad_6 (.PAD(P[6]), .Y(P_c_6));
    BUFF nReset_pad_2 (.A(nReset_c), .Y(nReset_c_2));
    CM8 nDior_c_i_0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(nDior_c), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        nDior_c_iZ0Z_0));
    HCLKBUF clk_pad (.PAD(clk), .Y(clk_c));
    
endmodule
