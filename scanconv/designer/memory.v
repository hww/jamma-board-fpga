`timescale 1 ns/100 ps


module memory(dVga, aVga, dCga, aCga, dMem, aMem, clk, reset, wrVga, 
        _csMem, _oeMem, _weMem, t3, halfclk);
input  [7:0] dVga;
input  [15:0] aVga;
output  [7:0] dCga;
input  [15:0] aCga;
inout  [7:0] dMem;
output  [15:0] aMem;
input  clk, reset, wrVga;
output  _csMem, _oeMem, _weMem, t3, halfclk;

    wire stateZ0Z_1, wrCycleZ0, wrBufZ0Z_0, wrBufZ0Z_1, wrBufZ0Z_2, 
        wrBufZ0Z_3, wrBufZ0Z_4, wrBufZ0Z_5, wrBufZ0Z_6, wrBufZ0Z_7, 
        wrRequestZ0, state_1_1, rdBuf6, GNDZ0, VCCZ0, clk_c, reset_c, 
        wrVga_c, dVga_c_0, dVga_c_1, dVga_c_2, dVga_c_3, dVga_c_4, 
        dVga_c_5, dVga_c_6, dVga_c_7, aVga_c_0, aVga_c_1, aVga_c_2, 
        aVga_c_3, aVga_c_4, aVga_c_5, aVga_c_6, aVga_c_7, dCga_c_0, 
        dCga_c_1, dCga_c_2, dCga_c_3, dCga_c_4, dCga_c_5, dCga_c_6, 
        dCga_c_7, aCga_c_0, aCga_c_1, aCga_c_2, aCga_c_3, aCga_c_4, 
        aCga_c_5, aCga_c_6, aCga_c_7, dMem_in_0, dMem_in_1, dMem_in_2, 
        dMem_in_3, dMem_in_4, dMem_in_5, dMem_in_6, dMem_in_7, 
        Z_csMem_c, Z_oeMem_c, Z_weMem_c, t3_c, state_c_0, wrVga_c_iZ0, 
        reset_c_iZ0, state_c_iZ0Z_0, t3_c_iZ0, wrCycle_iZ0, y, y_0, 
        y_1, y_2, y_3, y_4, y_5, y_6, y_7, y_8, y_9, un1_t3_1_0_cm8iZ0;
    
    DFE3C dCgaZ0Z_3 (.D(dMem_in_3), .CLK(clk_c), .CLR(reset_c_iZ0), .E(
        rdBuf6), .Q(dCga_c_3));
    DFE1B wrBuf_1 (.D(dVga_c_1), .CLK(clk_c), .E(wrVga_c_iZ0), .Q(
        wrBufZ0Z_1));
    INBUF dVga_pad_3 (.PAD(dVga[3]), .Y(dVga_c_3));
    INBUF aCga_pad_6 (.PAD(aCga[6]), .Y(aCga_c_6));
    CM8 wrVga_c_i (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(wrVga_c), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        wrVga_c_iZ0));
    AND2 G_92 (.A(state_c_0), .B(stateZ0Z_1), .Y(t3_c));
    OUTBUF dCga_pad_3 (.PAD(dCga[3]), .D(dCga_c_3));
    INBUF aVga_pad_1 (.PAD(aVga[1]), .Y(aVga_c_1));
    DFE1B wrBuf_7 (.D(dVga_c_7), .CLK(clk_c), .E(wrVga_c_iZ0), .Q(
        wrBufZ0Z_7));
    BIBUF dMem_pad_5 (.PAD(dMem[5]), .D(wrBufZ0Z_5), .E(wrCycle_iZ0), 
        .Y(dMem_in_5));
    DFE3C dCgaZ0Z_5 (.D(dMem_in_5), .CLK(clk_c), .CLR(reset_c_iZ0), .E(
        rdBuf6), .Q(dCga_c_5));
    OUTBUF dCga_pad_5 (.PAD(dCga[5]), .D(dCga_c_5));
    OUTBUF dCga_pad_4 (.PAD(dCga[4]), .D(dCga_c_4));
    CM8 G_102 (.D0(aCga_c_0), .D1(aVga_c_0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(wrCycleZ0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_6)
        );
    DFE3C dCgaZ0Z_2 (.D(dMem_in_2), .CLK(clk_c), .CLR(reset_c_iZ0), .E(
        rdBuf6), .Q(dCga_c_2));
    INBUF aVga_pad_3 (.PAD(aVga[3]), .Y(aVga_c_3));
    OUTBUF aMem_pad_3 (.PAD(aMem[3]), .D(y_3));
    CM8 G_99 (.D0(aCga_c_3), .D1(aVga_c_3), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(wrCycleZ0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_3)
        );
    INBUF aCga_pad_3 (.PAD(aCga[3]), .Y(aCga_c_3));
    CM8 G_96 (.D0(aCga_c_6), .D1(aVga_c_6), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(wrCycleZ0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_0)
        );
    DFE4F Z_oeMemZ0 (.D(state_c_0), .CLK(clk_c), .PRE(reset_c_iZ0), .E(
        y_9), .Q(Z_oeMem_c));
    DFE1B wrBuf_5 (.D(dVga_c_5), .CLK(clk_c), .E(wrVga_c_iZ0), .Q(
        wrBufZ0Z_5));
    INBUF aCga_pad_5 (.PAD(aCga[5]), .Y(aCga_c_5));
    CM8 G_95 (.D0(aCga_c_7), .D1(aVga_c_7), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(wrCycleZ0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y));
    INBUF dVga_pad_7 (.PAD(dVga[7]), .Y(dVga_c_7));
    OUTBUF dCga_pad_1 (.PAD(dCga[1]), .D(dCga_c_1));
    DFE3C dCgaZ0Z_1 (.D(dMem_in_1), .CLK(clk_c), .CLR(reset_c_iZ0), .E(
        rdBuf6), .Q(dCga_c_1));
    INBUF aCga_pad_4 (.PAD(aCga[4]), .Y(aCga_c_4));
    XNOR2 G_94 (.A(wrCycleZ0), .B(wrVga_c), .Y(y_7));
    DFE1B wrBuf_6 (.D(dVga_c_6), .CLK(clk_c), .E(wrVga_c_iZ0), .Q(
        wrBufZ0Z_6));
    DFE1B wrBuf_0 (.D(dVga_c_0), .CLK(clk_c), .E(wrVga_c_iZ0), .Q(
        wrBufZ0Z_0));
    INBUF dVga_pad_2 (.PAD(dVga[2]), .Y(dVga_c_2));
    CM8 G_97 (.D0(aCga_c_5), .D1(aVga_c_5), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(wrCycleZ0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_1)
        );
    VCC VCC (.Y(VCCZ0));
    CM8 un1_t3_0 (.D0(wrCycleZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(state_c_0), .S01(VCCZ0), .S10(stateZ0Z_1), .S11(GNDZ0), 
        .Y(y_9));
    CM8 G_100 (.D0(aCga_c_2), .D1(aVga_c_2), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(wrCycleZ0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_4)
        );
    BIBUF dMem_pad_3 (.PAD(dMem[3]), .D(wrBufZ0Z_3), .E(wrCycle_iZ0), 
        .Y(dMem_in_3));
    OUTBUF aMem_pad_6 (.PAD(aMem[6]), .D(y_0));
    OUTBUF aMem_pad_1 (.PAD(aMem[1]), .D(y_5));
    DFE3C dCgaZ0Z_0 (.D(dMem_in_0), .CLK(clk_c), .CLR(reset_c_iZ0), .E(
        rdBuf6), .Q(dCga_c_0));
    INBUF aVga_pad_7 (.PAD(aVga[7]), .Y(aVga_c_7));
    INBUF aCga_pad_1 (.PAD(aCga[1]), .Y(aCga_c_1));
    DFE1B wrBuf_4 (.D(dVga_c_4), .CLK(clk_c), .E(wrVga_c_iZ0), .Q(
        wrBufZ0Z_4));
    CM8 un1_t3_1_0 (.D0(un1_t3_1_0_cm8iZ0), .D1(VCCZ0), .D2(VCCZ0), 
        .D3(GNDZ0), .S00(state_c_0), .S01(VCCZ0), .S10(stateZ0Z_1), 
        .S11(GNDZ0), .Y(y_8));
    XOR2 I_43_s1_s0 (.A(state_c_0), .B(stateZ0Z_1), .Y(state_1_1));
    INBUF aVga_pad_2 (.PAD(aVga[2]), .Y(aVga_c_2));
    DFE4F Z_csMemZ0 (.D(state_c_0), .CLK(clk_c), .PRE(reset_c_iZ0), .E(
        state_1_1), .Q(Z_csMem_c));
    DFE3C wrCycle (.D(wrRequestZ0), .CLK(clk_c), .CLR(reset_c_iZ0), .E(
        t3_c_iZ0), .Q(wrCycleZ0));
    INBUF dVga_pad_6 (.PAD(dVga[6]), .Y(dVga_c_6));
    INBUF wrVga_pad (.PAD(wrVga), .Y(wrVga_c));
    CM8 G_98 (.D0(aCga_c_4), .D1(aVga_c_4), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(wrCycleZ0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_2)
        );
    INBUF dVga_pad_0 (.PAD(dVga[0]), .Y(dVga_c_0));
    DFE3C dCgaZ0Z_6 (.D(dMem_in_6), .CLK(clk_c), .CLR(reset_c_iZ0), .E(
        rdBuf6), .Q(dCga_c_6));
    OUTBUF Z_oeMem_pad (.PAD(_oeMem), .D(Z_oeMem_c));
    BIBUF dMem_pad_6 (.PAD(dMem[6]), .D(wrBufZ0Z_6), .E(wrCycle_iZ0), 
        .Y(dMem_in_6));
    BIBUF dMem_pad_1 (.PAD(dMem[1]), .D(wrBufZ0Z_1), .E(wrCycle_iZ0), 
        .Y(dMem_in_1));
    INBUF aVga_pad_6 (.PAD(aVga[6]), .Y(aVga_c_6));
    INBUF aVga_pad_0 (.PAD(aVga[0]), .Y(aVga_c_0));
    GND GND (.Y(GNDZ0));
    TRIBUFF aMem_pad_10 (.PAD(aMem[10]), .D(GNDZ0), .E(GNDZ0));
    CM8 state_c_i_0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(state_c_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        state_c_iZ0Z_0));
    OUTBUF halfclk_pad (.PAD(halfclk), .D(state_c_0));
    TRIBUFF aMem_pad_11 (.PAD(aMem[11]), .D(GNDZ0), .E(GNDZ0));
    OUTBUF Z_weMem_pad (.PAD(_weMem), .D(Z_weMem_c));
    DFE3C wrRequest (.D(wrVga_c), .CLK(clk_c), .CLR(reset_c_iZ0), .E(
        y_7), .Q(wrRequestZ0));
    INBUF reset_pad (.PAD(reset), .Y(reset_c));
    DFE1B wrBuf_2 (.D(dVga_c_2), .CLK(clk_c), .E(wrVga_c_iZ0), .Q(
        wrBufZ0Z_2));
    TRIBUFF aMem_pad_8 (.PAD(aMem[8]), .D(GNDZ0), .E(GNDZ0));
    TRIBUFF aMem_pad_13 (.PAD(aMem[13]), .D(GNDZ0), .E(GNDZ0));
    INBUF dVga_pad_4 (.PAD(dVga[4]), .Y(dVga_c_4));
    TRIBUFF aMem_pad_9 (.PAD(aMem[9]), .D(GNDZ0), .E(GNDZ0));
    CM8INV un1_t3_1_0_cm8i (.A(wrCycleZ0), .Y(un1_t3_1_0_cm8iZ0));
    OUTBUF aMem_pad_2 (.PAD(aMem[2]), .D(y_4));
    TRIBUFF aMem_pad_14 (.PAD(aMem[14]), .D(GNDZ0), .E(GNDZ0));
    DFE4F Z_weMemZ0 (.D(state_c_0), .CLK(clk_c), .PRE(reset_c_iZ0), .E(
        y_8), .Q(Z_weMem_c));
    INBUF aVga_pad_4 (.PAD(aVga[4]), .Y(aVga_c_4));
    DFE1B wrBuf_3 (.D(dVga_c_3), .CLK(clk_c), .E(wrVga_c_iZ0), .Q(
        wrBufZ0Z_3));
    OUTBUF Z_csMem_pad (.PAD(_csMem), .D(Z_csMem_c));
    DF1 state_0 (.D(state_c_iZ0Z_0), .CLK(clk_c), .Q(state_c_0));
    INBUF dVga_pad_5 (.PAD(dVga[5]), .Y(dVga_c_5));
    OUTBUF dCga_pad_2 (.PAD(dCga[2]), .D(dCga_c_2));
    TRIBUFF aMem_pad_15 (.PAD(aMem[15]), .D(GNDZ0), .E(GNDZ0));
    BIBUF dMem_pad_2 (.PAD(dMem[2]), .D(wrBufZ0Z_2), .E(wrCycle_iZ0), 
        .Y(dMem_in_2));
    OUTBUF aMem_pad_7 (.PAD(aMem[7]), .D(y));
    TRIBUFF aMem_pad_12 (.PAD(aMem[12]), .D(GNDZ0), .E(GNDZ0));
    CM8 wrCycle_i (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(wrCycleZ0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        wrCycle_iZ0));
    OUTBUF aMem_pad_0 (.PAD(aMem[0]), .D(y_6));
    OUTBUF t3_pad (.PAD(t3), .D(t3_c));
    OUTBUF dCga_pad_0 (.PAD(dCga[0]), .D(dCga_c_0));
    OR2A t3_c_i (.A(stateZ0Z_1), .B(state_c_iZ0Z_0), .Y(t3_c_iZ0));
    OR3B rdBuf6_0_and2 (.A(stateZ0Z_1), .B(state_c_0), .C(wrCycleZ0), 
        .Y(rdBuf6));
    OUTBUF dCga_pad_7 (.PAD(dCga[7]), .D(dCga_c_7));
    INBUF aVga_pad_5 (.PAD(aVga[5]), .Y(aVga_c_5));
    CM8 reset_c_i (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(reset_c), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        reset_c_iZ0));
    OUTBUF aMem_pad_4 (.PAD(aMem[4]), .D(y_2));
    INBUF aCga_pad_2 (.PAD(aCga[2]), .Y(aCga_c_2));
    DFE3C dCgaZ0Z_7 (.D(dMem_in_7), .CLK(clk_c), .CLR(reset_c_iZ0), .E(
        rdBuf6), .Q(dCga_c_7));
    BIBUF dMem_pad_7 (.PAD(dMem[7]), .D(wrBufZ0Z_7), .E(wrCycle_iZ0), 
        .Y(dMem_in_7));
    DFE3C dCgaZ0Z_4 (.D(dMem_in_4), .CLK(clk_c), .CLR(reset_c_iZ0), .E(
        rdBuf6), .Q(dCga_c_4));
    INBUF aCga_pad_0 (.PAD(aCga[0]), .Y(aCga_c_0));
    BIBUF dMem_pad_0 (.PAD(dMem[0]), .D(wrBufZ0Z_0), .E(wrCycle_iZ0), 
        .Y(dMem_in_0));
    INBUF aCga_pad_7 (.PAD(aCga[7]), .Y(aCga_c_7));
    OUTBUF dCga_pad_6 (.PAD(dCga[6]), .D(dCga_c_6));
    OUTBUF aMem_pad_5 (.PAD(aMem[5]), .D(y_1));
    INBUF dVga_pad_1 (.PAD(dVga[1]), .Y(dVga_c_1));
    DF1 state_1 (.D(state_1_1), .CLK(clk_c), .Q(stateZ0Z_1));
    CM8 G_101 (.D0(aCga_c_1), .D1(aVga_c_1), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(wrCycleZ0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_5)
        );
    BIBUF dMem_pad_4 (.PAD(dMem[4]), .D(wrBufZ0Z_4), .E(wrCycle_iZ0), 
        .Y(dMem_in_4));
    HCLKBUF clk_pad (.PAD(clk), .Y(clk_c));
    
endmodule
