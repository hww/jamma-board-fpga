`timescale 1 ns/100 ps


module QUAD_COUNTER_2(P_c, ballCnt2q, nDior_c_i, nDior_c_i_0, nReset_c, 
        clk_c, nDior_c);
input  [12:11] P_c;
output  [6:0] ballCnt2q;
input  nDior_c_i, nDior_c_i_0, nReset_c, clk_c, nDior_c;

    wire axb0m, rise_nZ0Z_0, riseZ0Z_1, axb5mi, fadd6_nc_5t0_c, c6_0, 
        axb4mi, c5, c4_0, axb3m, axb2m, c4, y_26, c2, c3, y_25, 
        ballCnt2q_iZ0Z_0, ballRiseZ0Z_3, ballRiseZ0Z_2, ballRiseZ0Z_1, 
        ballRiseZ0Z_0, cnt_6_6, s5i, s4i, cnt_6_3, cnt_6_2, y_27, 
        VCCZ0, GNDZ0, G_72_cm8iZ0;
    
    CM8 fadd6_nc_5t0_c4 (.D0(c4_0), .D1(c2), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(axb3m), .S01(axb2m), .S10(GNDZ0), .S11(GNDZ0), .Y(c4));
    CM8 G_72 (.D0(G_72_cm8iZ0), .D1(rise_nZ0Z_0), .D2(rise_nZ0Z_0), 
        .D3(G_72_cm8iZ0), .S00(P_c[11]), .S01(VCCZ0), .S10(P_c[12]), 
        .S11(GNDZ0), .Y(y_26));
    XNOR2 fadd6_nc_5t0_s5i (.A(c5), .B(axb5mi), .Y(s5i));
    CM8INV G_72_cm8i (.A(riseZ0Z_1), .Y(G_72_cm8iZ0));
    DFE3C q_2 (.D(cnt_6_2), .CLK(clk_c), .CLR(nReset_c), .E(y_27), .Q(
        ballCnt2q[2]));
    XNOR2 G_79 (.A(y_26), .B(ballCnt2q[5]), .Y(axb5mi));
    XOR2 G_76 (.A(y_26), .B(ballCnt2q[2]), .Y(axb2m));
    XOR2 G_75 (.A(y_26), .B(ballCnt2q[6]), .Y(axb0m));
    CM8 G_74 (.D0(ballCnt2q[0]), .D1(ballCnt2q_iZ0Z_0), .D2(
        ballCnt2q_iZ0Z_0), .D3(ballCnt2q[0]), .S00(y_26), .S01(VCCZ0), 
        .S10(ballCnt2q[1]), .S11(GNDZ0), .Y(y_25));
    VCC VCC (.Y(VCCZ0));
    XOR2 G_77 (.A(y_26), .B(ballCnt2q[3]), .Y(axb3m));
    CY2A fadd6_nc_5t0_c2 (.A0(ballCnt2q[0]), .A1(ballCnt2q[1]), .B0(
        VCCZ0), .B1(y_26), .Y(c2));
    XOR2 rise_1 (.A(ballRiseZ0Z_1), .B(ballRiseZ0Z_3), .Y(riseZ0Z_1));
    DFE3C q_4 (.D(s4i), .CLK(clk_c), .CLR(nReset_c), .E(y_27), .Q(
        ballCnt2q[4]));
    XNOR2 rise_n_0 (.A(ballRiseZ0Z_0), .B(ballRiseZ0Z_2), .Y(
        rise_nZ0Z_0));
    XNOR2 G_78 (.A(y_26), .B(ballCnt2q[4]), .Y(axb4mi));
    XNOR2 fadd6_nc_5t0_s4i (.A(c4), .B(axb4mi), .Y(s4i));
    CM8 ena_i_0 (.D0(VCCZ0), .D1(VCCZ0), .D2(rise_nZ0Z_0), .D3(GNDZ0), 
        .S00(riseZ0Z_1), .S01(VCCZ0), .S10(nDior_c), .S11(GNDZ0), .Y(
        y_27));
    CM8 fadd6_nc_5t0_cout (.D0(c4_0), .D1(c2), .D2(c6_0), .D3(c6_0), 
        .S00(axb3m), .S01(axb2m), .S10(axb5mi), .S11(axb4mi), .Y(
        fadd6_nc_5t0_c));
    GND GND (.Y(GNDZ0));
    DFE3C ballRise_0 (.D(P_c[11]), .CLK(clk_c), .CLR(nReset_c), .E(
        nDior_c_i), .Q(ballRiseZ0Z_0));
    CY2A fadd6_nc_5t0_c4_0 (.A0(ballCnt2q[2]), .A1(ballCnt2q[3]), .B0(
        y_26), .B1(y_26), .Y(c4_0));
    MAJ3 fadd6_nc_5t0_c3 (.A(ballCnt2q[2]), .B(y_26), .C(c2), .Y(c3));
    DFE3C q_1 (.D(y_25), .CLK(clk_c), .CLR(nReset_c), .E(y_27), .Q(
        ballCnt2q[1]));
    CY2A fadd6_nc_5t0_c6_0 (.A0(ballCnt2q[4]), .A1(ballCnt2q[5]), .B0(
        y_26), .B1(y_26), .Y(c6_0));
    DFE3C q_5 (.D(s5i), .CLK(clk_c), .CLR(nReset_c), .E(y_27), .Q(
        ballCnt2q[5]));
    DFE3C ballRise_3 (.D(ballRiseZ0Z_1), .CLK(clk_c), .CLR(nReset_c), 
        .E(nDior_c_i_0), .Q(ballRiseZ0Z_3));
    DFE3C ballRise_1 (.D(P_c[12]), .CLK(clk_c), .CLR(nReset_c), .E(
        nDior_c_i), .Q(ballRiseZ0Z_1));
    DFE3C ballRise_2 (.D(ballRiseZ0Z_0), .CLK(clk_c), .CLR(nReset_c), 
        .E(nDior_c_i), .Q(ballRiseZ0Z_2));
    DFE3C q_0 (.D(ballCnt2q_iZ0Z_0), .CLK(clk_c), .CLR(nReset_c), .E(
        y_27), .Q(ballCnt2q[0]));
    XOR2 fadd6_nc_5t0_s2 (.A(c2), .B(axb2m), .Y(cnt_6_2));
    CM8 fadd6_nc_5t0_c5 (.D0(c4_0), .D1(c2), .D2(ballCnt2q[4]), .D3(
        y_26), .S00(axb3m), .S01(axb2m), .S10(axb4mi), .S11(GNDZ0), .Y(
        c5));
    XOR2 fadd1_6t6_s0 (.A(fadd6_nc_5t0_c), .B(axb0m), .Y(cnt_6_6));
    DFE3C q_3 (.D(cnt_6_3), .CLK(clk_c), .CLR(nReset_c), .E(y_27), .Q(
        ballCnt2q[3]));
    CM8 ballCnt2q_i_0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(ballCnt2q[0]), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        ballCnt2q_iZ0Z_0));
    DFE3C q_6 (.D(cnt_6_6), .CLK(clk_c), .CLR(nReset_c), .E(y_27), .Q(
        ballCnt2q[6]));
    XOR2 fadd6_nc_5t0_s3 (.A(c3), .B(axb3m), .Y(cnt_6_3));
    
endmodule


module QUAD_COUNTER(P_c, ballCnt0q, nDior_c_i_0, nReset_c, clk_c, 
        nDior_c);
input  [2:1] P_c;
output  [6:0] ballCnt0q;
input  nDior_c_i_0, nReset_c, clk_c, nDior_c;

    wire axb0m, rise_nZ0Z_0, riseZ0Z_1, axb5mi, fadd6_nc_5t0_c, c6_0, 
        axb4mi, c5, c4_0, axb3m, axb2m, c4, y_20, c2, c3, y_19, 
        ballCnt0q_iZ0Z_0, ballRiseZ0Z_3, ballRiseZ0Z_2, ballRiseZ0Z_1, 
        ballRiseZ0Z_0, cnt_6_6, s5i, s4i, cnt_6_3, cnt_6_2, y_21, 
        VCCZ0, GNDZ0, G_72_cm8iZ0;
    
    CM8 fadd6_nc_5t0_c4 (.D0(c4_0), .D1(c2), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(axb3m), .S01(axb2m), .S10(GNDZ0), .S11(GNDZ0), .Y(c4));
    CM8 G_72 (.D0(G_72_cm8iZ0), .D1(rise_nZ0Z_0), .D2(rise_nZ0Z_0), 
        .D3(G_72_cm8iZ0), .S00(P_c[1]), .S01(VCCZ0), .S10(P_c[2]), 
        .S11(GNDZ0), .Y(y_20));
    XNOR2 fadd6_nc_5t0_s5i (.A(c5), .B(axb5mi), .Y(s5i));
    CM8INV G_72_cm8i (.A(riseZ0Z_1), .Y(G_72_cm8iZ0));
    DFE3C q_2 (.D(cnt_6_2), .CLK(clk_c), .CLR(nReset_c), .E(y_21), .Q(
        ballCnt0q[2]));
    XNOR2 G_79 (.A(y_20), .B(ballCnt0q[5]), .Y(axb5mi));
    XOR2 G_76 (.A(y_20), .B(ballCnt0q[2]), .Y(axb2m));
    XOR2 G_75 (.A(y_20), .B(ballCnt0q[6]), .Y(axb0m));
    CM8 G_74 (.D0(ballCnt0q[0]), .D1(ballCnt0q_iZ0Z_0), .D2(
        ballCnt0q_iZ0Z_0), .D3(ballCnt0q[0]), .S00(y_20), .S01(VCCZ0), 
        .S10(ballCnt0q[1]), .S11(GNDZ0), .Y(y_19));
    VCC VCC (.Y(VCCZ0));
    XOR2 G_77 (.A(y_20), .B(ballCnt0q[3]), .Y(axb3m));
    CY2A fadd6_nc_5t0_c2 (.A0(ballCnt0q[0]), .A1(ballCnt0q[1]), .B0(
        VCCZ0), .B1(y_20), .Y(c2));
    XOR2 rise_1 (.A(ballRiseZ0Z_1), .B(ballRiseZ0Z_3), .Y(riseZ0Z_1));
    DFE3C q_4 (.D(s4i), .CLK(clk_c), .CLR(nReset_c), .E(y_21), .Q(
        ballCnt0q[4]));
    XNOR2 rise_n_0 (.A(ballRiseZ0Z_0), .B(ballRiseZ0Z_2), .Y(
        rise_nZ0Z_0));
    XNOR2 G_78 (.A(y_20), .B(ballCnt0q[4]), .Y(axb4mi));
    XNOR2 fadd6_nc_5t0_s4i (.A(c4), .B(axb4mi), .Y(s4i));
    CM8 ena_i_0 (.D0(VCCZ0), .D1(VCCZ0), .D2(rise_nZ0Z_0), .D3(GNDZ0), 
        .S00(riseZ0Z_1), .S01(VCCZ0), .S10(nDior_c), .S11(GNDZ0), .Y(
        y_21));
    CM8 fadd6_nc_5t0_cout (.D0(c4_0), .D1(c2), .D2(c6_0), .D3(c6_0), 
        .S00(axb3m), .S01(axb2m), .S10(axb5mi), .S11(axb4mi), .Y(
        fadd6_nc_5t0_c));
    CM8 ballCnt0q_i_0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(ballCnt0q[0]), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        ballCnt0q_iZ0Z_0));
    GND GND (.Y(GNDZ0));
    DFE3C ballRise_0 (.D(P_c[1]), .CLK(clk_c), .CLR(nReset_c), .E(
        nDior_c_i_0), .Q(ballRiseZ0Z_0));
    CY2A fadd6_nc_5t0_c4_0 (.A0(ballCnt0q[2]), .A1(ballCnt0q[3]), .B0(
        y_20), .B1(y_20), .Y(c4_0));
    MAJ3 fadd6_nc_5t0_c3 (.A(ballCnt0q[2]), .B(y_20), .C(c2), .Y(c3));
    DFE3C q_1 (.D(y_19), .CLK(clk_c), .CLR(nReset_c), .E(y_21), .Q(
        ballCnt0q[1]));
    CY2A fadd6_nc_5t0_c6_0 (.A0(ballCnt0q[4]), .A1(ballCnt0q[5]), .B0(
        y_20), .B1(y_20), .Y(c6_0));
    DFE3C q_5 (.D(s5i), .CLK(clk_c), .CLR(nReset_c), .E(y_21), .Q(
        ballCnt0q[5]));
    DFE3C ballRise_3 (.D(ballRiseZ0Z_1), .CLK(clk_c), .CLR(nReset_c), 
        .E(nDior_c_i_0), .Q(ballRiseZ0Z_3));
    DFE3C ballRise_1 (.D(P_c[2]), .CLK(clk_c), .CLR(nReset_c), .E(
        nDior_c_i_0), .Q(ballRiseZ0Z_1));
    DFE3C ballRise_2 (.D(ballRiseZ0Z_0), .CLK(clk_c), .CLR(nReset_c), 
        .E(nDior_c_i_0), .Q(ballRiseZ0Z_2));
    DFE3C q_0 (.D(ballCnt0q_iZ0Z_0), .CLK(clk_c), .CLR(nReset_c), .E(
        y_21), .Q(ballCnt0q[0]));
    XOR2 fadd6_nc_5t0_s2 (.A(c2), .B(axb2m), .Y(cnt_6_2));
    CM8 fadd6_nc_5t0_c5 (.D0(c4_0), .D1(c2), .D2(ballCnt0q[4]), .D3(
        y_20), .S00(axb3m), .S01(axb2m), .S10(axb4mi), .S11(GNDZ0), .Y(
        c5));
    XOR2 fadd1_6t6_s0 (.A(fadd6_nc_5t0_c), .B(axb0m), .Y(cnt_6_6));
    DFE3C q_3 (.D(cnt_6_3), .CLK(clk_c), .CLR(nReset_c), .E(y_21), .Q(
        ballCnt0q[3]));
    DFE3C q_6 (.D(cnt_6_6), .CLK(clk_c), .CLR(nReset_c), .E(y_21), .Q(
        ballCnt0q[6]));
    XOR2 fadd6_nc_5t0_s3 (.A(c3), .B(axb3m), .Y(cnt_6_3));
    
endmodule


module QUAD_COUNTER_1(ballCnt1q, nDior_c_i_0, nReset_c, clk_c, o1, 
        N_388, nDior_c);
output  [6:0] ballCnt1q;
input  nDior_c_i_0, nReset_c, clk_c, o1, N_388, nDior_c;

    wire axb0m, riseZ0Z_0, rise_nZ0Z_1, axb5mi, fadd6_nc_5t0_c, c6_0, 
        axb4mi, c5, c4_0, axb3m, axb2m, c4, y_23, c2, c3, y_22, 
        ballCnt1q_iZ0Z_0, ballRiseZ0Z_3, ballRiseZ0Z_2, ballRiseZ0Z_1, 
        ballRiseZ0Z_0, cnt_6_6, s5i, s4i, cnt_6_3, cnt_6_2, y_24, 
        VCCZ0, GNDZ0, G_72_cm8iZ0;
    
    CM8 fadd6_nc_5t0_c4 (.D0(c4_0), .D1(c2), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(axb3m), .S01(axb2m), .S10(GNDZ0), .S11(GNDZ0), .Y(c4));
    CM8 G_72 (.D0(rise_nZ0Z_1), .D1(G_72_cm8iZ0), .D2(G_72_cm8iZ0), 
        .D3(rise_nZ0Z_1), .S00(N_388), .S01(VCCZ0), .S10(o1), .S11(
        GNDZ0), .Y(y_23));
    XNOR2 fadd6_nc_5t0_s5i (.A(c5), .B(axb5mi), .Y(s5i));
    CM8INV G_72_cm8i (.A(riseZ0Z_0), .Y(G_72_cm8iZ0));
    DFE3C q_2 (.D(cnt_6_2), .CLK(clk_c), .CLR(nReset_c), .E(y_24), .Q(
        ballCnt1q[2]));
    XNOR2 rise_n_1 (.A(ballRiseZ0Z_1), .B(ballRiseZ0Z_3), .Y(
        rise_nZ0Z_1));
    XNOR2 G_79 (.A(y_23), .B(ballCnt1q[5]), .Y(axb5mi));
    XOR2 G_76 (.A(y_23), .B(ballCnt1q[2]), .Y(axb2m));
    XOR2 G_75 (.A(y_23), .B(ballCnt1q[6]), .Y(axb0m));
    CM8 G_74 (.D0(ballCnt1q[0]), .D1(ballCnt1q_iZ0Z_0), .D2(
        ballCnt1q_iZ0Z_0), .D3(ballCnt1q[0]), .S00(y_23), .S01(VCCZ0), 
        .S10(ballCnt1q[1]), .S11(GNDZ0), .Y(y_22));
    VCC VCC (.Y(VCCZ0));
    XOR2 G_77 (.A(y_23), .B(ballCnt1q[3]), .Y(axb3m));
    CY2A fadd6_nc_5t0_c2 (.A0(ballCnt1q[0]), .A1(ballCnt1q[1]), .B0(
        VCCZ0), .B1(y_23), .Y(c2));
    DFE3C q_4 (.D(s4i), .CLK(clk_c), .CLR(nReset_c), .E(y_24), .Q(
        ballCnt1q[4]));
    XNOR2 G_78 (.A(y_23), .B(ballCnt1q[4]), .Y(axb4mi));
    XNOR2 fadd6_nc_5t0_s4i (.A(c4), .B(axb4mi), .Y(s4i));
    CM8 ena_i_0 (.D0(VCCZ0), .D1(VCCZ0), .D2(rise_nZ0Z_1), .D3(GNDZ0), 
        .S00(riseZ0Z_0), .S01(VCCZ0), .S10(nDior_c), .S11(GNDZ0), .Y(
        y_24));
    CM8 fadd6_nc_5t0_cout (.D0(c4_0), .D1(c2), .D2(c6_0), .D3(c6_0), 
        .S00(axb3m), .S01(axb2m), .S10(axb5mi), .S11(axb4mi), .Y(
        fadd6_nc_5t0_c));
    XOR2 rise_0 (.A(ballRiseZ0Z_0), .B(ballRiseZ0Z_2), .Y(riseZ0Z_0));
    GND GND (.Y(GNDZ0));
    DFE3C ballRise_0 (.D(N_388), .CLK(clk_c), .CLR(nReset_c), .E(
        nDior_c_i_0), .Q(ballRiseZ0Z_0));
    CY2A fadd6_nc_5t0_c4_0 (.A0(ballCnt1q[2]), .A1(ballCnt1q[3]), .B0(
        y_23), .B1(y_23), .Y(c4_0));
    MAJ3 fadd6_nc_5t0_c3 (.A(ballCnt1q[2]), .B(y_23), .C(c2), .Y(c3));
    DFE3C q_1 (.D(y_22), .CLK(clk_c), .CLR(nReset_c), .E(y_24), .Q(
        ballCnt1q[1]));
    CY2A fadd6_nc_5t0_c6_0 (.A0(ballCnt1q[4]), .A1(ballCnt1q[5]), .B0(
        y_23), .B1(y_23), .Y(c6_0));
    DFE3C q_5 (.D(s5i), .CLK(clk_c), .CLR(nReset_c), .E(y_24), .Q(
        ballCnt1q[5]));
    DFE3C ballRise_3 (.D(ballRiseZ0Z_1), .CLK(clk_c), .CLR(nReset_c), 
        .E(nDior_c_i_0), .Q(ballRiseZ0Z_3));
    DFE3C ballRise_1 (.D(o1), .CLK(clk_c), .CLR(nReset_c), .E(
        nDior_c_i_0), .Q(ballRiseZ0Z_1));
    DFE3C ballRise_2 (.D(ballRiseZ0Z_0), .CLK(clk_c), .CLR(nReset_c), 
        .E(nDior_c_i_0), .Q(ballRiseZ0Z_2));
    DFE3C q_0 (.D(ballCnt1q_iZ0Z_0), .CLK(clk_c), .CLR(nReset_c), .E(
        y_24), .Q(ballCnt1q[0]));
    XOR2 fadd6_nc_5t0_s2 (.A(c2), .B(axb2m), .Y(cnt_6_2));
    CM8 fadd6_nc_5t0_c5 (.D0(c4_0), .D1(c2), .D2(ballCnt1q[4]), .D3(
        y_23), .S00(axb3m), .S01(axb2m), .S10(axb4mi), .S11(GNDZ0), .Y(
        c5));
    XOR2 fadd1_6t6_s0 (.A(fadd6_nc_5t0_c), .B(axb0m), .Y(cnt_6_6));
    DFE3C q_3 (.D(cnt_6_3), .CLK(clk_c), .CLR(nReset_c), .E(y_24), .Q(
        ballCnt1q[3]));
    CM8 ballCnt1q_i_0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(ballCnt1q[0]), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        ballCnt1q_iZ0Z_0));
    DFE3C q_6 (.D(cnt_6_6), .CLK(clk_c), .CLR(nReset_c), .E(y_24), .Q(
        ballCnt1q[6]));
    XOR2 fadd6_nc_5t0_s3 (.A(c3), .B(axb3m), .Y(cnt_6_3));
    
endmodule


module mux_16_6(bCounter, dataInput, ballCnt3q, ballCnt1q, ballCnt2q, 
        bCounter_0, ballCnt0q, P_c_14, P_c_24, P_c_18, P_c_28, P_c_19, 
        P_c_9, P_c_13, P_c_15, P_c_12, P_c_11, P_c_10, P_c_23, P_c_27, 
        P_c_7, P_c_22, P_c_2, P_c_26, P_c_6, P_c_21, P_c_1, P_c_25, 
        P_c_5, P_c_20, P_c_0, P_c_16, P_c_17, \bCounter_1[2] , o1, 
        N_367, N_388);
input  [3:0] bCounter;
output  [6:0] dataInput;
input  [6:0] ballCnt3q;
input  [6:0] ballCnt1q;
input  [6:0] ballCnt2q;
input  [3:0] bCounter_0;
input  [6:0] ballCnt0q;
input  P_c_14, P_c_24, P_c_18, P_c_28, P_c_19, P_c_9, P_c_13, P_c_15, 
        P_c_12, P_c_11, P_c_10, P_c_23, P_c_27, P_c_7, P_c_22, P_c_2, 
        P_c_26, P_c_6, P_c_21, P_c_1, P_c_25, P_c_5, P_c_20, P_c_0, 
        P_c_16, P_c_17, \bCounter_1[2] , o1, N_367, N_388;

    wire y_73, y_35, y_68, y_37, y_67, y_36, y_66, y_69, y_63, y_72, 
        y_65, y_61, y_71, y_64, y_60, y_62, N_220, N_219, N_218, N_199, 
        N_198, N_197, y_70, N_196, N_175, N_169, N_168, N_148, VCCZ0, 
        GNDZ0, out_14_cm8iZ0Z_2, out_14_cm8iZ0Z_1, out_7_cm8iZ0Z_0;
    
    CM8 out_7_3 (.D0(y_70), .D1(N_196), .D2(GNDZ0), .D3(GNDZ0), .S00(
        bCounter[1]), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(N_175));
    CM8 out_10_6 (.D0(ballCnt0q[6]), .D1(GNDZ0), .D2(ballCnt2q[6]), 
        .D3(GNDZ0), .S00(bCounter[2]), .S01(VCCZ0), .S10(bCounter[1]), 
        .S11(GNDZ0), .Y(N_199));
    CM8 out_15_0_and2_0_and2_5 (.D0(GNDZ0), .D1(GNDZ0), .D2(N_198), 
        .D3(N_219), .S00(bCounter[0]), .S01(VCCZ0), .S10(bCounter[3]), 
        .S11(GNDZ0), .Y(dataInput[5]));
    CM8INV out_14_cm8i_1 (.A(bCounter_0[3]), .Y(out_14_cm8iZ0Z_1));
    CM8 out_15_0 (.D0(y_66), .D1(GNDZ0), .D2(y_69), .D3(y_63), .S00(
        bCounter_0[1]), .S01(bCounter_0[0]), .S10(bCounter_0[1]), .S11(
        GNDZ0), .Y(dataInput[0]));
    CM8 out_13_6 (.D0(ballCnt1q[6]), .D1(GNDZ0), .D2(ballCnt3q[6]), 
        .D3(GNDZ0), .S00(\bCounter_1[2] ), .S01(VCCZ0), .S10(
        bCounter_0[1]), .S11(GNDZ0), .Y(N_220));
    CM8 out_3_2 (.D0(P_c_2), .D1(P_c_22), .D2(P_c_7), .D3(P_c_27), 
        .S00(bCounter_0[2]), .S01(VCCZ0), .S10(bCounter_0[0]), .S11(
        GNDZ0), .Y(y_71));
    VCC VCC (.Y(VCCZ0));
    AND2A out_5_0_and2_0_and2_1 (.A(\bCounter_1[2] ), .B(P_c_16), .Y(
        y_37));
    CM8 out_3_3 (.D0(N_388), .D1(P_c_23), .D2(ballCnt0q[3]), .D3(GNDZ0)
        , .S00(bCounter_0[2]), .S01(VCCZ0), .S10(bCounter_0[3]), .S11(
        GNDZ0), .Y(y_70));
    CM8INV out_7_cm8i_0 (.A(bCounter_0[0]), .Y(out_7_cm8iZ0Z_0));
    AND2A out_8_0_and2_0_and2_0 (.A(\bCounter_1[2] ), .B(ballCnt0q[0]), 
        .Y(y_35));
    CM8 out_10_4 (.D0(ballCnt0q[4]), .D1(GNDZ0), .D2(ballCnt2q[4]), 
        .D3(GNDZ0), .S00(bCounter[2]), .S01(VCCZ0), .S10(bCounter[1]), 
        .S11(GNDZ0), .Y(N_197));
    CM8 out_14_2 (.D0(y_67), .D1(ballCnt3q[2]), .D2(y_67), .D3(y_36), 
        .S00(bCounter_0[0]), .S01(VCCZ0), .S10(out_14_cm8iZ0Z_2), .S11(
        \bCounter_1[2] ), .Y(y_60));
    CM8 out_10_1 (.D0(ballCnt0q[1]), .D1(GNDZ0), .D2(ballCnt1q[1]), 
        .D3(GNDZ0), .S00(bCounter_0[2]), .S01(VCCZ0), .S10(
        bCounter_0[0]), .S11(GNDZ0), .Y(y_65));
    CM8 out_15_0_and2_0_and2_6 (.D0(GNDZ0), .D1(GNDZ0), .D2(N_199), 
        .D3(N_220), .S00(bCounter[0]), .S01(VCCZ0), .S10(bCounter[3]), 
        .S11(GNDZ0), .Y(dataInput[6]));
    CM8 out_15_1 (.D0(y_72), .D1(y_61), .D2(y_65), .D3(y_61), .S00(
        bCounter_0[1]), .S01(VCCZ0), .S10(bCounter_0[3]), .S11(GNDZ0), 
        .Y(dataInput[1]));
    CM8 out_6_0 (.D0(P_c_10), .D1(GNDZ0), .D2(ballCnt2q[0]), .D3(GNDZ0)
        , .S00(bCounter_0[2]), .S01(VCCZ0), .S10(bCounter_0[3]), .S11(
        GNDZ0), .Y(y_69));
    CM8 out_3_4 (.D0(o1), .D1(P_c_24), .D2(P_c_14), .D3(GNDZ0), .S00(
        bCounter[2]), .S01(VCCZ0), .S10(bCounter[1]), .S11(GNDZ0), .Y(
        N_148));
    GND GND (.Y(GNDZ0));
    CM8 out_10_3 (.D0(P_c_13), .D1(GNDZ0), .D2(ballCnt2q[3]), .D3(
        GNDZ0), .S00(bCounter[2]), .S01(VCCZ0), .S10(bCounter[3]), 
        .S11(GNDZ0), .Y(N_196));
    CM8 out_14_1 (.D0(y_68), .D1(ballCnt3q[1]), .D2(y_68), .D3(y_37), 
        .S00(bCounter_0[0]), .S01(VCCZ0), .S10(out_14_cm8iZ0Z_1), .S11(
        \bCounter_1[2] ), .Y(y_61));
    CM8 out_6_1 (.D0(P_c_11), .D1(GNDZ0), .D2(ballCnt2q[1]), .D3(GNDZ0)
        , .S00(bCounter_0[2]), .S01(VCCZ0), .S10(bCounter_0[3]), .S11(
        GNDZ0), .Y(y_68));
    CM8 out_6_4 (.D0(P_c_9), .D1(GNDZ0), .D2(P_c_19), .D3(GNDZ0), .S00(
        bCounter[2]), .S01(VCCZ0), .S10(bCounter[1]), .S11(GNDZ0), .Y(
        N_169));
    CM8 out_13_5 (.D0(ballCnt1q[5]), .D1(GNDZ0), .D2(ballCnt3q[5]), 
        .D3(GNDZ0), .S00(\bCounter_1[2] ), .S01(VCCZ0), .S10(
        bCounter_0[1]), .S11(GNDZ0), .Y(N_219));
    CM8 out_3_1 (.D0(P_c_1), .D1(P_c_21), .D2(P_c_6), .D3(P_c_26), 
        .S00(bCounter_0[2]), .S01(VCCZ0), .S10(bCounter_0[0]), .S11(
        GNDZ0), .Y(y_72));
    CM8 out_10_5 (.D0(ballCnt0q[5]), .D1(GNDZ0), .D2(ballCnt2q[5]), 
        .D3(GNDZ0), .S00(bCounter[2]), .S01(VCCZ0), .S10(bCounter[1]), 
        .S11(GNDZ0), .Y(N_198));
    CM8 out_3_0 (.D0(P_c_0), .D1(P_c_20), .D2(P_c_5), .D3(P_c_25), 
        .S00(bCounter_0[2]), .S01(VCCZ0), .S10(bCounter_0[0]), .S11(
        GNDZ0), .Y(y_73));
    CM8 out_13_0 (.D0(P_c_15), .D1(VCCZ0), .D2(ballCnt3q[0]), .D3(
        GNDZ0), .S00(bCounter_0[2]), .S01(VCCZ0), .S10(bCounter_0[3]), 
        .S11(GNDZ0), .Y(y_63));
    CM8INV out_14_cm8i_2 (.A(bCounter_0[3]), .Y(out_14_cm8iZ0Z_2));
    CM8 out_10_2 (.D0(ballCnt0q[2]), .D1(GNDZ0), .D2(ballCnt1q[2]), 
        .D3(GNDZ0), .S00(bCounter_0[2]), .S01(VCCZ0), .S10(
        bCounter_0[0]), .S11(GNDZ0), .Y(y_64));
    CM8 out_15_3 (.D0(N_175), .D1(N_168), .D2(N_175), .D3(y_62), .S00(
        bCounter[0]), .S01(VCCZ0), .S10(bCounter[3]), .S11(GNDZ0), .Y(
        dataInput[3]));
    CM8 out_13_4 (.D0(ballCnt1q[4]), .D1(GNDZ0), .D2(ballCnt3q[4]), 
        .D3(GNDZ0), .S00(bCounter[2]), .S01(VCCZ0), .S10(bCounter[1]), 
        .S11(GNDZ0), .Y(N_218));
    CM8 out_15_2 (.D0(y_71), .D1(y_60), .D2(y_64), .D3(y_60), .S00(
        bCounter_0[1]), .S01(VCCZ0), .S10(bCounter[3]), .S11(GNDZ0), 
        .Y(dataInput[2]));
    CM8 out_6_3 (.D0(N_367), .D1(P_c_28), .D2(P_c_18), .D3(GNDZ0), 
        .S00(bCounter[2]), .S01(VCCZ0), .S10(bCounter[1]), .S11(GNDZ0), 
        .Y(N_168));
    CM8 out_15_4 (.D0(N_148), .D1(N_169), .D2(N_197), .D3(N_218), .S00(
        bCounter[0]), .S01(VCCZ0), .S10(bCounter[3]), .S11(GNDZ0), .Y(
        dataInput[4]));
    CM8 out_7_0 (.D0(y_73), .D1(ballCnt1q[0]), .D2(y_73), .D3(y_35), 
        .S00(bCounter_0[3]), .S01(VCCZ0), .S10(out_7_cm8iZ0Z_0), .S11(
        bCounter_0[2]), .Y(y_66));
    AND2A out_5_0_and2_0_and2_2 (.A(\bCounter_1[2] ), .B(P_c_17), .Y(
        y_36));
    CM8 out_13_3 (.D0(ballCnt1q[3]), .D1(GNDZ0), .D2(ballCnt3q[3]), 
        .D3(GNDZ0), .S00(\bCounter_1[2] ), .S01(VCCZ0), .S10(
        bCounter_0[1]), .S11(GNDZ0), .Y(y_62));
    CM8 out_6_2 (.D0(P_c_12), .D1(GNDZ0), .D2(ballCnt2q[2]), .D3(GNDZ0)
        , .S00(bCounter_0[2]), .S01(VCCZ0), .S10(bCounter_0[3]), .S11(
        GNDZ0), .Y(y_67));
    
endmodule


module QUAD_COUNTER_3(P_c, ballCnt3q, nDior_c_i, nReset_c, clk_c, 
        nDior_c);
input  [14:13] P_c;
output  [6:0] ballCnt3q;
input  nDior_c_i, nReset_c, clk_c, nDior_c;

    wire axb0m, riseZ0Z_0, rise_nZ0Z_1, axb5mi, fadd6_nc_5t0_c, c6_0, 
        axb4mi, c5, c4_0, axb3m, axb2m, c4, y_29, c2, c3, y_28, 
        ballCnt3q_iZ0Z_0, ballRiseZ0Z_3, ballRiseZ0Z_2, ballRiseZ0Z_1, 
        ballRiseZ0Z_0, cnt_6_6, s5i, s4i, cnt_6_3, cnt_6_2, y_30, 
        VCCZ0, GNDZ0, G_72_cm8iZ0;
    
    CM8 fadd6_nc_5t0_c4 (.D0(c4_0), .D1(c2), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(axb3m), .S01(axb2m), .S10(GNDZ0), .S11(GNDZ0), .Y(c4));
    CM8 G_72 (.D0(rise_nZ0Z_1), .D1(G_72_cm8iZ0), .D2(G_72_cm8iZ0), 
        .D3(rise_nZ0Z_1), .S00(P_c[13]), .S01(VCCZ0), .S10(P_c[14]), 
        .S11(GNDZ0), .Y(y_29));
    XNOR2 fadd6_nc_5t0_s5i (.A(c5), .B(axb5mi), .Y(s5i));
    CM8INV G_72_cm8i (.A(riseZ0Z_0), .Y(G_72_cm8iZ0));
    DFE3C q_2 (.D(cnt_6_2), .CLK(clk_c), .CLR(nReset_c), .E(y_30), .Q(
        ballCnt3q[2]));
    XNOR2 rise_n_1 (.A(ballRiseZ0Z_1), .B(ballRiseZ0Z_3), .Y(
        rise_nZ0Z_1));
    XNOR2 G_79 (.A(y_29), .B(ballCnt3q[5]), .Y(axb5mi));
    XOR2 G_76 (.A(y_29), .B(ballCnt3q[2]), .Y(axb2m));
    XOR2 G_75 (.A(y_29), .B(ballCnt3q[6]), .Y(axb0m));
    CM8 G_74 (.D0(ballCnt3q[0]), .D1(ballCnt3q_iZ0Z_0), .D2(
        ballCnt3q_iZ0Z_0), .D3(ballCnt3q[0]), .S00(y_29), .S01(VCCZ0), 
        .S10(ballCnt3q[1]), .S11(GNDZ0), .Y(y_28));
    VCC VCC (.Y(VCCZ0));
    XOR2 G_77 (.A(y_29), .B(ballCnt3q[3]), .Y(axb3m));
    CY2A fadd6_nc_5t0_c2 (.A0(ballCnt3q[0]), .A1(ballCnt3q[1]), .B0(
        VCCZ0), .B1(y_29), .Y(c2));
    DFE3C q_4 (.D(s4i), .CLK(clk_c), .CLR(nReset_c), .E(y_30), .Q(
        ballCnt3q[4]));
    CM8 ballCnt3q_i_0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(ballCnt3q[0]), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        ballCnt3q_iZ0Z_0));
    XNOR2 G_78 (.A(y_29), .B(ballCnt3q[4]), .Y(axb4mi));
    XNOR2 fadd6_nc_5t0_s4i (.A(c4), .B(axb4mi), .Y(s4i));
    CM8 ena_i_0 (.D0(VCCZ0), .D1(VCCZ0), .D2(rise_nZ0Z_1), .D3(GNDZ0), 
        .S00(riseZ0Z_0), .S01(VCCZ0), .S10(nDior_c), .S11(GNDZ0), .Y(
        y_30));
    CM8 fadd6_nc_5t0_cout (.D0(c4_0), .D1(c2), .D2(c6_0), .D3(c6_0), 
        .S00(axb3m), .S01(axb2m), .S10(axb5mi), .S11(axb4mi), .Y(
        fadd6_nc_5t0_c));
    XOR2 rise_0 (.A(ballRiseZ0Z_0), .B(ballRiseZ0Z_2), .Y(riseZ0Z_0));
    GND GND (.Y(GNDZ0));
    DFE3C ballRise_0 (.D(P_c[13]), .CLK(clk_c), .CLR(nReset_c), .E(
        nDior_c_i), .Q(ballRiseZ0Z_0));
    CY2A fadd6_nc_5t0_c4_0 (.A0(ballCnt3q[2]), .A1(ballCnt3q[3]), .B0(
        y_29), .B1(y_29), .Y(c4_0));
    MAJ3 fadd6_nc_5t0_c3 (.A(ballCnt3q[2]), .B(y_29), .C(c2), .Y(c3));
    DFE3C q_1 (.D(y_28), .CLK(clk_c), .CLR(nReset_c), .E(y_30), .Q(
        ballCnt3q[1]));
    CY2A fadd6_nc_5t0_c6_0 (.A0(ballCnt3q[4]), .A1(ballCnt3q[5]), .B0(
        y_29), .B1(y_29), .Y(c6_0));
    DFE3C q_5 (.D(s5i), .CLK(clk_c), .CLR(nReset_c), .E(y_30), .Q(
        ballCnt3q[5]));
    DFE3C ballRise_3 (.D(ballRiseZ0Z_1), .CLK(clk_c), .CLR(nReset_c), 
        .E(nDior_c_i), .Q(ballRiseZ0Z_3));
    DFE3C ballRise_1 (.D(P_c[14]), .CLK(clk_c), .CLR(nReset_c), .E(
        nDior_c_i), .Q(ballRiseZ0Z_1));
    DFE3C ballRise_2 (.D(ballRiseZ0Z_0), .CLK(clk_c), .CLR(nReset_c), 
        .E(nDior_c_i), .Q(ballRiseZ0Z_2));
    DFE3C q_0 (.D(ballCnt3q_iZ0Z_0), .CLK(clk_c), .CLR(nReset_c), .E(
        y_30), .Q(ballCnt3q[0]));
    XOR2 fadd6_nc_5t0_s2 (.A(c2), .B(axb2m), .Y(cnt_6_2));
    CM8 fadd6_nc_5t0_c5 (.D0(c4_0), .D1(c2), .D2(ballCnt3q[4]), .D3(
        y_29), .S00(axb3m), .S01(axb2m), .S10(axb4mi), .S11(GNDZ0), .Y(
        c5));
    XOR2 fadd1_6t6_s0 (.A(fadd6_nc_5t0_c), .B(axb0m), .Y(cnt_6_6));
    DFE3C q_3 (.D(cnt_6_3), .CLK(clk_c), .CLR(nReset_c), .E(y_30), .Q(
        ballCnt3q[3]));
    DFE3C q_6 (.D(cnt_6_6), .CLK(clk_c), .CLR(nReset_c), .E(y_30), .Q(
        ballCnt3q[6]));
    XOR2 fadd6_nc_5t0_s3 (.A(c3), .B(axb3m), .Y(cnt_6_3));
    
endmodule


module jamma(dataInput, CoinCounter_c, CoinLockout_c, dd_in, da_c, 
        P_c_17, P_c_16, P_c_0, P_c_20, P_c_5, P_c_25, P_c_1, P_c_21, 
        P_c_6, P_c_26, P_c_2, P_c_22, P_c_7, P_c_27, P_c_23, P_c_10, 
        P_c_11, P_c_12, P_c_15, P_c_13, P_c_9, P_c_19, P_c_28, P_c_18, 
        P_c_24, P_c_14, noice_1, noice_2, nDior_c_i, clk_c, 
        nDior_c_i_0, N_388, N_367, o1, nDiow_c, y_18, dataInput7, 
        nReset_c, read, nDior_c, nCS1_c, nCS0_c, acces);
output  [6:0] dataInput;
output  [2:1] CoinCounter_c;
output  [2:1] CoinLockout_c;
input  [7:0] dd_in;
input  [2:0] da_c;
input  P_c_17, P_c_16, P_c_0, P_c_20, P_c_5, P_c_25, P_c_1, P_c_21, 
        P_c_6, P_c_26, P_c_2, P_c_22, P_c_7, P_c_27, P_c_23, P_c_10, 
        P_c_11, P_c_12, P_c_15, P_c_13, P_c_9, P_c_19, P_c_28, P_c_18, 
        P_c_24, P_c_14;
output  noice_1, noice_2;
input  nDior_c_i, clk_c, nDior_c_i_0, N_388, N_367, o1, nDiow_c, y_18;
output  dataInput7;
input  nReset_c;
output  read;
input  nDior_c, nCS1_c, nCS0_c;
output  acces;

    wire y_9, y_11, y_12, y_10, y_13, y_14, y_15, y_16, N_751, y_2, 
        resCntrZ0Z_0, N_615_n, y_38, N_616_n, y_31, y_17, y_3, y_32, 
        y_76, y_33, y_77, y_52, N_268_1, y_78, y_79, y_80, y_34, y_81, 
        y_39, y_82, y_53, y_54, y_55, y_56, y_57, y_58, y_59, 
        setSectorZ0Z_7, setSectorZ0, CntrIsZ0Z0, y_75, resCntrZ0, 
        csDevReg, bDeviceZ0, key0_4, csCylLo, keyZ0Z0, key1_4, csCylHi, 
        keyZ0Z1, key2_4, csSectAddr, y_84, keyZ0Z2, bCounter_l0, 
        dataReg8, bCounter_l3, bCounter_l2, bCounter_l1, y_74, y_50, 
        countZ0Z_14, y_49, countZ0Z_13, y_48, countZ0Z_12, y_47, 
        countZ0Z_11, y_46, countZ0Z_10, y_45, countZ0Z_9, y_44, 
        countZ0Z_8, y_43, csErrReg_0, countZ0Z_7, count_6_6, 
        countZ0Z_6, y_42, countZ0Z_5, count_6_4, countZ0Z_4, count_6_3, 
        countZ0Z_3, y_41, countZ0Z_2, count_6_1, countZ0Z_1, y_40, 
        countZ0Z_0, noiceZ0Z_12, noiceZ0Z_11, noiceZ0Z_10, noiceZ0Z_9, 
        noiceZ0Z_8, noiceZ0Z_7, noiceZ0Z_6, noiceZ0Z_5, noiceZ0Z_4, 
        noiceZ0Z_3, y_83, noiceZ0Z_0, y_51, csErrReg, countZ0Z_15, 
        noiceZ0Z_15, noiceZ0Z_13, noiceZ0Z_14, bCounterZ0Z_0, 
        bCounterZ0Z_1, bCounterZ0Z_2, bCounterZ0Z_3, bCounter_0Z0Z_0, 
        bCounter_0Z0Z_1, bCounter_0Z0Z_2, bCounter_0Z0Z_3, 
        bCounter_1Z0Z_2, ballCnt0q_0, ballCnt0q_1, ballCnt0q_2, 
        ballCnt0q_3, ballCnt0q_4, ballCnt0q_5, ballCnt0q_6, 
        ballCnt1q_0, ballCnt1q_1, ballCnt1q_2, ballCnt1q_3, 
        ballCnt1q_4, ballCnt1q_5, ballCnt1q_6, ballCnt2q_0, 
        ballCnt2q_1, ballCnt2q_2, ballCnt2q_3, ballCnt2q_4, 
        ballCnt2q_5, ballCnt2q_6, ballCnt3q_0, ballCnt3q_1, 
        ballCnt3q_2, ballCnt3q_3, ballCnt3q_4, ballCnt3q_5, 
        ballCnt3q_6, VCCZ0, GNDZ0, un5_noice_cm8iZ0, 
        count_6_0_and2_i_cm8iZ0Z_5, key0_4_0_and2_0_and2_cm8iZ0, 
        csDevReg_0_and2_0_and2_cm8iZ0, G_29_0_0_cm8iZ0, 
        bCounter_l3_0_and2_0_and2_cm8iZ0, 
        bCounter_l2_0_and2_0_and2_cm8iZ0, 
        bCounter_l1_0_and2_0_and2_cm8iZ0, dataInput7_0_0_mux2_cm8iZ0, 
        count_6_0_and2_0_and2_cm8iZ0Z_1, 
        count_6_0_and2_0_and2_cm8iZ0Z_3, 
        count_6_0_and2_0_and2_cm8iZ0Z_4, 
        count_6_0_and2_0_and2_cm8iZ0Z_6, count_6_0_and2_i_cm8iZ0Z_2, 
        count_6_0_and2_i_cm8iZ0Z_7, count_6_0_and2_i_cm8iZ0Z_8;
    
    OR4A G_447_61 (.A(countZ0Z_1), .B(countZ0Z_9), .C(countZ0Z_5), .D(
        countZ0Z_4), .Y(y_9));
    CM8 bCounter_l2_0_and2_0_and2 (.D0(GNDZ0), .D1(VCCZ0), .D2(
        bCounter_l2_0_and2_0_and2_cm8iZ0), .D3(GNDZ0), .S00(
        bCounter_l2_0_and2_0_and2_cm8iZ0), .S01(bCounter_1Z0Z_2), .S10(
        N_616_n), .S11(GNDZ0), .Y(bCounter_l2));
    NAND2 un6_countx_c7_0 (.A(y_58), .B(y_56), .Y(y_52));
    AND3 un6_count_c6_0 (.A(countZ0Z_12), .B(countZ0Z_13), .C(
        countZ0Z_14), .Y(y_53));
    DFE3C count_5 (.D(y_42), .CLK(nDior_c), .CLR(nReset_c), .E(
        csErrReg), .Q(countZ0Z_5));
    DFE3C count_11 (.D(y_47), .CLK(nDior_c), .CLR(nReset_c), .E(
        csErrReg_0), .Q(countZ0Z_11));
    DFC1B noice_14 (.D(noiceZ0Z_13), .CLK(nDior_c), .CLR(nReset_c), .Q(
        noiceZ0Z_14));
    DFC1B noice_11 (.D(noiceZ0Z_10), .CLK(nDior_c), .CLR(nReset_c), .Q(
        noiceZ0Z_11));
    QUAD_COUNTER_2 ballCnt2 (.P_c({P_c_12, P_c_11}), .ballCnt2q({
        ballCnt2q_6, ballCnt2q_5, ballCnt2q_4, ballCnt2q_3, 
        ballCnt2q_2, ballCnt2q_1, ballCnt2q_0}), .nDior_c_i(nDior_c_i), 
        .nDior_c_i_0(nDior_c_i_0), .nReset_c(nReset_c), .clk_c(clk_c), 
        .nDior_c(nDior_c));
    DFC1B setSector (.D(setSectorZ0Z_7), .CLK(nDiow_c), .CLR(nReset_c), 
        .Q(setSectorZ0));
    CM8 count_6_0_and2_0_and2_4 (.D0(GNDZ0), .D1(
        count_6_0_and2_0_and2_cm8iZ0Z_4), .D2(
        count_6_0_and2_0_and2_cm8iZ0Z_4), .D3(GNDZ0), .S00(y_58), .S01(
        VCCZ0), .S10(countZ0Z_4), .S11(GNDZ0), .Y(count_6_4));
    AND2B count_6_0_and2_i_0 (.A(countZ0Z_0), .B(resCntrZ0), .Y(y_40));
    DFE3C dataReg_2 (.D(dd_in[2]), .CLK(nDiow_c), .CLR(nReset_c), .E(
        dataReg8), .Q(CoinLockout_c[1]));
    OR3 G_447_59 (.A(countZ0Z_8), .B(countZ0Z_2), .C(countZ0Z_6), .Y(
        y_11));
    DFE3C count_4 (.D(count_6_4), .CLK(nDior_c), .CLR(nReset_c), .E(
        csErrReg), .Q(countZ0Z_4));
    OR4C csCylHi_0_and2_0_and2 (.A(N_751), .B(da_c[2]), .C(da_c[0]), 
        .D(da_c[1]), .Y(csCylHi));
    AND2B key2_4_0_and2_0_and2_41 (.A(dd_in[2]), .B(dd_in[3]), .Y(y_14)
        );
    AND4A key2_4_0_and2_0_and2 (.A(dd_in[7]), .B(dd_in[4]), .C(y_13), 
        .D(y_14), .Y(key2_4));
    AND4 key2_4_0_and2_0_and2_44 (.A(dd_in[5]), .B(dd_in[0]), .C(
        dd_in[6]), .D(dd_in[1]), .Y(y_13));
    OR4B csCylLo_0_and2_0_and2 (.A(N_751), .B(da_c[2]), .C(da_c[1]), 
        .D(da_c[0]), .Y(csCylLo));
    DFE3C count_15 (.D(y_51), .CLK(nDior_c), .CLR(nReset_c), .E(
        csErrReg), .Q(countZ0Z_15));
    DFE3C count_0 (.D(y_40), .CLK(nDior_c), .CLR(nReset_c), .E(
        csErrReg), .Q(countZ0Z_0));
    CM8 G_29_0_0 (.D0(VCCZ0), .D1(VCCZ0), .D2(da_c[0]), .D3(
        G_29_0_0_cm8iZ0), .S00(acces), .S01(da_c[2]), .S10(da_c[0]), 
        .S11(y_31), .Y(y_74));
    AND2A count_6_0_and2_i_14 (.A(resCntrZ0Z_0), .B(y_77), .Y(y_50));
    OR4 G_447 (.A(y_9), .B(y_11), .C(y_12), .D(y_10), .Y(y_38));
    DFE3C bCounter_1 (.D(bCounter_l1), .CLK(nDior_c), .CLR(nReset_c), 
        .E(y_74), .Q(bCounterZ0Z_1));
    DFC1B noice_15 (.D(noiceZ0Z_14), .CLK(nDior_c), .CLR(nReset_c), .Q(
        noiceZ0Z_15));
    CM8INV bCounter_l2_0_and2_0_and2_cm8i (.A(da_c[2]), .Y(
        bCounter_l2_0_and2_0_and2_cm8iZ0));
    AND3 un6_count_c2 (.A(countZ0Z_0), .B(countZ0Z_1), .C(countZ0Z_2), 
        .Y(y_59));
    GND GND (.Y(GNDZ0));
    CM8INV count_6_0_and2_0_and2_cm8i_6 (.A(resCntrZ0), .Y(
        count_6_0_and2_0_and2_cm8iZ0Z_6));
    AX1C un6_count_10 (.A(y_39), .B(y_34), .C(countZ0Z_10), .Y(y_81));
    CM8INV count_6_0_and2_0_and2_cm8i_1 (.A(resCntrZ0), .Y(
        count_6_0_and2_0_and2_cm8iZ0Z_1));
    AND3 un6_countx_c13_0_and2_0_and2 (.A(y_54), .B(countZ0Z_12), .C(
        countZ0Z_13), .Y(y_33));
    DFC1B noice_9 (.D(noiceZ0Z_8), .CLK(nDior_c), .CLR(nReset_c), .Q(
        noiceZ0Z_9));
    DFE3C count_12 (.D(y_48), .CLK(nDior_c), .CLR(nReset_c), .E(
        csErrReg_0), .Q(countZ0Z_12));
    DFC1B resCntr_0 (.D(y_75), .CLK(nDior_c), .CLR(y_84), .Q(
        resCntrZ0Z_0));
    CM8INV csDevReg_0_and2_0_and2_cm8i (.A(nCS1_c), .Y(
        csDevReg_0_and2_0_and2_cm8iZ0));
    AND2A count_6_0_and2_i_11 (.A(resCntrZ0Z_0), .B(y_80), .Y(y_47));
    DFE3C bDevice (.D(dd_in[4]), .CLK(nDiow_c), .CLR(nReset_c), .E(
        csDevReg), .Q(bDeviceZ0));
    CM8INV count_6_0_and2_i_cm8i_5 (.A(resCntrZ0), .Y(
        count_6_0_and2_i_cm8iZ0Z_5));
    OR4 G_447_60 (.A(countZ0Z_12), .B(countZ0Z_13), .C(countZ0Z_3), .D(
        countZ0Z_10), .Y(y_10));
    AX1 un6_count_15 (.A(y_52), .B(y_32), .C(countZ0Z_15), .Y(y_76));
    CM8INV dataInput7_0_0_mux2_cm8i (.A(N_615_n), .Y(
        dataInput7_0_0_mux2_cm8iZ0));
    DFC1B noice_4 (.D(noiceZ0Z_3), .CLK(nDior_c), .CLR(nReset_c), .Q(
        noiceZ0Z_4));
    CM8INV count_6_0_and2_0_and2_cm8i_4 (.A(resCntrZ0), .Y(
        count_6_0_and2_0_and2_cm8iZ0Z_4));
    CM8 bCounter_l3_0_and2_0_and2 (.D0(GNDZ0), .D1(
        bCounter_l3_0_and2_0_and2_cm8iZ0), .D2(
        bCounter_l3_0_and2_0_and2_cm8iZ0), .D3(GNDZ0), .S00(N_616_n), 
        .S01(bCounter_1Z0Z_2), .S10(bCounterZ0Z_3), .S11(GNDZ0), .Y(
        bCounter_l3));
    DFE3C count_1 (.D(count_6_1), .CLK(nDior_c), .CLR(nReset_c), .E(
        csErrReg), .Q(countZ0Z_1));
    DFE3C count_3 (.D(count_6_3), .CLK(nDior_c), .CLR(nReset_c), .E(
        csErrReg), .Q(countZ0Z_3));
    VCC VCC (.Y(VCCZ0));
    AX1 un6_count_14 (.A(y_52), .B(y_33), .C(countZ0Z_14), .Y(y_77));
    CM8 key0_4_0_and2_0_and2 (.D0(GNDZ0), .D1(y_17), .D2(GNDZ0), .D3(
        GNDZ0), .S00(key0_4_0_and2_0_and2_cm8iZ0), .S01(dd_in[5]), 
        .S10(dd_in[3]), .S11(dd_in[1]), .Y(key0_4));
    CM8INV bCounter_l1_0_and2_0_and2_cm8i (.A(da_c[2]), .Y(
        bCounter_l1_0_and2_0_and2_cm8iZ0));
    DFE3C count_14 (.D(y_50), .CLK(nDior_c), .CLR(nReset_c), .E(
        csErrReg_0), .Q(countZ0Z_14));
    OR4B csErrReg_0_and2_0_and2 (.A(da_c[0]), .B(acces), .C(da_c[1]), 
        .D(da_c[2]), .Y(csErrReg));
    CM8 csDevReg_0_and2_0_and2 (.D0(VCCZ0), .D1(da_c[0]), .D2(VCCZ0), 
        .D3(VCCZ0), .S00(da_c[1]), .S01(da_c[2]), .S10(
        csDevReg_0_and2_0_and2_cm8iZ0), .S11(nCS0_c), .Y(csDevReg));
    DFE3C bCounter_0_1 (.D(bCounter_l1), .CLK(nDior_c), .CLR(nReset_c), 
        .E(y_74), .Q(bCounter_0Z0Z_1));
    CM8 dataReg8_0_and2_0_and2_91 (.D0(GNDZ0), .D1(acces), .D2(GNDZ0), 
        .D3(GNDZ0), .S00(dd_in[4]), .S01(dd_in[6]), .S10(dd_in[7]), 
        .S11(dd_in[5]), .Y(y_3));
    AND2 G_418_n (.A(bCounterZ0Z_0), .B(bCounter_0Z0Z_1), .Y(N_616_n));
    AND2A count_6_0_and2_i_13 (.A(resCntrZ0Z_0), .B(y_78), .Y(y_49));
    DFC1B noice_7 (.D(noiceZ0Z_6), .CLK(nDior_c), .CLR(nReset_c), .Q(
        noiceZ0Z_7));
    AND2A count_6_0_and2_i_12 (.A(resCntrZ0Z_0), .B(y_79), .Y(y_48));
    AND3B G_409 (.A(da_c[2]), .B(da_c[1]), .C(acces), .Y(y_31));
    CM8 count_6_0_and2_0_and2_3 (.D0(GNDZ0), .D1(
        count_6_0_and2_0_and2_cm8iZ0Z_3), .D2(
        count_6_0_and2_0_and2_cm8iZ0Z_3), .D3(GNDZ0), .S00(y_59), .S01(
        VCCZ0), .S10(countZ0Z_3), .S11(GNDZ0), .Y(count_6_3));
    CM8INV bCounter_l3_0_and2_0_and2_cm8i (.A(da_c[2]), .Y(
        bCounter_l3_0_and2_0_and2_cm8iZ0));
    AND4 un6_count_c3_0 (.A(countZ0Z_8), .B(countZ0Z_9), .C(
        countZ0Z_10), .D(countZ0Z_11), .Y(y_54));
    AND2B bCounter_l0_0_and2_0_and2 (.A(da_c[2]), .B(bCounterZ0Z_0), 
        .Y(bCounter_l0));
    AND4 setSector_7 (.A(keyZ0Z1), .B(CntrIsZ0Z0), .C(keyZ0Z2), .D(
        keyZ0Z0), .Y(setSectorZ0Z_7));
    DFE3C count_10 (.D(y_46), .CLK(nDior_c), .CLR(nReset_c), .E(
        csErrReg_0), .Q(countZ0Z_10));
    CM8INV G_29_0_0_cm8i (.A(da_c[1]), .Y(G_29_0_0_cm8iZ0));
    DFE3C key2 (.D(key2_4), .CLK(nDiow_c), .CLR(y_84), .E(csSectAddr), 
        .Q(keyZ0Z2));
    AND2 G_412 (.A(y_54), .B(countZ0Z_12), .Y(N_268_1));
    AND4 un6_count_c3 (.A(countZ0Z_0), .B(countZ0Z_1), .C(countZ0Z_2), 
        .D(countZ0Z_3), .Y(y_58));
    OR4B csErrReg_0_and2_0_and2_0 (.A(da_c[0]), .B(acces), .C(da_c[1]), 
        .D(da_c[2]), .Y(csErrReg_0));
    CM8 bCounter_l1_0_and2_0_and2 (.D0(GNDZ0), .D1(VCCZ0), .D2(
        bCounter_l1_0_and2_0_and2_cm8iZ0), .D3(GNDZ0), .S00(
        bCounter_l1_0_and2_0_and2_cm8iZ0), .S01(bCounterZ0Z_0), .S10(
        bCounter_0Z0Z_1), .S11(GNDZ0), .Y(bCounter_l1));
    AND3B G_414 (.A(nCS0_c), .B(bDeviceZ0), .C(nCS1_c), .Y(N_751));
    AND2A count_6_0_and2_i_15 (.A(resCntrZ0Z_0), .B(y_76), .Y(y_51));
    DFC1B noice_0 (.D(y_83), .CLK(nDior_c), .CLR(nReset_c), .Q(
        noiceZ0Z_0));
    DFE3C key1 (.D(key1_4), .CLK(nDiow_c), .CLR(y_84), .E(csCylHi), .Q(
        keyZ0Z1));
    DFE3C CntrIs0 (.D(resCntrZ0), .CLK(nDior_c), .CLR(nReset_c), .E(
        csErrReg_0), .Q(CntrIsZ0Z0));
    OR4 G_447_58 (.A(countZ0Z_14), .B(countZ0Z_11), .C(countZ0Z_15), 
        .D(countZ0Z_7), .Y(y_12));
    CM8INV key0_4_0_and2_0_and2_cm8i (.A(dd_in[6]), .Y(
        key0_4_0_and2_0_and2_cm8iZ0));
    CM8INV count_6_0_and2_0_and2_cm8i_3 (.A(resCntrZ0), .Y(
        count_6_0_and2_0_and2_cm8iZ0Z_3));
    DFE3C bCounter_0_3 (.D(bCounter_l3), .CLK(nDior_c), .CLR(nReset_c), 
        .E(y_74), .Q(bCounter_0Z0Z_3));
    DFC1B noice_6 (.D(noiceZ0Z_5), .CLK(nDior_c), .CLR(nReset_c), .Q(
        noiceZ0Z_6));
    AX1C un6_count_9 (.A(y_39), .B(countZ0Z_8), .C(countZ0Z_9), .Y(
        y_82));
    DFE3C count_7 (.D(y_43), .CLK(nDior_c), .CLR(nReset_c), .E(
        csErrReg_0), .Q(countZ0Z_7));
    AND2 G_422 (.A(y_58), .B(y_56), .Y(y_39));
    AX1C un6_count_12 (.A(y_39), .B(y_54), .C(countZ0Z_12), .Y(y_79));
    DFE3C count_13 (.D(y_49), .CLK(nDior_c), .CLR(nReset_c), .E(
        csErrReg_0), .Q(countZ0Z_13));
    AND3 un6_count_c6 (.A(countZ0Z_4), .B(countZ0Z_5), .C(countZ0Z_6), 
        .Y(y_57));
    AND3B read_0_and2_0_and2 (.A(da_c[0]), .B(nDior_c), .C(y_31), .Y(
        read));
    DFC1B noice_5 (.D(noiceZ0Z_4), .CLK(nDior_c), .CLR(nReset_c), .Q(
        noiceZ0Z_5));
    CM8 count_6_0_and2_i_2 (.D0(GNDZ0), .D1(count_6_0_and2_i_cm8iZ0Z_2)
        , .D2(count_6_0_and2_i_cm8iZ0Z_2), .D3(GNDZ0), .S00(countZ0Z_1)
        , .S01(countZ0Z_0), .S10(countZ0Z_2), .S11(GNDZ0), .Y(y_41));
    DFE3C count_6 (.D(count_6_6), .CLK(nDior_c), .CLR(nReset_c), .E(
        csErrReg), .Q(countZ0Z_6));
    AND2A un1_setSector (.A(setSectorZ0), .B(nReset_c), .Y(y_84));
    DFC1B noiceZ0Z_2 (.D(noice_1), .CLK(nDior_c), .CLR(nReset_c), .Q(
        noice_2));
    QUAD_COUNTER ballCnt0 (.P_c({P_c_2, P_c_1}), .ballCnt0q({
        ballCnt0q_6, ballCnt0q_5, ballCnt0q_4, ballCnt0q_3, 
        ballCnt0q_2, ballCnt0q_1, ballCnt0q_0}), .nDior_c_i_0(
        nDior_c_i_0), .nReset_c(nReset_c), .clk_c(clk_c), .nDior_c(
        nDior_c));
    CM8 count_6_0_and2_i_5 (.D0(GNDZ0), .D1(count_6_0_and2_i_cm8iZ0Z_5)
        , .D2(count_6_0_and2_i_cm8iZ0Z_5), .D3(GNDZ0), .S00(countZ0Z_4)
        , .S01(y_58), .S10(countZ0Z_5), .S11(GNDZ0), .Y(y_42));
    CM8 G_417_n (.D0(VCCZ0), .D1(countZ0Z_0), .D2(bCounterZ0Z_3), .D3(
        bCounter_1Z0Z_2), .S00(bCounterZ0Z_0), .S01(VCCZ0), .S10(
        bCounter_0Z0Z_1), .S11(GNDZ0), .Y(N_615_n));
    CM8 un5_noice (.D0(un5_noice_cm8iZ0), .D1(noiceZ0Z_15), .D2(
        noiceZ0Z_15), .D3(un5_noice_cm8iZ0), .S00(y_18), .S01(VCCZ0), 
        .S10(noiceZ0Z_4), .S11(GNDZ0), .Y(y_83));
    DFE3C key0 (.D(key0_4), .CLK(nDiow_c), .CLR(y_84), .E(csCylLo), .Q(
        keyZ0Z0));
    DFE3C bCounter_0 (.D(bCounter_l0), .CLK(nDior_c), .CLR(nReset_c), 
        .E(y_74), .Q(bCounterZ0Z_0));
    DFE3C count_2 (.D(y_41), .CLK(nDior_c), .CLR(nReset_c), .E(
        csErrReg), .Q(countZ0Z_2));
    DFC1B noice_13 (.D(noiceZ0Z_12), .CLK(nDior_c), .CLR(nReset_c), .Q(
        noiceZ0Z_13));
    OR4C csSectAddr_0_and2_0_and2 (.A(da_c[0]), .B(N_751), .C(da_c[1]), 
        .D(da_c[2]), .Y(csSectAddr));
    CM8INV count_6_0_and2_i_cm8i_2 (.A(resCntrZ0), .Y(
        count_6_0_and2_i_cm8iZ0Z_2));
    QUAD_COUNTER_1 ballCnt1 (.ballCnt1q({ballCnt1q_6, ballCnt1q_5, 
        ballCnt1q_4, ballCnt1q_3, ballCnt1q_2, ballCnt1q_1, 
        ballCnt1q_0}), .nDior_c_i_0(nDior_c_i_0), .nReset_c(nReset_c), 
        .clk_c(clk_c), .o1(o1), .N_388(N_388), .nDior_c(nDior_c));
    DFC1B noice_10 (.D(noiceZ0Z_9), .CLK(nDior_c), .CLR(nReset_c), .Q(
        noiceZ0Z_10));
    mux_16_6 imux_16_6 (.bCounter({bCounterZ0Z_3, bCounterZ0Z_2, 
        bCounterZ0Z_1, bCounterZ0Z_0}), .dataInput({dataInput[6], 
        dataInput[5], dataInput[4], dataInput[3], dataInput[2], 
        dataInput[1], dataInput[0]}), .ballCnt3q({ballCnt3q_6, 
        ballCnt3q_5, ballCnt3q_4, ballCnt3q_3, ballCnt3q_2, 
        ballCnt3q_1, ballCnt3q_0}), .ballCnt1q({ballCnt1q_6, 
        ballCnt1q_5, ballCnt1q_4, ballCnt1q_3, ballCnt1q_2, 
        ballCnt1q_1, ballCnt1q_0}), .ballCnt2q({ballCnt2q_6, 
        ballCnt2q_5, ballCnt2q_4, ballCnt2q_3, ballCnt2q_2, 
        ballCnt2q_1, ballCnt2q_0}), .bCounter_0({bCounter_0Z0Z_3, 
        bCounter_0Z0Z_2, bCounter_0Z0Z_1, bCounter_0Z0Z_0}), 
        .ballCnt0q({ballCnt0q_6, ballCnt0q_5, ballCnt0q_4, ballCnt0q_3, 
        ballCnt0q_2, ballCnt0q_1, ballCnt0q_0}), .P_c_14(P_c_14), 
        .P_c_24(P_c_24), .P_c_18(P_c_18), .P_c_28(P_c_28), .P_c_19(
        P_c_19), .P_c_9(P_c_9), .P_c_13(P_c_13), .P_c_15(P_c_15), 
        .P_c_12(P_c_12), .P_c_11(P_c_11), .P_c_10(P_c_10), .P_c_23(
        P_c_23), .P_c_27(P_c_27), .P_c_7(P_c_7), .P_c_22(P_c_22), 
        .P_c_2(P_c_2), .P_c_26(P_c_26), .P_c_6(P_c_6), .P_c_21(P_c_21), 
        .P_c_1(P_c_1), .P_c_25(P_c_25), .P_c_5(P_c_5), .P_c_20(P_c_20), 
        .P_c_0(P_c_0), .P_c_16(P_c_16), .P_c_17(P_c_17), 
        .\bCounter_1[2] (bCounter_1Z0Z_2), .o1(o1), .N_367(N_367), 
        .N_388(N_388));
    AND4B key1_4_0_and2_0_and2_39 (.A(dd_in[1]), .B(dd_in[2]), .C(
        dd_in[0]), .D(dd_in[3]), .Y(y_15));
    AND2A count_6_0_and2_i_9 (.A(resCntrZ0Z_0), .B(y_82), .Y(y_45));
    DFC1B resCntr (.D(y_75), .CLK(nDior_c), .CLR(y_84), .Q(resCntrZ0));
    DFC1B noice_8 (.D(noiceZ0Z_7), .CLK(nDior_c), .CLR(nReset_c), .Q(
        noiceZ0Z_8));
    DFC1B noiceZ0Z_1 (.D(noiceZ0Z_0), .CLK(nDior_c), .CLR(nReset_c), 
        .Q(noice_1));
    CM8 dataInput7_0_0_mux2 (.D0(dataInput7_0_0_mux2_cm8iZ0), .D1(
        noiceZ0Z_15), .D2(GNDZ0), .D3(GNDZ0), .S00(y_38), .S01(VCCZ0), 
        .S10(GNDZ0), .S11(GNDZ0), .Y(dataInput7));
    DFC1B noice_12 (.D(noiceZ0Z_11), .CLK(nDior_c), .CLR(nReset_c), .Q(
        noiceZ0Z_12));
    CM8 count_6_0_and2_0_and2_1 (.D0(GNDZ0), .D1(
        count_6_0_and2_0_and2_cm8iZ0Z_1), .D2(
        count_6_0_and2_0_and2_cm8iZ0Z_1), .D3(GNDZ0), .S00(countZ0Z_0), 
        .S01(VCCZ0), .S10(countZ0Z_1), .S11(GNDZ0), .Y(count_6_1));
    DFE3C bCounter_3 (.D(bCounter_l3), .CLK(nDior_c), .CLR(nReset_c), 
        .E(y_74), .Q(bCounterZ0Z_3));
    DFE3C bCounter_2 (.D(bCounter_l2), .CLK(nDior_c), .CLR(nReset_c), 
        .E(y_74), .Q(bCounterZ0Z_2));
    DFE3C bCounter_0_0 (.D(bCounter_l0), .CLK(nDior_c), .CLR(nReset_c), 
        .E(y_74), .Q(bCounter_0Z0Z_0));
    AX1C un6_count_11 (.A(y_39), .B(y_55), .C(countZ0Z_11), .Y(y_80));
    AND3 un6_count_c2_0 (.A(countZ0Z_8), .B(countZ0Z_9), .C(
        countZ0Z_10), .Y(y_55));
    AND2B key1_4_0_and2_0_and2_36 (.A(dd_in[5]), .B(dd_in[6]), .Y(y_16)
        );
    AND3A G_384 (.A(nCS0_c), .B(nCS1_c), .C(bDeviceZ0), .Y(acces));
    CM8 count_6_0_and2_i_7 (.D0(GNDZ0), .D1(count_6_0_and2_i_cm8iZ0Z_7)
        , .D2(count_6_0_and2_i_cm8iZ0Z_7), .D3(GNDZ0), .S00(y_57), 
        .S01(y_58), .S10(countZ0Z_7), .S11(GNDZ0), .Y(y_43));
    AND2A count_6_0_and2_i_10 (.A(resCntrZ0Z_0), .B(y_81), .Y(y_46));
    DFE3C dataReg_0 (.D(dd_in[0]), .CLK(nDiow_c), .CLR(nReset_c), .E(
        dataReg8), .Q(CoinCounter_c[1]));
    DFC1B noice_3 (.D(noice_2), .CLK(nDior_c), .CLR(nReset_c), .Q(
        noiceZ0Z_3));
    AND4B key0_4_0_and2_0_and2_34 (.A(dd_in[7]), .B(dd_in[4]), .C(
        dd_in[2]), .D(dd_in[0]), .Y(y_17));
    OR4D dataReg8_0_and2_0_and2 (.A(da_c[1]), .B(da_c[2]), .C(y_3), .D(
        da_c[0]), .Y(dataReg8));
    DFE3C count_9 (.D(y_45), .CLK(nDior_c), .CLR(nReset_c), .E(
        csErrReg_0), .Q(countZ0Z_9));
    CM8 resCntr_0_0_0 (.D0(resCntrZ0Z_0), .D1(VCCZ0), .D2(GNDZ0), .D3(
        GNDZ0), .S00(y_31), .S01(y_2), .S10(GNDZ0), .S11(GNDZ0), .Y(
        y_75));
    AND2 un6_count_c1_0_0_and2_0_and2 (.A(countZ0Z_8), .B(countZ0Z_9), 
        .Y(y_34));
    CM8INV un5_noice_cm8i (.A(noiceZ0Z_15), .Y(un5_noice_cm8iZ0));
    CM8 count_6_0_and2_0_and2_6 (.D0(GNDZ0), .D1(y_58), .D2(
        count_6_0_and2_0_and2_cm8iZ0Z_6), .D3(count_6_4), .S00(
        countZ0Z_4), .S01(countZ0Z_5), .S10(countZ0Z_6), .S11(
        resCntrZ0), .Y(count_6_6));
    AND4A key1_4_0_and2_0_and2 (.A(dd_in[7]), .B(dd_in[4]), .C(y_15), 
        .D(y_16), .Y(key1_4));
    DFE3C bCounter_1_2 (.D(bCounter_l2), .CLK(nDior_c), .CLR(nReset_c), 
        .E(y_74), .Q(bCounter_1Z0Z_2));
    CM8INV count_6_0_and2_i_cm8i_8 (.A(resCntrZ0Z_0), .Y(
        count_6_0_and2_i_cm8iZ0Z_8));
    DFE3C dataReg_1 (.D(dd_in[1]), .CLK(nDiow_c), .CLR(nReset_c), .E(
        dataReg8), .Q(CoinCounter_c[2]));
    AND2 un6_countx_c14_0_and2_0_and2 (.A(y_54), .B(y_53), .Y(y_32));
    DFE3C count_8 (.D(y_44), .CLK(nDior_c), .CLR(nReset_c), .E(
        csErrReg_0), .Q(countZ0Z_8));
    CM8INV count_6_0_and2_i_cm8i_7 (.A(resCntrZ0Z_0), .Y(
        count_6_0_and2_i_cm8iZ0Z_7));
    AND4 un6_count_c7 (.A(countZ0Z_4), .B(countZ0Z_5), .C(countZ0Z_6), 
        .D(countZ0Z_7), .Y(y_56));
    AX1C un6_count_13 (.A(y_39), .B(N_268_1), .C(countZ0Z_13), .Y(y_78)
        );
    DFE3C dataReg_3 (.D(dd_in[3]), .CLK(nDiow_c), .CLR(nReset_c), .E(
        dataReg8), .Q(CoinLockout_c[2]));
    AND3A resCntr_0_0_0_and2_94 (.A(y_38), .B(da_c[0]), .C(countZ0Z_0), 
        .Y(y_2));
    CM8 count_6_0_and2_i_8 (.D0(GNDZ0), .D1(VCCZ0), .D2(
        count_6_0_and2_i_cm8iZ0Z_8), .D3(GNDZ0), .S00(
        count_6_0_and2_i_cm8iZ0Z_8), .S01(y_39), .S10(countZ0Z_8), 
        .S11(GNDZ0), .Y(y_44));
    QUAD_COUNTER_3 ballCnt3 (.P_c({P_c_14, P_c_13}), .ballCnt3q({
        ballCnt3q_6, ballCnt3q_5, ballCnt3q_4, ballCnt3q_3, 
        ballCnt3q_2, ballCnt3q_1, ballCnt3q_0}), .nDior_c_i(nDior_c_i), 
        .nReset_c(nReset_c), .clk_c(clk_c), .nDior_c(nDior_c));
    DFE3C bCounter_0_2 (.D(bCounter_l2), .CLK(nDior_c), .CLR(nReset_c), 
        .E(y_74), .Q(bCounter_0Z0Z_2));
    
endmodule


module memory(dCga, dMem_in, dMemOut, dVga, \state_1[1] , \state[1] , 
        y_112, nCs_c, y_107, N_189_i, nWe_c, nOe_c, dirout_i, 
        halfclk_i, halfclk, dirout_0, nReset_c, clk_c, access_i, 
        wrVgaReq, dirout, access);
output  [7:0] dCga;
input  [7:0] dMem_in;
output  [7:0] dMemOut;
input  [7:0] dVga;
input  \state_1[1] ;
output  \state[1] ;
input  y_112;
output  nCs_c;
input  y_107, N_189_i;
output  nWe_c, nOe_c, dirout_i, halfclk_i, halfclk, dirout_0;
input  nReset_c, clk_c, access_i;
output  wrVgaReq, dirout;
input  access;

    wire y_116, y_115, wrRequestZ0, rdBuf6, VCCZ0, GNDZ0, 
        un1_t3_1_0_cm8iZ0;
    
    DFE3C dCgaZ0Z_3 (.D(dMem_in[3]), .CLK(clk_c), .CLR(nReset_c), .E(
        rdBuf6), .Q(dCga[3]));
    DFE1B dMemOutZ0Z_2 (.D(dVga[2]), .CLK(clk_c), .E(y_112), .Q(
        dMemOut[2]));
    DFE3C dCgaZ0Z_5 (.D(dMem_in[5]), .CLK(clk_c), .CLR(nReset_c), .E(
        rdBuf6), .Q(dCga[5]));
    DFE3C dCgaZ0Z_2 (.D(dMem_in[2]), .CLK(clk_c), .CLR(nReset_c), .E(
        rdBuf6), .Q(dCga[2]));
    DFE1B dMemOutZ0Z_7 (.D(dVga[7]), .CLK(clk_c), .E(y_112), .Q(
        dMemOut[7]));
    DFE1B dMemOutZ0Z_3 (.D(dVga[3]), .CLK(clk_c), .E(y_112), .Q(
        dMemOut[3]));
    DFE1B dMemOutZ0Z_1 (.D(dVga[1]), .CLK(clk_c), .E(y_112), .Q(
        dMemOut[1]));
    DFE3C dCgaZ0Z_1 (.D(dMem_in[1]), .CLK(clk_c), .CLR(nReset_c), .E(
        rdBuf6), .Q(dCga[1]));
    DF1 stateZ0Z_1 (.D(\state_1[1] ), .CLK(clk_c), .Q(\state[1] ));
    VCC VCC (.Y(VCCZ0));
    CM8 un1_t3_0 (.D0(dirout_0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(halfclk), .S01(VCCZ0), .S10(\state[1] ), .S11(GNDZ0), .Y(
        y_116));
    DFE3C dCgaZ0Z_0 (.D(dMem_in[0]), .CLK(clk_c), .CLR(nReset_c), .E(
        rdBuf6), .Q(dCga[0]));
    CM8 un1_t3_1_0 (.D0(un1_t3_1_0_cm8iZ0), .D1(VCCZ0), .D2(VCCZ0), 
        .D3(GNDZ0), .S00(halfclk), .S01(VCCZ0), .S10(\state[1] ), .S11(
        GNDZ0), .Y(y_115));
    DFE3C diroutZ0 (.D(wrRequestZ0), .CLK(clk_c), .CLR(nReset_c), .E(
        access_i), .Q(dirout));
    CM8 halfclk_iZ0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(halfclk), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        halfclk_i));
    DFE3C dCgaZ0Z_6 (.D(dMem_in[6]), .CLK(clk_c), .CLR(nReset_c), .E(
        rdBuf6), .Q(dCga[6]));
    GND GND (.Y(GNDZ0));
    DFE3C diroutZ0Z_0 (.D(wrRequestZ0), .CLK(clk_c), .CLR(nReset_c), 
        .E(access_i), .Q(dirout_0));
    DFE3C wrRequest (.D(N_189_i), .CLK(clk_c), .CLR(nReset_c), .E(
        y_107), .Q(wrRequestZ0));
    DFE4F nCsMem (.D(halfclk), .CLK(clk_c), .PRE(nReset_c), .E(
        \state_1[1] ), .Q(nCs_c));
    DFE4F nWeMem (.D(halfclk), .CLK(clk_c), .PRE(nReset_c), .E(y_115), 
        .Q(nWe_c));
    CM8INV un1_t3_1_0_cm8i (.A(dirout_0), .Y(un1_t3_1_0_cm8iZ0));
    DFE1B dMemOutZ0Z_6 (.D(dVga[6]), .CLK(clk_c), .E(y_112), .Q(
        dMemOut[6]));
    DF1 state_0 (.D(halfclk_i), .CLK(clk_c), .Q(halfclk));
    DFE1B dMemOutZ0Z_0 (.D(dVga[0]), .CLK(clk_c), .E(y_112), .Q(
        dMemOut[0]));
    CM8 dirout_iZ0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(dirout), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        dirout_i));
    OR2A rdBuf6_0_and2 (.A(access), .B(dirout), .Y(rdBuf6));
    DFE1B dMemOutZ0Z_5 (.D(dVga[5]), .CLK(clk_c), .E(y_112), .Q(
        dMemOut[5]));
    DFE1B dMemOutZ0Z_4 (.D(dVga[4]), .CLK(clk_c), .E(y_112), .Q(
        dMemOut[4]));
    DFE4F nOeMem (.D(halfclk), .CLK(clk_c), .PRE(nReset_c), .E(y_116), 
        .Q(nOe_c));
    DFE3C dCgaZ0Z_7 (.D(dMem_in[7]), .CLK(clk_c), .CLR(nReset_c), .E(
        rdBuf6), .Q(dCga[7]));
    DFE3C dCgaZ0Z_4 (.D(dMem_in[4]), .CLK(clk_c), .CLR(nReset_c), .E(
        rdBuf6), .Q(dCga[4]));
    OR2B wrVgaReq_0_and2 (.A(access), .B(dirout), .Y(wrVgaReq));
    
endmodule


module vga(dVga, pixel, aVga, iVideo_c, y_109, hsync_c_0, clk_c, 
        wrVgaReq, y_111, vsync_c, hsync_c, y_110, y_108, y_114);
output  [7:0] dVga;
output  [3:0] pixel;
output  [15:0] aVga;
input  iVideo_c, y_109, hsync_c_0, clk_c, wrVgaReq, y_111, vsync_c, 
        hsync_c, y_110, y_108;
output  y_114;

    wire N_82_n, y, v_n2, aVga_iZ0Z_7, v_n5, v_n3, v_n8, v_n7, v_n6, 
        N_2_i, aVga_iZ0Z_0, pixel_n3, pixel_n2, pixel_iZ0Z_0, h_n4, 
        h_n3, h_n2, h_n6, h_n5, y_113, GNDZ0, VCCZ0, 
        un1_v_0_and2_105_cm8iZ0, h_n6_0_xor2_cm8iZ0, 
        v_n7_0_xor2_cm8iZ0, v_n8_0_xor2_cm8iZ0, h_n5_0_xor2_cm8iZ0, 
        h_n4_0_xor2_cm8iZ0, v_n6_0_xor2_cm8iZ0, h_n2_0_xor2_cm8iZ0, 
        pixel_n2_0_xor2_cm8iZ0, v_n5_0_xor2_cm8iZ0, v_n2_0_xor2_cm8iZ0;
    
    DFE3D v_5 (.D(v_n5), .CLK(hsync_c), .CLR(vsync_c), .E(N_2_i), .Q(
        aVga[12]));
    DFE3C h_2 (.D(h_n2), .CLK(clk_c), .CLR(hsync_c_0), .E(wrVgaReq), 
        .Q(aVga[2]));
    CM8 v_n8_0_xor2 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(VCCZ0), 
        .S00(aVga[15]), .S01(VCCZ0), .S10(v_n8_0_xor2_cm8iZ0), .S11(
        y_114), .Y(v_n8));
    DFC1B pixelZ0Z_3 (.D(pixel_n3), .CLK(clk_c), .CLR(hsync_c), .Q(
        pixel[3]));
    CM8INV pixel_n2_0_xor2_cm8i (.A(pixel[1]), .Y(
        pixel_n2_0_xor2_cm8iZ0));
    CM8 v_n7_0_xor2 (.D0(aVga[14]), .D1(v_n7_0_xor2_cm8iZ0), .D2(
        aVga[14]), .D3(aVga[14]), .S00(aVga[12]), .S01(aVga[13]), .S10(
        y_114), .S11(y_110), .Y(v_n7));
    DFE3C h_6 (.D(h_n6), .CLK(clk_c), .CLR(hsync_c_0), .E(wrVgaReq), 
        .Q(aVga[6]));
    CM8 v_n2_0_xor2 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(VCCZ0), 
        .S00(aVga[9]), .S01(VCCZ0), .S10(v_n2_0_xor2_cm8iZ0), .S11(
        aVga_iZ0Z_7), .Y(v_n2));
    DFE3D v_3 (.D(v_n3), .CLK(hsync_c), .CLR(vsync_c), .E(N_2_i), .Q(
        aVga[10]));
    DFE3D v_1 (.D(y_111), .CLK(hsync_c), .CLR(vsync_c), .E(N_2_i), .Q(
        aVga[8]));
    VCC VCC (.Y(VCCZ0));
    CM8INV h_n5_0_xor2_cm8i (.A(h_n3), .Y(h_n5_0_xor2_cm8iZ0));
    DFE3C h_3 (.D(h_n3), .CLK(clk_c), .CLR(hsync_c_0), .E(wrVgaReq), 
        .Q(aVga[3]));
    DFE3D v_6 (.D(v_n6), .CLK(hsync_c), .CLR(vsync_c), .E(N_2_i), .Q(
        aVga[13]));
    DFE3D v_2 (.D(v_n2), .CLK(hsync_c), .CLR(vsync_c), .E(N_2_i), .Q(
        aVga[9]));
    CM8 pixel_n2_0_xor2 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(VCCZ0)
        , .S00(pixel[2]), .S01(VCCZ0), .S10(pixel_n2_0_xor2_cm8iZ0), 
        .S11(pixel_iZ0Z_0), .Y(pixel_n2));
    CM8INV h_n4_0_xor2_cm8i (.A(aVga[4]), .Y(h_n4_0_xor2_cm8iZ0));
    CM8 pixel_i_0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(pixel[0]), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        pixel_iZ0Z_0));
    DFC1B pixelZ0Z_0 (.D(pixel_iZ0Z_0), .CLK(clk_c), .CLR(hsync_c_0), 
        .Q(pixel[0]));
    CM8INV h_n2_0_xor2_cm8i (.A(aVga[1]), .Y(h_n2_0_xor2_cm8iZ0));
    DF1 dVgaZ0Z_7 (.D(dVga[6]), .CLK(clk_c), .Q(dVga[7]));
    DF1 dVgaZ0Z_4 (.D(dVga[3]), .CLK(clk_c), .Q(dVga[4]));
    CM8 h_n3_0_xor2 (.D0(GNDZ0), .D1(aVga[0]), .D2(VCCZ0), .D3(
        aVga_iZ0Z_0), .S00(aVga[1]), .S01(aVga[2]), .S10(aVga[3]), 
        .S11(GNDZ0), .Y(h_n3));
    CM8INV v_n5_0_xor2_cm8i (.A(aVga[11]), .Y(v_n5_0_xor2_cm8iZ0));
    CM8 h_n5_0_xor2 (.D0(GNDZ0), .D1(h_n5_0_xor2_cm8iZ0), .D2(VCCZ0), 
        .D3(h_n3), .S00(aVga[3]), .S01(aVga[4]), .S10(aVga[5]), .S11(
        GNDZ0), .Y(h_n5));
    CM8 h_n4_0_xor2 (.D0(aVga[4]), .D1(h_n4_0_xor2_cm8iZ0), .D2(
        aVga[4]), .D3(aVga[4]), .S00(aVga[2]), .S01(aVga[3]), .S10(
        aVga_iZ0Z_0), .S11(y_108), .Y(h_n4));
    GND GND (.Y(GNDZ0));
    OR2B un1_v_0_and2_102_n (.A(aVga[10]), .B(aVga[13]), .Y(N_82_n));
    DF1 dVgaZ0Z_3 (.D(dVga[2]), .CLK(clk_c), .Q(dVga[3]));
    CM8INV h_n6_0_xor2_cm8i (.A(h_n4), .Y(h_n6_0_xor2_cm8iZ0));
    DFE3C h_4 (.D(h_n4), .CLK(clk_c), .CLR(hsync_c_0), .E(wrVgaReq), 
        .Q(aVga[4]));
    CM8INV v_n2_0_xor2_cm8i (.A(aVga[8]), .Y(v_n2_0_xor2_cm8iZ0));
    CM8 h_n6_0_xor2 (.D0(GNDZ0), .D1(h_n6_0_xor2_cm8iZ0), .D2(VCCZ0), 
        .D3(h_n4), .S00(aVga[4]), .S01(aVga[5]), .S10(aVga[6]), .S11(
        GNDZ0), .Y(h_n6));
    DFC1B pixelZ0Z_2 (.D(pixel_n2), .CLK(clk_c), .CLR(hsync_c_0), .Q(
        pixel[2]));
    DF1 dVgaZ0Z_5 (.D(dVga[4]), .CLK(clk_c), .Q(dVga[5]));
    AND4 v_ca7 (.A(aVga[11]), .B(aVga[12]), .C(aVga[13]), .D(aVga[14]), 
        .Y(y_113));
    CM8 aVga_i_0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), .S00(
        aVga[0]), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        aVga_iZ0Z_0));
    DF1 dVgaZ0Z_2 (.D(dVga[1]), .CLK(clk_c), .Q(dVga[2]));
    DFE3C h_1 (.D(y_108), .CLK(clk_c), .CLR(hsync_c_0), .E(wrVgaReq), 
        .Q(aVga[1]));
    DFE3D v_0 (.D(aVga_iZ0Z_7), .CLK(hsync_c), .CLR(vsync_c), .E(N_2_i)
        , .Q(aVga[7]));
    CM8 un1_v_0_and2_105 (.D0(GNDZ0), .D1(aVga[11]), .D2(GNDZ0), .D3(
        GNDZ0), .S00(aVga[14]), .S01(aVga[12]), .S10(
        un1_v_0_and2_105_cm8iZ0), .S11(N_82_n), .Y(y));
    DF1 dVgaZ0Z_1 (.D(dVga[0]), .CLK(clk_c), .Q(dVga[1]));
    DFE3D v_4 (.D(y_110), .CLK(hsync_c), .CLR(vsync_c), .E(N_2_i), .Q(
        aVga[11]));
    CM8INV v_n6_0_xor2_cm8i (.A(y_114), .Y(v_n6_0_xor2_cm8iZ0));
    DFC1B pixelZ0Z_1 (.D(y_109), .CLK(clk_c), .CLR(hsync_c_0), .Q(
        pixel[1]));
    CM8INV un1_v_0_and2_105_cm8i (.A(aVga[15]), .Y(
        un1_v_0_and2_105_cm8iZ0));
    CM8 h_n2_0_xor2 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(VCCZ0), 
        .S00(aVga[2]), .S01(VCCZ0), .S10(h_n2_0_xor2_cm8iZ0), .S11(
        aVga_iZ0Z_0), .Y(h_n2));
    CM8INV v_n7_0_xor2_cm8i (.A(aVga[14]), .Y(v_n7_0_xor2_cm8iZ0));
    DFE3D v_7 (.D(v_n7), .CLK(hsync_c), .CLR(vsync_c), .E(N_2_i), .Q(
        aVga[14]));
    AND3A un1_v_0_and2 (.A(v_n2), .B(y), .C(aVga[9]), .Y(N_2_i));
    DF1 dVgaZ0Z_0 (.D(iVideo_c), .CLK(clk_c), .Q(dVga[0]));
    CM8 v_n3_0_xor2 (.D0(GNDZ0), .D1(aVga[7]), .D2(VCCZ0), .D3(
        aVga_iZ0Z_7), .S00(aVga[8]), .S01(aVga[9]), .S10(aVga[10]), 
        .S11(GNDZ0), .Y(v_n3));
    DFE3D v_8 (.D(v_n8), .CLK(hsync_c), .CLR(vsync_c), .E(N_2_i), .Q(
        aVga[15]));
    DF1 dVgaZ0Z_6 (.D(dVga[5]), .CLK(clk_c), .Q(dVga[6]));
    CM8 pixel_n3_0 (.D0(GNDZ0), .D1(pixel[0]), .D2(VCCZ0), .D3(
        pixel_iZ0Z_0), .S00(pixel[1]), .S01(pixel[2]), .S10(pixel[3]), 
        .S11(GNDZ0), .Y(pixel_n3));
    CM8 aVga_i_7 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), .S00(
        aVga[7]), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        aVga_iZ0Z_7));
    CM8 v_n5_0_xor2 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(VCCZ0), 
        .S00(aVga[12]), .S01(VCCZ0), .S10(v_n5_0_xor2_cm8iZ0), .S11(
        y_114), .Y(v_n5));
    NAND4 v_ca3 (.A(aVga[7]), .B(aVga[8]), .C(aVga[9]), .D(aVga[10]), 
        .Y(y_114));
    DFE3C h_0 (.D(aVga_iZ0Z_0), .CLK(clk_c), .CLR(hsync_c_0), .E(
        wrVgaReq), .Q(aVga[0]));
    DFE3C h_5 (.D(h_n5), .CLK(clk_c), .CLR(hsync_c_0), .E(wrVgaReq), 
        .Q(aVga[5]));
    CM8 v_n6_0_xor2 (.D0(GNDZ0), .D1(v_n6_0_xor2_cm8iZ0), .D2(VCCZ0), 
        .D3(y_114), .S00(aVga[11]), .S01(aVga[12]), .S10(aVga[13]), 
        .S11(GNDZ0), .Y(v_n6));
    CM8INV v_n8_0_xor2_cm8i (.A(y_113), .Y(v_n8_0_xor2_cm8iZ0));
    
endmodule


module cgaega(dCga, aCga, halfclk_i, access_i, nReset_c, clk_c, ega_c, 
        csync_c, access, oVideo_c);
input  [7:0] dCga;
output  [15:0] aCga;
input  halfclk_i, access_i, nReset_c, clk_c, ega_c;
output  csync_c;
input  access;
output  oVideo_c;

    wire y_4, y_8, y_6, y_5, y_1, w_end_of_lineZ0, y_106, y_85, N_28_n, 
        y_7, N_51_n, y_0, c1, x2, y_86, y_91, y_87, y_88, y_89, y_99, 
        y_90, aCga_iZ0Z_1, hsyncZ0Z14, hsyncZ0, aCga_iZ0Z_9, 
        vsyncZ0Z14, vsyncZ0, hframe_6, vframe_8, vframeZ0, frameZ0Z_1, 
        hframeZ0, byteRateZ0, frameZ0Z_0, y_101, y_102, y_103, y_104, 
        y_105, hcnt_6Z0Z_0, vcnt_10Z0Z_8, vcnt_10Z0Z_7, y_92, y_93, 
        y_94, y_95, y_96, y_97, y_98, bRate_4_1, bRateZ0Z_1, bRate_4_0, 
        bRateZ0Z_0, shifter_6Z0Z_7, shifterZ0Z_7, shifter_6Z0Z_6, 
        shifterZ0Z_6, shifter_6Z0Z_5, shifterZ0Z_5, shifter_6Z0Z_4, 
        shifterZ0Z_4, shifter_6Z0Z_3, shifterZ0Z_3, shifter_6Z0Z_2, 
        shifterZ0Z_2, shifter_6Z0Z_1, shifterZ0Z_1, shifter_6Z0Z_0, 
        shifterZ0Z_0, y_100, VCCZ0, GNDZ0, 
        un1_w_end_of_line_2_99_cm8iZ0, w_hframe_end_71_n_cm8iZ0, 
        vsync14_67_cm8iZ0, hsync14_cm8iZ0, un1_vcnt_2_cm8iZ0Z_6, 
        vframe_8_f0_cm8iZ0, hframe_6_f0_cm8iZ0, vcnt_10_cm8iZ0Z_7;
    
    AND3 video (.A(vframeZ0), .B(shifterZ0Z_7), .C(frameZ0Z_1), .Y(
        oVideo_c));
    DFC1B vcnt_2 (.D(y_96), .CLK(clk_c), .CLR(nReset_c), .Q(aCga[9]));
    XOR2 un1_vcnt_2_4 (.A(y_89), .B(aCga[10]), .Y(y_95));
    CM8 hsync14 (.D0(VCCZ0), .D1(N_28_n), .D2(VCCZ0), .D3(VCCZ0), .S00(
        aCga[4]), .S01(aCga[2]), .S10(hsync14_cm8iZ0), .S11(aCga[0]), 
        .Y(hsyncZ0Z14));
    CM8 hframe_6_f0 (.D0(GNDZ0), .D1(GNDZ0), .D2(VCCZ0), .D3(N_51_n), 
        .S00(aCga[6]), .S01(hframe_6_f0_cm8iZ0), .S10(hframeZ0), .S11(
        w_end_of_lineZ0), .Y(hframe_6));
    DFE3C hframe (.D(hframe_6), .CLK(clk_c), .CLR(nReset_c), .E(
        access_i), .Q(hframeZ0));
    CM8 shifter_6_6 (.D0(dCga[6]), .D1(shifterZ0Z_5), .D2(GNDZ0), .D3(
        GNDZ0), .S00(byteRateZ0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0)
        , .Y(shifter_6Z0Z_6));
    CM8 shifter_6_3 (.D0(dCga[3]), .D1(shifterZ0Z_2), .D2(GNDZ0), .D3(
        GNDZ0), .S00(byteRateZ0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0)
        , .Y(shifter_6Z0Z_3));
    AND2B hcnt_6_0 (.A(aCga[0]), .B(w_end_of_lineZ0), .Y(hcnt_6Z0Z_0));
    DFE3C hcnt_5 (.D(y_101), .CLK(clk_c), .CLR(nReset_c), .E(access_i), 
        .Q(aCga[5]));
    DF1 bRate_1 (.D(bRate_4_1), .CLK(clk_c), .Q(bRateZ0Z_1));
    CM8INV vframe_8_f0_cm8i (.A(y_1), .Y(vframe_8_f0_cm8iZ0));
    AND2A vsync14_64 (.A(aCga[15]), .B(aCga[8]), .Y(y_8));
    XOR2 un1_vcnt_2_3 (.A(y_90), .B(aCga[9]), .Y(y_96));
    DFE3C frame_0 (.D(hframeZ0), .CLK(clk_c), .CLR(nReset_c), .E(
        byteRateZ0), .Q(frameZ0Z_0));
    AND2 I_53_c1 (.A(y_85), .B(aCga[4]), .Y(c1));
    DFE3C hcnt_2 (.D(y_104), .CLK(clk_c), .CLR(nReset_c), .E(access_i), 
        .Q(aCga[2]));
    CM8 aCga_i_9 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), .S00(
        aCga[9]), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        aCga_iZ0Z_9));
    DFE3C shifter_5 (.D(shifter_6Z0Z_5), .CLK(clk_c), .CLR(nReset_c), 
        .E(halfclk_i), .Q(shifterZ0Z_5));
    CM8 un1_w_end_of_line_2_99 (.D0(GNDZ0), .D1(
        un1_w_end_of_line_2_99_cm8iZ0), .D2(GNDZ0), .D3(GNDZ0), .S00(
        aCga[14]), .S01(aCga[13]), .S10(aCga[10]), .S11(aCga[7]), .Y(
        y_0));
    CM8 aCga_i_1 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), .S00(
        aCga[1]), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        aCga_iZ0Z_1));
    CM8INV vcnt_10_cm8i_7 (.A(aCga[14]), .Y(vcnt_10_cm8iZ0Z_7));
    AND4C w_end_of_line_85 (.A(aCga[2]), .B(aCga[6]), .C(aCga[5]), .D(
        aCga_iZ0Z_1), .Y(y_4));
    DFC1B vcnt_6 (.D(y_92), .CLK(clk_c), .CLR(nReset_c), .Q(aCga[13]));
    VCC VCC (.Y(VCCZ0));
    CM8 vcnt_10_8 (.D0(y_91), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), .S00(
        access), .S01(y_106), .S10(GNDZ0), .S11(GNDZ0), .Y(
        vcnt_10Z0Z_8));
    AND2A shifter_6_0 (.A(byteRateZ0), .B(dCga[0]), .Y(shifter_6Z0Z_0));
    AND2 un1_vcnt_2x_c7 (.A(y_89), .B(y_87), .Y(y_86));
    DFE3C shifter_7 (.D(shifter_6Z0Z_7), .CLK(clk_c), .CLR(nReset_c), 
        .E(halfclk_i), .Q(shifterZ0Z_7));
    DFE3C shifter_0 (.D(shifter_6Z0Z_0), .CLK(clk_c), .CLR(nReset_c), 
        .E(halfclk_i), .Q(shifterZ0Z_0));
    CM8INV hframe_6_f0_cm8i (.A(aCga[0]), .Y(hframe_6_f0_cm8iZ0));
    CM8 I_53_s1 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), .S00(
        aCga[4]), .S01(y_85), .S10(aCga[5]), .S11(GNDZ0), .Y(y_101));
    CM8INV w_hframe_end_71_n_cm8i (.A(aCga[5]), .Y(
        w_hframe_end_71_n_cm8iZ0));
    AND4B w_end_of_frame_77 (.A(aCga[11]), .B(aCga[12]), .C(
        aCga_iZ0Z_9), .D(aCga[14]), .Y(y_5));
    CM8INV hsync14_cm8i (.A(aCga[6]), .Y(hsync14_cm8iZ0));
    CM8 vcnt_10_7 (.D0(aCga[14]), .D1(GNDZ0), .D2(vcnt_10_cm8iZ0Z_7), 
        .D3(GNDZ0), .S00(access), .S01(y_106), .S10(y_86), .S11(GNDZ0), 
        .Y(vcnt_10Z0Z_7));
    DFE3C frame_1 (.D(frameZ0Z_0), .CLK(clk_c), .CLR(nReset_c), .E(
        byteRateZ0), .Q(frameZ0Z_1));
    DFE3C hcnt_6 (.D(y_100), .CLK(clk_c), .CLR(nReset_c), .E(access_i), 
        .Q(aCga[6]));
    DFC1B vcnt_8 (.D(vcnt_10Z0Z_8), .CLK(clk_c), .CLR(nReset_c), .Q(
        aCga[15]));
    DFC1B vcnt_1 (.D(y_97), .CLK(clk_c), .CLR(nReset_c), .Q(aCga[8]));
    CM8 shifter_6_4 (.D0(dCga[4]), .D1(shifterZ0Z_3), .D2(GNDZ0), .D3(
        GNDZ0), .S00(byteRateZ0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0)
        , .Y(shifter_6Z0Z_4));
    AND4C w_end_of_line (.A(aCga[0]), .B(aCga[4]), .C(aCga[3]), .D(y_4)
        , .Y(w_end_of_lineZ0));
    CM8INV un1_w_end_of_line_2_99_cm8i (.A(aCga[8]), .Y(
        un1_w_end_of_line_2_99_cm8iZ0));
    CM8INV un1_vcnt_2_cm8i_6 (.A(aCga[11]), .Y(un1_vcnt_2_cm8iZ0Z_6));
    CM8 un1_vcnt_2_7 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(y_88), .S01(y_89), .S10(aCga[13]), .S11(GNDZ0), .Y(y_92));
    CM8 shifter_6_2 (.D0(dCga[2]), .D1(shifterZ0Z_1), .D2(GNDZ0), .D3(
        GNDZ0), .S00(byteRateZ0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0)
        , .Y(shifter_6Z0Z_2));
    OR3C vsync14 (.A(y_8), .B(y_7), .C(aCga[10]), .Y(vsyncZ0Z14));
    AND4A un1_w_end_of_line_2_98 (.A(aCga[15]), .B(aCga_iZ0Z_9), .C(
        aCga[11]), .D(aCga[12]), .Y(y_1));
    CM8 I_52_s3_s0 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(x2), .S01(aCga[0]), .S10(aCga[3]), .S11(GNDZ0), .Y(y_103));
    GND GND (.Y(GNDZ0));
    DFC1B vcnt_3 (.D(y_95), .CLK(clk_c), .CLR(nReset_c), .Q(aCga[10]));
    CM8 w_hframe_end_71_n (.D0(VCCZ0), .D1(aCga[2]), .D2(VCCZ0), .D3(
        VCCZ0), .S00(w_hframe_end_71_n_cm8iZ0), .S01(aCga_iZ0Z_1), 
        .S10(aCga[4]), .S11(aCga[3]), .Y(N_51_n));
    AND3 I_52_cry (.A(aCga[0]), .B(aCga[3]), .C(x2), .Y(y_85));
    DFE3C hcnt_1 (.D(y_105), .CLK(clk_c), .CLR(nReset_c), .E(access_i), 
        .Q(aCga[1]));
    DFE3C shifter_6 (.D(shifter_6Z0Z_6), .CLK(clk_c), .CLR(nReset_c), 
        .E(halfclk_i), .Q(shifterZ0Z_6));
    AND4 un1_vcnt_2_c7 (.A(aCga[10]), .B(aCga[11]), .C(aCga[12]), .D(
        aCga[13]), .Y(y_87));
    AND3A un1_access (.A(y_106), .B(access), .C(w_end_of_lineZ0), .Y(
        y_99));
    CM8 shifter_6_7 (.D0(dCga[7]), .D1(shifterZ0Z_6), .D2(GNDZ0), .D3(
        GNDZ0), .S00(byteRateZ0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0)
        , .Y(shifter_6Z0Z_7));
    CM8 shifter_6_1 (.D0(dCga[1]), .D1(shifterZ0Z_0), .D2(GNDZ0), .D3(
        GNDZ0), .S00(byteRateZ0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0)
        , .Y(shifter_6Z0Z_1));
    CM8 byteRate (.D0(VCCZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), .S00(
        bRateZ0Z_0), .S01(access), .S10(bRateZ0Z_1), .S11(ega_c), .Y(
        byteRateZ0));
    DFE3C hcnt_3 (.D(y_103), .CLK(clk_c), .CLR(nReset_c), .E(access_i), 
        .Q(aCga[3]));
    DFE3C vframe (.D(vframe_8), .CLK(clk_c), .CLR(nReset_c), .E(
        access_i), .Q(vframeZ0));
    XOR2 I_53_s0 (.A(y_85), .B(aCga[4]), .Y(y_102));
    CM8 I_52_s2_s0 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(aCga[1]), .S01(aCga[0]), .S10(aCga[2]), .S11(GNDZ0), .Y(
        y_104));
    DFC1B vcnt_4 (.D(y_94), .CLK(clk_c), .CLR(nReset_c), .Q(aCga[11]));
    OR2 hsync14_48_n (.A(aCga[5]), .B(aCga[3]), .Y(N_28_n));
    AND4 un1_vcnt_2_c3 (.A(aCga[7]), .B(y_99), .C(aCga[8]), .D(aCga[9])
        , .Y(y_89));
    CM8 shifter_6_5 (.D0(dCga[5]), .D1(shifterZ0Z_4), .D2(GNDZ0), .D3(
        GNDZ0), .S00(byteRateZ0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0)
        , .Y(shifter_6Z0Z_5));
    DF1 bRate_0 (.D(bRate_4_0), .CLK(clk_c), .Q(bRateZ0Z_0));
    XOR2 csync (.A(vsyncZ0), .B(hsyncZ0), .Y(csync_c));
    CM8 un1_vcnt_2_5 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(aCga[10]), .S01(y_89), .S10(aCga[11]), .S11(GNDZ0), .Y(
        y_94));
    AND3B w_end_of_frame_75 (.A(aCga[8]), .B(aCga[13]), .C(aCga[15]), 
        .Y(y_6));
    CM8INV vsync14_67_cm8i (.A(aCga[14]), .Y(vsync14_67_cm8iZ0));
    CM8 vframe_8_f0 (.D0(GNDZ0), .D1(GNDZ0), .D2(VCCZ0), .D3(
        vframe_8_f0_cm8iZ0), .S00(y_0), .S01(w_end_of_lineZ0), .S10(
        vframeZ0), .S11(y_106), .Y(vframe_8));
    CM8 I_61_s1_s0 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(bRateZ0Z_0), .S01(access), .S10(bRateZ0Z_1), .S11(GNDZ0), 
        .Y(bRate_4_1));
    DFE3C shifter_4 (.D(shifter_6Z0Z_4), .CLK(clk_c), .CLR(nReset_c), 
        .E(halfclk_i), .Q(shifterZ0Z_4));
    CM8 vsync14_67 (.D0(GNDZ0), .D1(aCga[11]), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(aCga[13]), .S01(aCga[12]), .S10(vsync14_67_cm8iZ0), .S11(
        aCga[7]), .Y(y_7));
    DFE3C shifter_2 (.D(shifter_6Z0Z_2), .CLK(clk_c), .CLR(nReset_c), 
        .E(halfclk_i), .Q(shifterZ0Z_2));
    AND3 un1_vcnt_2_c6 (.A(aCga[10]), .B(aCga[11]), .C(aCga[12]), .Y(
        y_88));
    CM8 un1_vcnt_2_6 (.D0(GNDZ0), .D1(aCga[11]), .D2(VCCZ0), .D3(
        un1_vcnt_2_cm8iZ0Z_6), .S00(aCga[10]), .S01(y_89), .S10(
        aCga[12]), .S11(GNDZ0), .Y(y_93));
    AND3 un1_vcnt_2_c2 (.A(aCga[7]), .B(y_99), .C(aCga[8]), .Y(y_90));
    CM8 un1_vcnt_2_2 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(aCga[7]), .S01(y_99), .S10(aCga[8]), .S11(GNDZ0), .Y(y_97)
        );
    XOR2 un1_vcnt_2_1 (.A(y_99), .B(aCga[7]), .Y(y_98));
    DFE3C shifter_1 (.D(shifter_6Z0Z_1), .CLK(clk_c), .CLR(nReset_c), 
        .E(halfclk_i), .Q(shifterZ0Z_1));
    XOR2 I_52_s1 (.A(aCga[0]), .B(aCga[1]), .Y(y_105));
    DFE3C hcnt_4 (.D(y_102), .CLK(clk_c), .CLR(nReset_c), .E(access_i), 
        .Q(aCga[4]));
    DFE3C shifter_3 (.D(shifter_6Z0Z_3), .CLK(clk_c), .CLR(nReset_c), 
        .E(halfclk_i), .Q(shifterZ0Z_3));
    DFE3C vsync (.D(aCga_iZ0Z_9), .CLK(clk_c), .CLR(nReset_c), .E(
        vsyncZ0Z14), .Q(vsyncZ0));
    DFC1B vcnt_0 (.D(y_98), .CLK(clk_c), .CLR(nReset_c), .Q(aCga[7]));
    AND2 I_52_x2 (.A(aCga[1]), .B(aCga[2]), .Y(x2));
    DFC1B vcnt_7 (.D(vcnt_10Z0Z_7), .CLK(clk_c), .CLR(nReset_c), .Q(
        aCga[14]));
    AX1C un1_vcnt_2_9 (.A(y_86), .B(aCga[14]), .C(aCga[15]), .Y(y_91));
    CM8 I_53_s2_s0 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(c1), .S01(aCga[5]), .S10(aCga[6]), .S11(GNDZ0), .Y(y_100));
    DFE3C hsync (.D(aCga_iZ0Z_1), .CLK(clk_c), .CLR(nReset_c), .E(
        hsyncZ0Z14), .Q(hsyncZ0));
    XOR2 I_61_s0 (.A(access), .B(bRateZ0Z_0), .Y(bRate_4_0));
    CM8 un1_w_end_of_line_3 (.D0(GNDZ0), .D1(w_end_of_lineZ0), .D2(
        GNDZ0), .D3(GNDZ0), .S00(y_6), .S01(y_5), .S10(aCga[10]), .S11(
        aCga[7]), .Y(y_106));
    DFC1B vcnt_5 (.D(y_93), .CLK(clk_c), .CLR(nReset_c), .Q(aCga[12]));
    DFE3C hcnt_0 (.D(hcnt_6Z0Z_0), .CLK(clk_c), .CLR(nReset_c), .E(
        access_i), .Q(aCga[0]));
    
endmodule


module scanconv(dMemOut, dMem_in, aMem_c, oVideo_c, csync_c, ega_c, 
        nReset_c, dirout_i, nOe_c, nWe_c, nCs_c, hsync_c, vsync_c, 
        clk_c, hsync_c_0, iVideo_c);
output  [7:0] dMemOut;
input  [7:0] dMem_in;
output  [15:0] aMem_c;
output  oVideo_c, csync_c;
input  ega_c, nReset_c;
output  dirout_i, nOe_c, nWe_c, nCs_c;
input  hsync_c, vsync_c, clk_c, hsync_c_0, iVideo_c;

    wire pixel_0, pixel_1, pixel_2, pixel_3, aVga_0, aVga_1, aVga_2, 
        aVga_3, aVga_4, aVga_5, aVga_6, aVga_7, aVga_8, aVga_9, 
        aVga_10, aVga_11, aVga_12, aVga_13, aVga_14, aVga_15, y_109, 
        y_111, y_110, y_108, y_114, dVga_0, dVga_1, dVga_2, dVga_3, 
        dVga_4, dVga_5, dVga_6, dVga_7, state_1_1, state_1, y_112, 
        y_107, N_189_iZ0, halfclk, dirout_0, wrVgaReq, dirout, dCga_0, 
        dCga_1, dCga_2, dCga_3, dCga_4, dCga_5, dCga_6, dCga_7, aCga_0, 
        aCga_1, aCga_2, aCga_3, aCga_4, aCga_5, aCga_6, aCga_7, aCga_8, 
        aCga_9, aCga_10, aCga_11, aCga_12, aCga_13, aCga_14, aCga_15, 
        halfclk_i, access_iZ0, access, GNDZ0, VCCZ0;
    
    memory imemory (.dCga({dCga_7, dCga_6, dCga_5, dCga_4, dCga_3, 
        dCga_2, dCga_1, dCga_0}), .dMem_in({dMem_in[7], dMem_in[6], 
        dMem_in[5], dMem_in[4], dMem_in[3], dMem_in[2], dMem_in[1], 
        dMem_in[0]}), .dMemOut({dMemOut[7], dMemOut[6], dMemOut[5], 
        dMemOut[4], dMemOut[3], dMemOut[2], dMemOut[1], dMemOut[0]}), 
        .dVga({dVga_7, dVga_6, dVga_5, dVga_4, dVga_3, dVga_2, dVga_1, 
        dVga_0}), .\state_1[1] (state_1_1), .\state[1] (state_1), 
        .y_112(y_112), .nCs_c(nCs_c), .y_107(y_107), .N_189_i(
        N_189_iZ0), .nWe_c(nWe_c), .nOe_c(nOe_c), .dirout_i(dirout_i), 
        .halfclk_i(halfclk_i), .halfclk(halfclk), .dirout_0(dirout_0), 
        .nReset_c(nReset_c), .clk_c(clk_c), .access_i(access_iZ0), 
        .wrVgaReq(wrVgaReq), .dirout(dirout), .access(access));
    CM8 G_250 (.D0(aCga_3), .D1(aVga_3), .D2(GNDZ0), .D3(GNDZ0), .S00(
        dirout_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(aMem_c[3])
        );
    CM8 access_i (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), .S00(
        access), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(access_iZ0));
    XOR2 G_231 (.A(pixel_0), .B(pixel_1), .Y(y_109));
    XOR2 G_229 (.A(aVga_7), .B(aVga_8), .Y(y_111));
    GND GND (.Y(GNDZ0));
    CM8 N_189_i (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), .S00(
        y_112), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(N_189_iZ0));
    CM8 G_256 (.D0(aCga_9), .D1(aVga_9), .D2(GNDZ0), .D3(GNDZ0), .S00(
        dirout), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(aMem_c[9]));
    AND2 G_177 (.A(halfclk), .B(state_1), .Y(access));
    OR4C G_228 (.A(pixel_2), .B(pixel_0), .C(pixel_1), .D(pixel_3), .Y(
        y_112));
    CM8 G_257 (.D0(aCga_10), .D1(aVga_10), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(dirout), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        aMem_c[10]));
    CM8 G_262 (.D0(aCga_15), .D1(aVga_15), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(dirout), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        aMem_c[15]));
    CM8 G_251 (.D0(aCga_4), .D1(aVga_4), .D2(GNDZ0), .D3(GNDZ0), .S00(
        dirout_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(aMem_c[4])
        );
    CM8 G_259 (.D0(aCga_12), .D1(aVga_12), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(dirout), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        aMem_c[12]));
    CM8 G_253 (.D0(aCga_6), .D1(aVga_6), .D2(GNDZ0), .D3(GNDZ0), .S00(
        dirout_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(aMem_c[6])
        );
    CM8 G_247 (.D0(aCga_0), .D1(aVga_0), .D2(GNDZ0), .D3(GNDZ0), .S00(
        dirout_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(aMem_c[0])
        );
    vga ivga (.dVga({dVga_7, dVga_6, dVga_5, dVga_4, dVga_3, dVga_2, 
        dVga_1, dVga_0}), .pixel({pixel_3, pixel_2, pixel_1, pixel_0}), 
        .aVga({aVga_15, aVga_14, aVga_13, aVga_12, aVga_11, aVga_10, 
        aVga_9, aVga_8, aVga_7, aVga_6, aVga_5, aVga_4, aVga_3, aVga_2, 
        aVga_1, aVga_0}), .iVideo_c(iVideo_c), .y_109(y_109), 
        .hsync_c_0(hsync_c_0), .clk_c(clk_c), .wrVgaReq(wrVgaReq), 
        .y_111(y_111), .vsync_c(vsync_c), .hsync_c(hsync_c), .y_110(
        y_110), .y_108(y_108), .y_114(y_114));
    XOR2 G_241 (.A(dirout_0), .B(y_112), .Y(y_107));
    XOR2 I_109_s1_s0 (.A(halfclk), .B(state_1), .Y(state_1_1));
    CM8 G_260 (.D0(aCga_13), .D1(aVga_13), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(dirout), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        aMem_c[13]));
    CM8 G_249 (.D0(aCga_2), .D1(aVga_2), .D2(GNDZ0), .D3(GNDZ0), .S00(
        dirout_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(aMem_c[2])
        );
    XOR2 G_232 (.A(aVga_0), .B(aVga_1), .Y(y_108));
    CM8 G_258 (.D0(aCga_11), .D1(aVga_11), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(dirout), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        aMem_c[11]));
    VCC VCC (.Y(VCCZ0));
    cgaega icgaega (.dCga({dCga_7, dCga_6, dCga_5, dCga_4, dCga_3, 
        dCga_2, dCga_1, dCga_0}), .aCga({aCga_15, aCga_14, aCga_13, 
        aCga_12, aCga_11, aCga_10, aCga_9, aCga_8, aCga_7, aCga_6, 
        aCga_5, aCga_4, aCga_3, aCga_2, aCga_1, aCga_0}), .halfclk_i(
        halfclk_i), .access_i(access_iZ0), .nReset_c(nReset_c), .clk_c(
        clk_c), .ega_c(ega_c), .csync_c(csync_c), .access(access), 
        .oVideo_c(oVideo_c));
    XNOR2 G_230 (.A(y_114), .B(aVga_11), .Y(y_110));
    CM8 G_255 (.D0(aCga_8), .D1(aVga_8), .D2(GNDZ0), .D3(GNDZ0), .S00(
        dirout_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(aMem_c[8])
        );
    CM8 G_248 (.D0(aCga_1), .D1(aVga_1), .D2(GNDZ0), .D3(GNDZ0), .S00(
        dirout_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(aMem_c[1])
        );
    CM8 G_254 (.D0(aCga_7), .D1(aVga_7), .D2(GNDZ0), .D3(GNDZ0), .S00(
        dirout_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(aMem_c[7])
        );
    CM8 G_261 (.D0(aCga_14), .D1(aVga_14), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(dirout), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        aMem_c[14]));
    CM8 G_252 (.D0(aCga_5), .D1(aVga_5), .D2(GNDZ0), .D3(GNDZ0), .S00(
        dirout_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(aMem_c[5])
        );
    
endmodule


module jammaone(da, dd, CoinCounter, CoinLockout, P, aMem, dMem, clk, 
        nReset, nDiow, nDior, nCS0, nCS1, iordy, hsync, vsync, csync, 
        ega, iVideo, oVideo, relay, nCs, nOe, nWe);
input  [2:0] da;
inout  [7:0] dd;
output  [2:1] CoinCounter;
output  [2:1] CoinLockout;
input  [28:0] P;
output  [15:0] aMem;
inout  [7:0] dMem;
input  clk, nReset, nDiow, nDior, nCS0, nCS1;
output  iordy;
input  hsync, vsync;
output  csync;
input  ega, iVideo;
output  oVideo, relay, nCs, nOe, nWe;

    wire GNDZ0, iscanconv_dMemOut_0, iscanconv_dMemOut_1, 
        iscanconv_dMemOut_2, iscanconv_dMemOut_3, iscanconv_dMemOut_4, 
        iscanconv_dMemOut_5, iscanconv_dMemOut_6, iscanconv_dMemOut_7, 
        ijamma_dataInput_0, ijamma_dataInput_1, ijamma_dataInput_2, 
        ijamma_dataInput_3, ijamma_dataInput_4, ijamma_noice_1, 
        ijamma_noice_2, ijamma_dataInput_5, ijamma_dataInput_6, 
        ijamma_read, ijamma_acces, ijamma_dataInput7, clk_c, da_c_0, 
        da_c_1, da_c_2, nDiow_c, nCS0_c, nCS1_c, dd_in_0, dd_in_1, 
        dd_in_2, dd_in_3, dd_in_4, dd_in_5, dd_in_6, dd_in_7, 
        CoinCounter_c_1, CoinCounter_c_2, CoinLockout_c_1, 
        CoinLockout_c_2, P_c_0, P_c_1, P_c_2, P_c_5, P_c_6, P_c_7, 
        P_c_9, P_c_10, P_c_11, P_c_12, P_c_13, P_c_14, P_c_15, P_c_16, 
        P_c_17, P_c_18, P_c_19, P_c_20, P_c_21, P_c_22, P_c_23, P_c_24, 
        P_c_25, P_c_26, P_c_27, P_c_28, hsync_c, vsync_c, csync_c, 
        ega_c, iVideo_c, oVideo_c, aMem_c_0, aMem_c_1, aMem_c_2, 
        aMem_c_3, aMem_c_4, aMem_c_5, aMem_c_6, aMem_c_7, aMem_c_8, 
        aMem_c_9, aMem_c_10, aMem_c_11, aMem_c_12, aMem_c_13, 
        aMem_c_14, aMem_c_15, dMem_in_0, dMem_in_1, dMem_in_2, 
        dMem_in_3, dMem_in_4, dMem_in_5, dMem_in_6, dMem_in_7, nCs_c, 
        nOe_c, nWe_c, nDior_c, nReset_c, VCCZ0, o1, N_367, N_388, 
        nDior_c_iZ0, iscanconv_dirout_i, nDior_c_iZ0Z_0, hsync_c_0, 
        y_18;
    
    INBUF da_pad_1 (.PAD(da[1]), .Y(da_c_1));
    INBUF P_pad_16 (.PAD(P[16]), .Y(P_c_16));
    BIBUF dMem_pad_5 (.PAD(dMem[5]), .D(iscanconv_dMemOut_5), .E(
        iscanconv_dirout_i), .Y(dMem_in_5));
    OUTBUF relay_pad (.PAD(relay), .D(VCCZ0));
    OUTBUF oVideo_pad (.PAD(oVideo), .D(oVideo_c));
    BIBUF dd_pad_3 (.PAD(dd[3]), .D(ijamma_dataInput_3), .E(
        ijamma_read), .Y(dd_in_3));
    INBUF iVideo_pad (.PAD(iVideo), .Y(iVideo_c));
    INBUF P_pad_2 (.PAD(P[2]), .Y(P_c_2));
    OUTBUF aMem_pad_3 (.PAD(aMem[3]), .D(aMem_c_3));
    INBUF P_pad_13 (.PAD(P[13]), .Y(P_c_13));
    INBUF P_pad_9 (.PAD(P[9]), .Y(P_c_9));
    INBUF P_pad_20 (.PAD(P[20]), .Y(P_c_20));
    BIBUF dd_pad_1 (.PAD(dd[1]), .D(ijamma_dataInput_1), .E(
        ijamma_read), .Y(dd_in_1));
    jamma ijamma (.dataInput({ijamma_dataInput_6, ijamma_dataInput_5, 
        ijamma_dataInput_4, ijamma_dataInput_3, ijamma_dataInput_2, 
        ijamma_dataInput_1, ijamma_dataInput_0}), .CoinCounter_c({
        CoinCounter_c_2, CoinCounter_c_1}), .CoinLockout_c({
        CoinLockout_c_2, CoinLockout_c_1}), .dd_in({dd_in_7, dd_in_6, 
        dd_in_5, dd_in_4, dd_in_3, dd_in_2, dd_in_1, dd_in_0}), .da_c({
        da_c_2, da_c_1, da_c_0}), .P_c_17(P_c_17), .P_c_16(P_c_16), 
        .P_c_0(P_c_0), .P_c_20(P_c_20), .P_c_5(P_c_5), .P_c_25(P_c_25), 
        .P_c_1(P_c_1), .P_c_21(P_c_21), .P_c_6(P_c_6), .P_c_26(P_c_26), 
        .P_c_2(P_c_2), .P_c_22(P_c_22), .P_c_7(P_c_7), .P_c_27(P_c_27), 
        .P_c_23(P_c_23), .P_c_10(P_c_10), .P_c_11(P_c_11), .P_c_12(
        P_c_12), .P_c_15(P_c_15), .P_c_13(P_c_13), .P_c_9(P_c_9), 
        .P_c_19(P_c_19), .P_c_28(P_c_28), .P_c_18(P_c_18), .P_c_24(
        P_c_24), .P_c_14(P_c_14), .noice_1(ijamma_noice_1), .noice_2(
        ijamma_noice_2), .nDior_c_i(nDior_c_iZ0), .clk_c(clk_c), 
        .nDior_c_i_0(nDior_c_iZ0Z_0), .N_388(N_388), .N_367(N_367), 
        .o1(o1), .nDiow_c(nDiow_c), .y_18(y_18), .dataInput7(
        ijamma_dataInput7), .nReset_c(nReset_c), .read(ijamma_read), 
        .nDior_c(nDior_c), .nCS1_c(nCS1_c), .nCS0_c(nCS0_c), .acces(
        ijamma_acces));
    OUTBUF nWe_pad (.PAD(nWe), .D(nWe_c));
    VCC VCC (.Y(VCCZ0));
    INBUF P_pad_18 (.PAD(P[18]), .Y(P_c_18));
    BIBUF dMem_pad_3 (.PAD(dMem[3]), .D(iscanconv_dMemOut_3), .E(
        iscanconv_dirout_i), .Y(dMem_in_3));
    OUTBUF aMem_pad_6 (.PAD(aMem[6]), .D(aMem_c_6));
    OUTBUF aMem_pad_1 (.PAD(aMem[1]), .D(aMem_c_1));
    INBUF P_pad_12 (.PAD(P[12]), .Y(P_c_12));
    INBUF ega_pad (.PAD(ega), .Y(ega_c));
    INBUF P_pad_5 (.PAD(P[5]), .Y(P_c_5));
    INBUF P_pad_3 (.PAD(P[3]), .Y(N_388));
    INBUF P_pad_26 (.PAD(P[26]), .Y(P_c_26));
    INBUF P_pad_14 (.PAD(P[14]), .Y(P_c_14));
    BIBUF dMem_pad_6 (.PAD(dMem[6]), .D(iscanconv_dMemOut_6), .E(
        iscanconv_dirout_i), .Y(dMem_in_6));
    BIBUF dMem_pad_1 (.PAD(dMem[1]), .D(iscanconv_dMemOut_1), .E(
        iscanconv_dirout_i), .Y(dMem_in_1));
    BIBUF dd_pad_4 (.PAD(dd[4]), .D(ijamma_dataInput_4), .E(
        ijamma_read), .Y(dd_in_4));
    OUTBUF CoinLockout_pad_1 (.PAD(CoinLockout[1]), .D(CoinLockout_c_1)
        );
    OUTBUF CoinCounter_pad_2 (.PAD(CoinCounter[2]), .D(CoinCounter_c_2)
        );
    INBUF P_pad_23 (.PAD(P[23]), .Y(P_c_23));
    TRIBUFF iordy_pad (.PAD(iordy), .D(VCCZ0), .E(ijamma_acces));
    INBUF nCS0_pad (.PAD(nCS0), .Y(nCS0_c));
    OUTBUF nOe_pad (.PAD(nOe), .D(nOe_c));
    OUTBUF nCs_pad (.PAD(nCs), .D(nCs_c));
    GND GND (.Y(GNDZ0));
    OUTBUF aMem_pad_10 (.PAD(aMem[10]), .D(aMem_c_10));
    INBUF P_pad_4 (.PAD(P[4]), .Y(o1));
    OUTBUF aMem_pad_11 (.PAD(aMem[11]), .D(aMem_c_11));
    BIBUF dd_pad_5 (.PAD(dd[5]), .D(ijamma_dataInput_5), .E(
        ijamma_read), .Y(dd_in_5));
    INBUF P_pad_28 (.PAD(P[28]), .Y(P_c_28));
    INBUF P_pad_17 (.PAD(P[17]), .Y(P_c_17));
    INBUF vsync_pad (.PAD(vsync), .Y(vsync_c));
    CM8 nDior_c_i (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(nDior_c), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        nDior_c_iZ0));
    BIBUF dd_pad_6 (.PAD(dd[6]), .D(ijamma_dataInput_6), .E(
        ijamma_read), .Y(dd_in_6));
    INBUF P_pad_7 (.PAD(P[7]), .Y(P_c_7));
    XOR2 G_25 (.A(ijamma_noice_2), .B(ijamma_noice_1), .Y(y_18));
    INBUF P_pad_22 (.PAD(P[22]), .Y(P_c_22));
    OUTBUF aMem_pad_8 (.PAD(aMem[8]), .D(aMem_c_8));
    INBUF P_pad_24 (.PAD(P[24]), .Y(P_c_24));
    INBUF da_pad_0 (.PAD(da[0]), .Y(da_c_0));
    INBUF P_pad_0 (.PAD(P[0]), .Y(P_c_0));
    BUFF hsync_pad_0 (.A(hsync_c), .Y(hsync_c_0));
    INBUF P_pad_11 (.PAD(P[11]), .Y(P_c_11));
    OUTBUF aMem_pad_13 (.PAD(aMem[13]), .D(aMem_c_13));
    INBUF P_pad_19 (.PAD(P[19]), .Y(P_c_19));
    OUTBUF aMem_pad_9 (.PAD(aMem[9]), .D(aMem_c_9));
    INBUF nDiow_pad (.PAD(nDiow), .Y(nDiow_c));
    OUTBUF aMem_pad_2 (.PAD(aMem[2]), .D(aMem_c_2));
    OUTBUF aMem_pad_14 (.PAD(aMem[14]), .D(aMem_c_14));
    INBUF P_pad_15 (.PAD(P[15]), .Y(P_c_15));
    OUTBUF CoinCounter_pad_1 (.PAD(CoinCounter[1]), .D(CoinCounter_c_1)
        );
    scanconv iscanconv (.dMemOut({iscanconv_dMemOut_7, 
        iscanconv_dMemOut_6, iscanconv_dMemOut_5, iscanconv_dMemOut_4, 
        iscanconv_dMemOut_3, iscanconv_dMemOut_2, iscanconv_dMemOut_1, 
        iscanconv_dMemOut_0}), .dMem_in({dMem_in_7, dMem_in_6, 
        dMem_in_5, dMem_in_4, dMem_in_3, dMem_in_2, dMem_in_1, 
        dMem_in_0}), .aMem_c({aMem_c_15, aMem_c_14, aMem_c_13, 
        aMem_c_12, aMem_c_11, aMem_c_10, aMem_c_9, aMem_c_8, aMem_c_7, 
        aMem_c_6, aMem_c_5, aMem_c_4, aMem_c_3, aMem_c_2, aMem_c_1, 
        aMem_c_0}), .oVideo_c(oVideo_c), .csync_c(csync_c), .ega_c(
        ega_c), .nReset_c(nReset_c), .dirout_i(iscanconv_dirout_i), 
        .nOe_c(nOe_c), .nWe_c(nWe_c), .nCs_c(nCs_c), .hsync_c(hsync_c), 
        .vsync_c(vsync_c), .clk_c(clk_c), .hsync_c_0(hsync_c_0), 
        .iVideo_c(iVideo_c));
    CLKBUF nDior_pad (.PAD(nDior), .Y(nDior_c));
    INBUF hsync_pad (.PAD(hsync), .Y(hsync_c));
    BIBUF dd_pad_2 (.PAD(dd[2]), .D(ijamma_dataInput_2), .E(
        ijamma_read), .Y(dd_in_2));
    OUTBUF aMem_pad_15 (.PAD(aMem[15]), .D(aMem_c_15));
    BIBUF dMem_pad_2 (.PAD(dMem[2]), .D(iscanconv_dMemOut_2), .E(
        iscanconv_dirout_i), .Y(dMem_in_2));
    OUTBUF aMem_pad_7 (.PAD(aMem[7]), .D(aMem_c_7));
    OUTBUF aMem_pad_12 (.PAD(aMem[12]), .D(aMem_c_12));
    INBUF P_pad_27 (.PAD(P[27]), .Y(P_c_27));
    OUTBUF aMem_pad_0 (.PAD(aMem[0]), .D(aMem_c_0));
    INBUF P_pad_1 (.PAD(P[1]), .Y(P_c_1));
    CLKBUF nReset_pad (.PAD(nReset), .Y(nReset_c));
    INBUF nCS1_pad (.PAD(nCS1), .Y(nCS1_c));
    OUTBUF aMem_pad_4 (.PAD(aMem[4]), .D(aMem_c_4));
    INBUF P_pad_8 (.PAD(P[8]), .Y(N_367));
    INBUF P_pad_21 (.PAD(P[21]), .Y(P_c_21));
    INBUF da_pad_2 (.PAD(da[2]), .Y(da_c_2));
    BIBUF dMem_pad_7 (.PAD(dMem[7]), .D(iscanconv_dMemOut_7), .E(
        iscanconv_dirout_i), .Y(dMem_in_7));
    INBUF P_pad_10 (.PAD(P[10]), .Y(P_c_10));
    OUTBUF csync_pad (.PAD(csync), .D(csync_c));
    BIBUF dMem_pad_0 (.PAD(dMem[0]), .D(iscanconv_dMemOut_0), .E(
        iscanconv_dirout_i), .Y(dMem_in_0));
    INBUF P_pad_25 (.PAD(P[25]), .Y(P_c_25));
    OUTBUF aMem_pad_5 (.PAD(aMem[5]), .D(aMem_c_5));
    OUTBUF CoinLockout_pad_2 (.PAD(CoinLockout[2]), .D(CoinLockout_c_2)
        );
    BIBUF dd_pad_0 (.PAD(dd[0]), .D(ijamma_dataInput_0), .E(
        ijamma_read), .Y(dd_in_0));
    BIBUF dMem_pad_4 (.PAD(dMem[4]), .D(iscanconv_dMemOut_4), .E(
        iscanconv_dirout_i), .Y(dMem_in_4));
    BIBUF dd_pad_7 (.PAD(dd[7]), .D(ijamma_dataInput7), .E(ijamma_read)
        , .Y(dd_in_7));
    INBUF P_pad_6 (.PAD(P[6]), .Y(P_c_6));
    CM8 nDior_c_i_0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(nDior_c), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        nDior_c_iZ0Z_0));
    HCLKBUF clk_pad (.PAD(clk), .Y(clk_c));
    
endmodule
