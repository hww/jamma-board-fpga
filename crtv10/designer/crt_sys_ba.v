`timescale 1 ns/100 ps


module crt_mem(\hcnt_i[0] , \hcnt_i_0[0] , y_109, href, bus_mux_0, 
        bus_mux_1, _reset_c, clk_c, mem_hold, bus_dir_out, 
        bus_dir_out_i, _wr_c, bus_mux, ds_c);
input  \hcnt_i[0] , \hcnt_i_0[0] ;
output  y_109;
input  href;
output  bus_mux_0, bus_mux_1;
input  _reset_c, clk_c, mem_hold;
output  bus_dir_out, bus_dir_out_i;
input  _wr_c;
output  bus_mux;
input  ds_c;

    wire VCCZ0, GNDZ0;
    
    OR3B bus_dir_out_iZ0 (.A(ds_c), .B(bus_mux), .C(_wr_c), .Y(
        bus_dir_out_i));
    VCC VCC (.Y(VCCZ0));
    CM8 un4__mrd_i_0_i (.D0(VCCZ0), .D1(VCCZ0), .D2(bus_mux), .D3(
        GNDZ0), .S00(_wr_c), .S01(ds_c), .S10(href), .S11(bus_mux), .Y(
        y_109));
    GND GND (.Y(GNDZ0));
    DFE3C bus_muxZ0 (.D(mem_hold), .CLK(clk_c), .CLR(_reset_c), .E(
        \hcnt_i[0] ), .Q(bus_mux));
    DFE3C bus_muxZ0Z_1 (.D(mem_hold), .CLK(clk_c), .CLR(_reset_c), .E(
        \hcnt_i_0[0] ), .Q(bus_mux_1));
    DFE3C bus_muxZ0Z_0 (.D(mem_hold), .CLK(clk_c), .CLR(_reset_c), .E(
        \hcnt_i_0[0] ), .Q(bus_mux_0));
    AND3A bus_dir_out_0_and2_0_and2 (.A(_wr_c), .B(bus_mux), .C(ds_c), 
        .Y(bus_dir_out));
    
endmodule


module fextractor_5(\b_c[2] , _reset_c, clk_c, onemks, riseb);
input  \b_c[2] , _reset_c, clk_c, onemks;
output  riseb;

    wire aZ0, bZ0;
    
    XOR2 out (.A(aZ0), .B(bZ0), .Y(riseb));
    DFE3C a (.D(\b_c[2] ), .CLK(clk_c), .CLR(_reset_c), .E(onemks), .Q(
        aZ0));
    DFE3C b (.D(aZ0), .CLK(clk_c), .CLR(_reset_c), .E(onemks), .Q(bZ0));
    
endmodule


module fextractor_4(\a_c[2] , _reset_c, clk_c, onemks, risea);
input  \a_c[2] , _reset_c, clk_c, onemks;
output  risea;

    wire aZ0, bZ0;
    
    XOR2 out (.A(aZ0), .B(bZ0), .Y(risea));
    DFE3C a (.D(\a_c[2] ), .CLK(clk_c), .CLR(_reset_c), .E(onemks), .Q(
        aZ0));
    DFE3C b (.D(aZ0), .CLK(clk_c), .CLR(_reset_c), .E(onemks), .Q(bZ0));
    
endmodule


module quad_tmr_2(qC, \b_c[2] , \a_c[2] , onemks, _reset_c, clk_c, 
        onemks_1, onemks_0);
output  [3:0] qC;
input  \b_c[2] , \a_c[2] , onemks, _reset_c, clk_c, onemks_1, onemks_0;

    wire plus, axb3, axb2, c2, anb2, y_85, axb3i, enacntZ0, axb1, 
        count_8_0, count_8_3, count_8_2, count_8_1, risea, riseb, 
        GNDZ0, VCCZ0, fadd4_nc_3t0_s0_cm8iZ0, fadd4_nc_3t0_axb2_cm8iZ0, 
        fadd4_nc_3t0_axb3_cm8iZ0, fadd4_nc_3t0_axb1_cm8iZ0;
    
    CM8 fadd4_nc_3t0_s0 (.D0(GNDZ0), .D1(VCCZ0), .D2(
        fadd4_nc_3t0_s0_cm8iZ0), .D3(onemks_0), .S00(qC[0]), .S01(
        VCCZ0), .S10(riseb), .S11(risea), .Y(count_8_0));
    DFC1B q_3 (.D(count_8_3), .CLK(clk_c), .CLR(_reset_c), .Q(qC[3]));
    CM8INV fadd4_nc_3t0_s0_cm8i (.A(onemks_0), .Y(
        fadd4_nc_3t0_s0_cm8iZ0));
    DFC1B q_1 (.D(count_8_1), .CLK(clk_c), .CLR(_reset_c), .Q(qC[1]));
    DFC1B q_0 (.D(count_8_0), .CLK(clk_c), .CLR(_reset_c), .Q(qC[0]));
    GND GND (.Y(GNDZ0));
    CM8 fadd4_nc_3t0_axb3 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(
        GNDZ0), .S00(fadd4_nc_3t0_axb3_cm8iZ0), .S01(enacntZ0), .S10(
        qC[3]), .S11(GNDZ0), .Y(axb3));
    CM8 fadd4_nc_3t0_axb2 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(
        GNDZ0), .S00(fadd4_nc_3t0_axb2_cm8iZ0), .S01(enacntZ0), .S10(
        qC[2]), .S11(GNDZ0), .Y(axb2));
    CM8 plusin (.D0(GNDZ0), .D1(risea), .D2(risea), .D3(VCCZ0), .S00(
        \a_c[2] ), .S01(VCCZ0), .S10(\b_c[2] ), .S11(GNDZ0), .Y(plus));
    CM8INV fadd4_nc_3t0_axb3_cm8i (.A(plus), .Y(
        fadd4_nc_3t0_axb3_cm8iZ0));
    fextractor_5 fb_obj (.\b_c[2] (\b_c[2] ), ._reset_c(_reset_c), 
        .clk_c(clk_c), .onemks(onemks), .riseb(riseb));
    AX1C fadd4_nc_3t0_s1 (.A(qC[0]), .B(enacntZ0), .C(axb1), .Y(
        count_8_1));
    XOR2 fadd4_nc_3t0_s2 (.A(c2), .B(axb2), .Y(count_8_2));
    CM8 fadd4_nc_3t0_s3_a (.D0(axb3), .D1(axb3i), .D2(axb3i), .D3(
        axb3i), .S00(axb2), .S01(c2), .S10(anb2), .S11(GNDZ0), .Y(
        count_8_3));
    XNOR2 fadd4_nc_3t0_axb3i (.A(qC[3]), .B(y_85), .Y(axb3i));
    DFC1B q_2 (.D(count_8_2), .CLK(clk_c), .CLR(_reset_c), .Q(qC[2]));
    CM8 fadd4_nc_3t0_axb1 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(
        GNDZ0), .S00(fadd4_nc_3t0_axb1_cm8iZ0), .S01(enacntZ0), .S10(
        qC[1]), .S11(GNDZ0), .Y(axb1));
    VCC VCC (.Y(VCCZ0));
    CM8 un2_enacnt_1 (.D0(risea), .D1(VCCZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(riseb), .S01(VCCZ0), .S10(plus), .S11(onemks_1), .Y(y_85));
    CY2A fadd4_nc_3t0_c2 (.A0(qC[0]), .A1(qC[1]), .B0(enacntZ0), .B1(
        y_85), .Y(c2));
    CM8INV fadd4_nc_3t0_axb1_cm8i (.A(plus), .Y(
        fadd4_nc_3t0_axb1_cm8iZ0));
    AND2 fadd4_nc_3t0_anb2 (.A(qC[2]), .B(y_85), .Y(anb2));
    fextractor_4 fa_obj (.\a_c[2] (\a_c[2] ), ._reset_c(_reset_c), 
        .clk_c(clk_c), .onemks(onemks), .risea(risea));
    CM8 enacnt (.D0(risea), .D1(GNDZ0), .D2(VCCZ0), .D3(GNDZ0), .S00(
        onemks_1), .S01(VCCZ0), .S10(riseb), .S11(GNDZ0), .Y(enacntZ0));
    CM8INV fadd4_nc_3t0_axb2_cm8i (.A(plus), .Y(
        fadd4_nc_3t0_axb2_cm8iZ0));
    
endmodule


module fextractor_3(\b_c[1] , onemks, _reset_c, clk_c, onemks_1, riseb);
input  \b_c[1] , onemks, _reset_c, clk_c, onemks_1;
output  riseb;

    wire aZ0, bZ0;
    
    XOR2 out (.A(aZ0), .B(bZ0), .Y(riseb));
    DFE3C a (.D(\b_c[1] ), .CLK(clk_c), .CLR(_reset_c), .E(onemks_1), 
        .Q(aZ0));
    DFE3C b (.D(aZ0), .CLK(clk_c), .CLR(_reset_c), .E(onemks), .Q(bZ0));
    
endmodule


module fextractor_2(\a_c[1] , _reset_c, clk_c, onemks_1, risea);
input  \a_c[1] , _reset_c, clk_c, onemks_1;
output  risea;

    wire aZ0, bZ0;
    
    XOR2 out (.A(aZ0), .B(bZ0), .Y(risea));
    DFE3C a (.D(\a_c[1] ), .CLK(clk_c), .CLR(_reset_c), .E(onemks_1), 
        .Q(aZ0));
    DFE3C b (.D(aZ0), .CLK(clk_c), .CLR(_reset_c), .E(onemks_1), .Q(
        bZ0));
    
endmodule


module quad_tmr_1(qB, \b_c[1] , \a_c[1] , onemks, _reset_c, clk_c, 
        onemks_1, onemks_0);
output  [3:0] qB;
input  \b_c[1] , \a_c[1] , onemks, _reset_c, clk_c, onemks_1, onemks_0;

    wire plus, axb3, axb2, c2, anb2, y_84, axb3i, enacntZ0, axb1, 
        count_8_0, count_8_3, count_8_2, count_8_1, risea, riseb, 
        GNDZ0, VCCZ0, fadd4_nc_3t0_axb2_cm8iZ0, 
        fadd4_nc_3t0_axb3_cm8iZ0, fadd4_nc_3t0_axb1_cm8iZ0, 
        fadd4_nc_3t0_s0_cm8iZ0;
    
    CM8 fadd4_nc_3t0_s0 (.D0(GNDZ0), .D1(VCCZ0), .D2(
        fadd4_nc_3t0_s0_cm8iZ0), .D3(onemks_0), .S00(qB[0]), .S01(
        VCCZ0), .S10(riseb), .S11(risea), .Y(count_8_0));
    DFC1B q_3 (.D(count_8_3), .CLK(clk_c), .CLR(_reset_c), .Q(qB[3]));
    CM8INV fadd4_nc_3t0_s0_cm8i (.A(onemks_0), .Y(
        fadd4_nc_3t0_s0_cm8iZ0));
    DFC1B q_1 (.D(count_8_1), .CLK(clk_c), .CLR(_reset_c), .Q(qB[1]));
    DFC1B q_0 (.D(count_8_0), .CLK(clk_c), .CLR(_reset_c), .Q(qB[0]));
    GND GND (.Y(GNDZ0));
    CM8 fadd4_nc_3t0_axb3 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(
        GNDZ0), .S00(fadd4_nc_3t0_axb3_cm8iZ0), .S01(enacntZ0), .S10(
        qB[3]), .S11(GNDZ0), .Y(axb3));
    CM8 fadd4_nc_3t0_axb2 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(
        GNDZ0), .S00(fadd4_nc_3t0_axb2_cm8iZ0), .S01(enacntZ0), .S10(
        qB[2]), .S11(GNDZ0), .Y(axb2));
    CM8 plusin (.D0(GNDZ0), .D1(risea), .D2(risea), .D3(VCCZ0), .S00(
        \a_c[1] ), .S01(VCCZ0), .S10(\b_c[1] ), .S11(GNDZ0), .Y(plus));
    CM8INV fadd4_nc_3t0_axb3_cm8i (.A(plus), .Y(
        fadd4_nc_3t0_axb3_cm8iZ0));
    fextractor_3 fb_obj (.\b_c[1] (\b_c[1] ), .onemks(onemks), 
        ._reset_c(_reset_c), .clk_c(clk_c), .onemks_1(onemks_1), 
        .riseb(riseb));
    AX1C fadd4_nc_3t0_s1 (.A(qB[0]), .B(enacntZ0), .C(axb1), .Y(
        count_8_1));
    XOR2 fadd4_nc_3t0_s2 (.A(c2), .B(axb2), .Y(count_8_2));
    CM8 fadd4_nc_3t0_s3_a (.D0(axb3), .D1(axb3i), .D2(axb3i), .D3(
        axb3i), .S00(axb2), .S01(c2), .S10(anb2), .S11(GNDZ0), .Y(
        count_8_3));
    XNOR2 fadd4_nc_3t0_axb3i (.A(qB[3]), .B(y_84), .Y(axb3i));
    DFC1B q_2 (.D(count_8_2), .CLK(clk_c), .CLR(_reset_c), .Q(qB[2]));
    CM8 fadd4_nc_3t0_axb1 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(
        GNDZ0), .S00(fadd4_nc_3t0_axb1_cm8iZ0), .S01(enacntZ0), .S10(
        qB[1]), .S11(GNDZ0), .Y(axb1));
    VCC VCC (.Y(VCCZ0));
    CM8 un2_enacnt_1 (.D0(risea), .D1(VCCZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(riseb), .S01(VCCZ0), .S10(plus), .S11(onemks_1), .Y(y_84));
    CY2A fadd4_nc_3t0_c2 (.A0(qB[0]), .A1(qB[1]), .B0(enacntZ0), .B1(
        y_84), .Y(c2));
    CM8INV fadd4_nc_3t0_axb1_cm8i (.A(plus), .Y(
        fadd4_nc_3t0_axb1_cm8iZ0));
    AND2 fadd4_nc_3t0_anb2 (.A(qB[2]), .B(y_84), .Y(anb2));
    fextractor_2 fa_obj (.\a_c[1] (\a_c[1] ), ._reset_c(_reset_c), 
        .clk_c(clk_c), .onemks_1(onemks_1), .risea(risea));
    CM8 enacnt (.D0(risea), .D1(GNDZ0), .D2(VCCZ0), .D3(GNDZ0), .S00(
        onemks_1), .S01(VCCZ0), .S10(riseb), .S11(GNDZ0), .Y(enacntZ0));
    CM8INV fadd4_nc_3t0_axb2_cm8i (.A(plus), .Y(
        fadd4_nc_3t0_axb2_cm8iZ0));
    
endmodule


module onefextractor(_reset_c, clk_c, hris_n, b, a);
input  _reset_c, clk_c;
output  hris_n, b;
input  a;

    
    DFC1B bZ0 (.D(a), .CLK(clk_c), .CLR(_reset_c), .Q(b));
    OR2A out_n (.A(a), .B(b), .Y(hris_n));
    
endmodule


module onefextractor_1(b, a, _reset_c, clk_c, vsync_in_c);
output  b, a;
input  _reset_c, clk_c, vsync_in_c;

    
    DFC1B bZ0 (.D(a), .CLK(clk_c), .CLR(_reset_c), .Q(b));
    DFC1B aZ0 (.D(vsync_in_c), .CLK(clk_c), .CLR(_reset_c), .Q(a));
    
endmodule


module crt_measure(test_freq, \addr_reg[20] , vsync_in_c, _reset_c, 
        clk_c, start_measure, a, hris_n, measure);
output  [9:0] test_freq;
input  \addr_reg[20] , vsync_in_c, _reset_c, clk_c, start_measure, a;
output  hris_n, measure;

    wire N_48, N_85, y_87, checkZ0, y_91, q_l2, q_l1, q_l0, q_l4, q_l3, 
        q_l7, q_l6, q_l5, q_l9, q_l8, y_88, y_89, y_90, b_0, b, a_0, 
        GNDZ0, VCCZ0, q_l3_0_and2_cm8iZ0, G_84_cm8iZ0, 
        q_l8_0_and2_cm8iZ0, q_l5_0_and2_cm8iZ0, q_l6_0_and2_cm8iZ0, 
        q_l9_0_and2_cm8iZ0;
    
    NAND4 q_ca3 (.A(test_freq[0]), .B(test_freq[1]), .C(test_freq[2]), 
        .D(test_freq[3]), .Y(y_90));
    DFE3C q_9 (.D(q_l9), .CLK(clk_c), .CLR(_reset_c), .E(y_88), .Q(
        test_freq[9]));
    CM8 q_l6_0_and2 (.D0(checkZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(checkZ0)
        , .S00(test_freq[6]), .S01(VCCZ0), .S10(q_l6_0_and2_cm8iZ0), 
        .S11(q_l5), .Y(q_l6));
    CM8 q_l3_0_and2 (.D0(checkZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(checkZ0)
        , .S00(test_freq[3]), .S01(VCCZ0), .S10(q_l3_0_and2_cm8iZ0), 
        .S11(q_l2), .Y(q_l3));
    CM8 check_0_0_xor3 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(measure), .S01(N_85), .S10(checkZ0), .S11(GNDZ0), .Y(y_87)
        );
    CM8 q_l8_0_and2 (.D0(checkZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(checkZ0)
        , .S00(test_freq[8]), .S01(VCCZ0), .S10(q_l8_0_and2_cm8iZ0), 
        .S11(y_90), .Y(q_l8));
    CM8 q_l7_0_and2 (.D0(checkZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(VCCZ0), 
        .S00(checkZ0), .S01(N_48), .S10(test_freq[7]), .S11(GNDZ0), .Y(
        q_l7));
    CM8 G_84 (.D0(a), .D1(GNDZ0), .D2(GNDZ0), .D3(a_0), .S00(
        G_84_cm8iZ0), .S01(\addr_reg[20] ), .S10(b_0), .S11(
        \addr_reg[20] ), .Y(N_85));
    CM8INV q_l3_0_and2_cm8i (.A(test_freq[2]), .Y(q_l3_0_and2_cm8iZ0));
    DFE3C q_2 (.D(q_l2), .CLK(clk_c), .CLR(_reset_c), .E(y_88), .Q(
        test_freq[2]));
    CM8 G_2_i (.D0(VCCZ0), .D1(VCCZ0), .D2(GNDZ0), .D3(hris_n), .S00(
        \addr_reg[20] ), .S01(VCCZ0), .S10(measure), .S11(checkZ0), .Y(
        y_88));
    DFE3C q_8 (.D(q_l8), .CLK(clk_c), .CLR(_reset_c), .E(y_88), .Q(
        test_freq[8]));
    VCC VCC (.Y(VCCZ0));
    CM8 q_l5_0_and2 (.D0(checkZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(checkZ0)
        , .S00(test_freq[5]), .S01(VCCZ0), .S10(q_l5_0_and2_cm8iZ0), 
        .S11(y_90), .Y(q_l5));
    XA1 q_l1_0_and2 (.A(test_freq[0]), .B(test_freq[1]), .C(checkZ0), 
        .Y(q_l1));
    CM8INV q_l6_0_and2_cm8i (.A(test_freq[5]), .Y(q_l6_0_and2_cm8iZ0));
    AND4 q_ca7 (.A(test_freq[4]), .B(test_freq[5]), .C(test_freq[6]), 
        .D(test_freq[7]), .Y(y_89));
    DFE3C q_4 (.D(q_l4), .CLK(clk_c), .CLR(_reset_c), .E(y_88), .Q(
        test_freq[4]));
    CM8INV q_l5_0_and2_cm8i (.A(test_freq[4]), .Y(q_l5_0_and2_cm8iZ0));
    CM8 q_l9_0_and2 (.D0(checkZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(checkZ0)
        , .S00(test_freq[9]), .S01(VCCZ0), .S10(q_l9_0_and2_cm8iZ0), 
        .S11(q_l8), .Y(q_l9));
    OR4C G_70 (.A(test_freq[5]), .B(test_freq[6]), .C(test_freq[4]), 
        .D(y_90), .Y(N_48));
    CM8 q_l2_0_and2 (.D0(GNDZ0), .D1(checkZ0), .D2(checkZ0), .D3(GNDZ0)
        , .S00(test_freq[1]), .S01(test_freq[0]), .S10(test_freq[2]), 
        .S11(GNDZ0), .Y(q_l2));
    DFC1B check (.D(y_87), .CLK(clk_c), .CLR(_reset_c), .Q(checkZ0));
    CM8INV G_84_cm8i (.A(b), .Y(G_84_cm8iZ0));
    GND GND (.Y(GNDZ0));
    CM8 un1_start_0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(N_85), .S01(checkZ0), .S10(start_measure), .S11(GNDZ0), 
        .Y(y_91));
    DFE3C q_1 (.D(q_l1), .CLK(clk_c), .CLR(_reset_c), .E(y_88), .Q(
        test_freq[1]));
    CM8INV q_l8_0_and2_cm8i (.A(y_89), .Y(q_l8_0_and2_cm8iZ0));
    DFE3C measureZ0 (.D(start_measure), .CLK(clk_c), .CLR(_reset_c), 
        .E(y_91), .Q(measure));
    DFE3C q_5 (.D(q_l5), .CLK(clk_c), .CLR(_reset_c), .E(y_88), .Q(
        test_freq[5]));
    onefextractor hsig_obj (._reset_c(_reset_c), .clk_c(clk_c), 
        .hris_n(hris_n), .b(b_0), .a(a));
    onefextractor_1 vsig_obj (.b(b), .a(a_0), ._reset_c(_reset_c), 
        .clk_c(clk_c), .vsync_in_c(vsync_in_c));
    AND2A q_l0_0_and2 (.A(test_freq[0]), .B(checkZ0), .Y(q_l0));
    DFE3C q_0 (.D(q_l0), .CLK(clk_c), .CLR(_reset_c), .E(y_88), .Q(
        test_freq[0]));
    DFE3C q_7 (.D(q_l7), .CLK(clk_c), .CLR(_reset_c), .E(y_88), .Q(
        test_freq[7]));
    CM8INV q_l9_0_and2_cm8i (.A(test_freq[8]), .Y(q_l9_0_and2_cm8iZ0));
    DFE3C q_3 (.D(q_l3), .CLK(clk_c), .CLR(_reset_c), .E(y_88), .Q(
        test_freq[3]));
    CM8 q_l4_0_and2 (.D0(checkZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(checkZ0)
        , .S00(y_90), .S01(VCCZ0), .S10(test_freq[4]), .S11(GNDZ0), .Y(
        q_l4));
    DFE3C q_6 (.D(q_l6), .CLK(clk_c), .CLR(_reset_c), .E(y_88), .Q(
        test_freq[6]));
    
endmodule


module fextractor_1(\b_c[0] , _reset_c, clk_c, onemks_1, riseb);
input  \b_c[0] , _reset_c, clk_c, onemks_1;
output  riseb;

    wire aZ0, bZ0;
    
    XOR2 out (.A(aZ0), .B(bZ0), .Y(riseb));
    DFE3C a (.D(\b_c[0] ), .CLK(clk_c), .CLR(_reset_c), .E(onemks_1), 
        .Q(aZ0));
    DFE3C b (.D(aZ0), .CLK(clk_c), .CLR(_reset_c), .E(onemks_1), .Q(
        bZ0));
    
endmodule


module fextractor(\a_c[0] , _reset_c, clk_c, onemks_1, risea);
input  \a_c[0] , _reset_c, clk_c, onemks_1;
output  risea;

    wire aZ0, bZ0;
    
    XOR2 out (.A(aZ0), .B(bZ0), .Y(risea));
    DFE3C a (.D(\a_c[0] ), .CLK(clk_c), .CLR(_reset_c), .E(onemks_1), 
        .Q(aZ0));
    DFE3C b (.D(aZ0), .CLK(clk_c), .CLR(_reset_c), .E(onemks_1), .Q(
        bZ0));
    
endmodule


module quad_tmr(qA, \b_c[0] , \a_c[0] , onemks_1, _reset_c, clk_c, 
        onemks_0);
output  [3:0] qA;
input  \b_c[0] , \a_c[0] , onemks_1, _reset_c, clk_c, onemks_0;

    wire plus, axb3, axb2, c2, anb2, y_83, axb3i, enacntZ0, axb1, 
        count_8_0, count_8_3, count_8_2, count_8_1, risea, riseb, 
        GNDZ0, VCCZ0, fadd4_nc_3t0_s0_cm8iZ0, fadd4_nc_3t0_axb3_cm8iZ0, 
        fadd4_nc_3t0_axb2_cm8iZ0, fadd4_nc_3t0_axb1_cm8iZ0;
    
    CM8 fadd4_nc_3t0_s0 (.D0(GNDZ0), .D1(VCCZ0), .D2(
        fadd4_nc_3t0_s0_cm8iZ0), .D3(onemks_0), .S00(qA[0]), .S01(
        VCCZ0), .S10(riseb), .S11(risea), .Y(count_8_0));
    DFC1B q_3 (.D(count_8_3), .CLK(clk_c), .CLR(_reset_c), .Q(qA[3]));
    CM8INV fadd4_nc_3t0_s0_cm8i (.A(onemks_0), .Y(
        fadd4_nc_3t0_s0_cm8iZ0));
    DFC1B q_1 (.D(count_8_1), .CLK(clk_c), .CLR(_reset_c), .Q(qA[1]));
    DFC1B q_0 (.D(count_8_0), .CLK(clk_c), .CLR(_reset_c), .Q(qA[0]));
    GND GND (.Y(GNDZ0));
    CM8 fadd4_nc_3t0_axb3 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(
        GNDZ0), .S00(fadd4_nc_3t0_axb3_cm8iZ0), .S01(enacntZ0), .S10(
        qA[3]), .S11(GNDZ0), .Y(axb3));
    CM8 fadd4_nc_3t0_axb2 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(
        GNDZ0), .S00(fadd4_nc_3t0_axb2_cm8iZ0), .S01(enacntZ0), .S10(
        qA[2]), .S11(GNDZ0), .Y(axb2));
    CM8 plusin (.D0(GNDZ0), .D1(risea), .D2(risea), .D3(VCCZ0), .S00(
        \a_c[0] ), .S01(VCCZ0), .S10(\b_c[0] ), .S11(GNDZ0), .Y(plus));
    CM8INV fadd4_nc_3t0_axb3_cm8i (.A(plus), .Y(
        fadd4_nc_3t0_axb3_cm8iZ0));
    fextractor_1 fb_obj (.\b_c[0] (\b_c[0] ), ._reset_c(_reset_c), 
        .clk_c(clk_c), .onemks_1(onemks_1), .riseb(riseb));
    AX1C fadd4_nc_3t0_s1 (.A(qA[0]), .B(enacntZ0), .C(axb1), .Y(
        count_8_1));
    XOR2 fadd4_nc_3t0_s2 (.A(c2), .B(axb2), .Y(count_8_2));
    CM8 fadd4_nc_3t0_s3_a (.D0(axb3), .D1(axb3i), .D2(axb3i), .D3(
        axb3i), .S00(axb2), .S01(c2), .S10(anb2), .S11(GNDZ0), .Y(
        count_8_3));
    XNOR2 fadd4_nc_3t0_axb3i (.A(qA[3]), .B(y_83), .Y(axb3i));
    DFC1B q_2 (.D(count_8_2), .CLK(clk_c), .CLR(_reset_c), .Q(qA[2]));
    CM8 fadd4_nc_3t0_axb1 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(
        GNDZ0), .S00(fadd4_nc_3t0_axb1_cm8iZ0), .S01(enacntZ0), .S10(
        qA[1]), .S11(GNDZ0), .Y(axb1));
    VCC VCC (.Y(VCCZ0));
    CM8 un2_enacnt_1 (.D0(risea), .D1(VCCZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(riseb), .S01(VCCZ0), .S10(plus), .S11(onemks_0), .Y(y_83));
    CY2A fadd4_nc_3t0_c2 (.A0(qA[0]), .A1(qA[1]), .B0(enacntZ0), .B1(
        y_83), .Y(c2));
    CM8INV fadd4_nc_3t0_axb1_cm8i (.A(plus), .Y(
        fadd4_nc_3t0_axb1_cm8iZ0));
    AND2 fadd4_nc_3t0_anb2 (.A(qA[2]), .B(y_83), .Y(anb2));
    fextractor fa_obj (.\a_c[0] (\a_c[0] ), ._reset_c(_reset_c), 
        .clk_c(clk_c), .onemks_1(onemks_1), .risea(risea));
    CM8 enacnt (.D0(risea), .D1(GNDZ0), .D2(VCCZ0), .D3(GNDZ0), .S00(
        onemks_0), .S01(VCCZ0), .S10(riseb), .S11(GNDZ0), .Y(enacntZ0));
    CM8INV fadd4_nc_3t0_axb2_cm8i (.A(plus), .Y(
        fadd4_nc_3t0_axb2_cm8iZ0));
    
endmodule


module fextractor_7(\b_c[3] , _reset_c, clk_c, onemks, riseb);
input  \b_c[3] , _reset_c, clk_c, onemks;
output  riseb;

    wire aZ0, bZ0;
    
    XOR2 out (.A(aZ0), .B(bZ0), .Y(riseb));
    DFE3C a (.D(\b_c[3] ), .CLK(clk_c), .CLR(_reset_c), .E(onemks), .Q(
        aZ0));
    DFE3C b (.D(aZ0), .CLK(clk_c), .CLR(_reset_c), .E(onemks), .Q(bZ0));
    
endmodule


module fextractor_6(\a_c[3] , _reset_c, clk_c, onemks, risea);
input  \a_c[3] , _reset_c, clk_c, onemks;
output  risea;

    wire aZ0, bZ0;
    
    XOR2 out (.A(aZ0), .B(bZ0), .Y(risea));
    DFE3C a (.D(\a_c[3] ), .CLK(clk_c), .CLR(_reset_c), .E(onemks), .Q(
        aZ0));
    DFE3C b (.D(aZ0), .CLK(clk_c), .CLR(_reset_c), .E(onemks), .Q(bZ0));
    
endmodule


module quad_tmr_3(qD, \b_c[3] , \a_c[3] , onemks, _reset_c, clk_c, 
        onemks_0);
output  [3:0] qD;
input  \b_c[3] , \a_c[3] , onemks, _reset_c, clk_c, onemks_0;

    wire plus, axb3, axb2, c2, anb2, y_86, axb3i, enacntZ0, axb1, 
        count_8_0, count_8_3, count_8_2, count_8_1, risea, riseb, 
        GNDZ0, VCCZ0, fadd4_nc_3t0_axb3_cm8iZ0, 
        fadd4_nc_3t0_axb2_cm8iZ0, fadd4_nc_3t0_s0_cm8iZ0, 
        fadd4_nc_3t0_axb1_cm8iZ0;
    
    CM8 fadd4_nc_3t0_s0 (.D0(GNDZ0), .D1(VCCZ0), .D2(
        fadd4_nc_3t0_s0_cm8iZ0), .D3(onemks_0), .S00(qD[0]), .S01(
        VCCZ0), .S10(riseb), .S11(risea), .Y(count_8_0));
    DFC1B q_3 (.D(count_8_3), .CLK(clk_c), .CLR(_reset_c), .Q(qD[3]));
    CM8INV fadd4_nc_3t0_s0_cm8i (.A(onemks_0), .Y(
        fadd4_nc_3t0_s0_cm8iZ0));
    DFC1B q_1 (.D(count_8_1), .CLK(clk_c), .CLR(_reset_c), .Q(qD[1]));
    DFC1B q_0 (.D(count_8_0), .CLK(clk_c), .CLR(_reset_c), .Q(qD[0]));
    GND GND (.Y(GNDZ0));
    CM8 fadd4_nc_3t0_axb3 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(
        GNDZ0), .S00(fadd4_nc_3t0_axb3_cm8iZ0), .S01(enacntZ0), .S10(
        qD[3]), .S11(GNDZ0), .Y(axb3));
    CM8 fadd4_nc_3t0_axb2 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(
        GNDZ0), .S00(fadd4_nc_3t0_axb2_cm8iZ0), .S01(enacntZ0), .S10(
        qD[2]), .S11(GNDZ0), .Y(axb2));
    CM8 plusin (.D0(GNDZ0), .D1(risea), .D2(risea), .D3(VCCZ0), .S00(
        \a_c[3] ), .S01(VCCZ0), .S10(\b_c[3] ), .S11(GNDZ0), .Y(plus));
    CM8INV fadd4_nc_3t0_axb3_cm8i (.A(plus), .Y(
        fadd4_nc_3t0_axb3_cm8iZ0));
    fextractor_7 fb_obj (.\b_c[3] (\b_c[3] ), ._reset_c(_reset_c), 
        .clk_c(clk_c), .onemks(onemks), .riseb(riseb));
    AX1C fadd4_nc_3t0_s1 (.A(qD[0]), .B(enacntZ0), .C(axb1), .Y(
        count_8_1));
    XOR2 fadd4_nc_3t0_s2 (.A(c2), .B(axb2), .Y(count_8_2));
    CM8 fadd4_nc_3t0_s3_a (.D0(axb3), .D1(axb3i), .D2(axb3i), .D3(
        axb3i), .S00(axb2), .S01(c2), .S10(anb2), .S11(GNDZ0), .Y(
        count_8_3));
    XNOR2 fadd4_nc_3t0_axb3i (.A(qD[3]), .B(y_86), .Y(axb3i));
    DFC1B q_2 (.D(count_8_2), .CLK(clk_c), .CLR(_reset_c), .Q(qD[2]));
    CM8 fadd4_nc_3t0_axb1 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(
        GNDZ0), .S00(fadd4_nc_3t0_axb1_cm8iZ0), .S01(enacntZ0), .S10(
        qD[1]), .S11(GNDZ0), .Y(axb1));
    VCC VCC (.Y(VCCZ0));
    CM8 un2_enacnt_1 (.D0(risea), .D1(VCCZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(riseb), .S01(VCCZ0), .S10(plus), .S11(onemks_0), .Y(y_86));
    CY2A fadd4_nc_3t0_c2 (.A0(qD[0]), .A1(qD[1]), .B0(enacntZ0), .B1(
        y_86), .Y(c2));
    CM8INV fadd4_nc_3t0_axb1_cm8i (.A(plus), .Y(
        fadd4_nc_3t0_axb1_cm8iZ0));
    AND2 fadd4_nc_3t0_anb2 (.A(qD[2]), .B(y_86), .Y(anb2));
    fextractor_6 fa_obj (.\a_c[3] (\a_c[3] ), ._reset_c(_reset_c), 
        .clk_c(clk_c), .onemks(onemks), .risea(risea));
    CM8 enacnt (.D0(risea), .D1(GNDZ0), .D2(VCCZ0), .D3(GNDZ0), .S00(
        onemks_0), .S01(VCCZ0), .S10(riseb), .S11(GNDZ0), .Y(enacntZ0));
    CM8INV fadd4_nc_3t0_axb2_cm8i (.A(plus), .Y(
        fadd4_nc_3t0_axb2_cm8iZ0));
    
endmodule


module crt_cookie(test, _reset_c, clk_c, next_cookie, extnoice);
output  test;
input  _reset_c, clk_c, next_cookie, extnoice;

    
    DFE3C testZ0 (.D(extnoice), .CLK(clk_c), .CLR(_reset_c), .E(
        next_cookie), .Q(test));
    
endmodule


module crt_cpu(a_c, b_c, page, md_in, dse, ase, reg_select_0, db_in, 
        cpu_address, \addr_reg[20] , reg_select_0_d0, dboreg_7, 
        dboreg_6, dboreg_5, dboreg_1, dboreg_0, hris_n, a, vsync_in_c, 
        extnoice, onemks, onemks_0, onemks_1, y_92, mem_hold, y_93, 
        y_94, y_95, y_96, y_97, y_98, y_99, y_100, y_101, y_102, y_103, 
        y_104, y_105, y_106, y_112, y_115, as_c, y_110, ds_c, y_111, 
        ds_c_0, y_107, N_295_n, N_300_n, _reset_c, clk_c, _wr_c, y_116);
input  [3:0] a_c;
input  [3:0] b_c;
output  [6:0] page;
input  [7:0] md_in;
output  [1:0] dse;
output  [1:0] ase;
output  [1:0] reg_select_0;
input  [7:0] db_in;
output  [19:0] cpu_address;
output  \addr_reg[20] , reg_select_0_d0, dboreg_7, dboreg_6, dboreg_5, 
        dboreg_1, dboreg_0, hris_n;
input  a, vsync_in_c, extnoice, onemks, onemks_0, onemks_1, y_92;
output  mem_hold;
input  y_93, y_94, y_95, y_96, y_97, y_98, y_99, y_100, y_101, y_102, 
        y_103, y_104, y_105, y_106;
output  y_112, y_115;
input  as_c;
output  y_110;
input  ds_c;
output  y_111;
input  ds_c_0, y_107, N_295_n, N_300_n, _reset_c, clk_c, _wr_c;
output  y_116;

    wire N_145, N_137, N_146, N_150, N_151, N_148, N_147, N_309_n, 
        N_309, N_304, N_152, N_149, y_14, y_118, x2_0, y_117, y_120, 
        x2, y_119, y_122, addr_reg_12Z0Z_4, addr_reg_12Z0Z_3, 
        addr_reg_12Z0Z_2, addr_reg_12Z0Z_1, addr_reg_12Z0Z_0, y_113, 
        reg_selectZ0Z_1, N_305_i_0, N_303_0, addr_reg_12Z0Z_7, 
        addr_reg_12Z0Z_6, addr_reg_12Z0Z_5, y_121, y_114, qA_0, qA_1, 
        qA_2, qA_3, qB_0, qB_1, qB_2, qB_3, qC_0, qC_1, qC_2, qC_3, 
        qD_0, qD_1, qD_2, qD_3, test, next_cookie, test_freq_0, 
        test_freq_1, test_freq_2, test_freq_3, test_freq_4, 
        test_freq_5, test_freq_6, test_freq_7, test_freq_8, 
        test_freq_9, start_measure, measure, VCCZ0, GNDZ0, 
        dboreg_i_0_cm8iZ0Z_4, dboreg_2_cm8iZ0Z_4, dboreg_2_cm8iZ0Z_7, 
        next_cookie_0_and2_0_and2_cm8iZ0, 
        addr_reg_12_sn_G_13_i_0_n_cm8iZ0, addr_reg_12_cm8iZ0Z_0, 
        addr_reg_12_cm8iZ0Z_1, addr_reg_12_cm8iZ0Z_4, 
        un1_addr_ena_1_0_0_cm8iZ0, un1_un1_addr_ena_i_0_0_cm8iZ0, 
        reg_select_6_i_i_cm8iZ0Z_0, dboreg_i_0_cm8iZ0Z_2, 
        dboreg_i_0_cm8iZ0Z_3, dboreg_2_cm8iZ0Z_6, dboreg_2_cm8iZ0Z_3, 
        dboreg_2_cm8iZ0Z_2, dboreg_2_cm8iZ0Z_1, dboreg_2_cm8iZ0Z_0, 
        dboreg_2_cm8iZ0Z_5, reg_select_6_i_0_cm8iZ0Z_1, 
        un1_un1_addr_ena_i_0_0_0_cm8iZ0;
    
    DFE3C addr_reg_17 (.D(y_103), .CLK(clk_c), .CLR(_reset_c), .E(
        N_303_0), .Q(cpu_address[17]));
    CM8 db_dir_out_i_0 (.D0(GNDZ0), .D1(ds_c), .D2(GNDZ0), .D3(VCCZ0), 
        .S00(_wr_c), .S01(VCCZ0), .S10(as_c), .S11(GNDZ0), .Y(y_115));
    DFE3C addr_reg_1 (.D(addr_reg_12Z0Z_1), .CLK(clk_c), .CLR(_reset_c)
        , .E(N_303_0), .Q(cpu_address[1]));
    CM8INV un1_addr_ena_1_0_0_cm8i (.A(N_295_n), .Y(
        un1_addr_ena_1_0_0_cm8iZ0));
    AND2A start_measure_0_and2_0_and2_419 (.A(_wr_c), .B(db_in[5]), .Y(
        y_14));
    CM8 reg_select_6_i_i_0 (.D0(y_107), .D1(GNDZ0), .D2(
        reg_select_6_i_i_cm8iZ0Z_0), .D3(dse[1]), .S00(dse[0]), .S01(
        reg_select_6_i_i_cm8iZ0Z_0), .S10(reg_select_0_d0), .S11(GNDZ0)
        , .Y(N_305_i_0));
    CM8INV dboreg_2_cm8i_0 (.A(ds_c_0), .Y(dboreg_2_cm8iZ0Z_0));
    CM8 dboregZ0Z_5 (.D0(N_150), .D1(test), .D2(N_150), .D3(N_150), 
        .S00(reg_select_0[1]), .S01(VCCZ0), .S10(reg_select_0[0]), 
        .S11(ds_c_0), .Y(dboreg_5));
    DFE3C addr_reg_11 (.D(y_97), .CLK(clk_c), .CLR(_reset_c), .E(y_114)
        , .Q(cpu_address[11]));
    DFC1B dseZ0Z_1 (.D(dse[0]), .CLK(clk_c), .CLR(_reset_c), .Q(dse[1])
        );
    DFE3C addr_reg_10 (.D(y_96), .CLK(clk_c), .CLR(_reset_c), .E(y_114)
        , .Q(cpu_address[10]));
    CM8 start_measure_0_and2_0_and2 (.D0(GNDZ0), .D1(reg_selectZ0Z_1), 
        .D2(GNDZ0), .D3(GNDZ0), .S00(ase[0]), .S01(y_14), .S10(ase[1]), 
        .S11(reg_select_0_d0), .Y(start_measure));
    CM8 dboreg_i_0_2 (.D0(GNDZ0), .D1(GNDZ0), .D2(VCCZ0), .D3(ds_c), 
        .S00(dboreg_i_0_cm8iZ0Z_2), .S01(reg_select_0[1]), .S10(N_147), 
        .S11(GNDZ0), .Y(y_110));
    CM8INV reg_select_6_i_0_cm8i_1 (.A(dse[1]), .Y(
        reg_select_6_i_0_cm8iZ0Z_1));
    CM8 I_75_s2_s0 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(cpu_address[1]), .S01(cpu_address[0]), .S10(
        cpu_address[2]), .S11(GNDZ0), .Y(y_120));
    DFC1B aseZ0Z_0 (.D(as_c), .CLK(clk_c), .CLR(_reset_c), .Q(ase[0]));
    CM8INV un1_un1_addr_ena_i_0_0_cm8i (.A(ase[1]), .Y(
        un1_un1_addr_ena_i_0_0_cm8iZ0));
    CM8 dboregZ0Z_0 (.D0(N_145), .D1(test_freq_8), .D2(N_145), .D3(
        N_145), .S00(reg_select_0[1]), .S01(VCCZ0), .S10(
        reg_select_0[0]), .S11(ds_c_0), .Y(dboreg_0));
    DFE3C pageZ0Z_0 (.D(db_in[0]), .CLK(clk_c), .CLR(_reset_c), .E(
        y_121), .Q(page[0]));
    CM8 dboreg_2_2 (.D0(qA_2), .D1(qC_2), .D2(md_in[2]), .D3(
        test_freq_2), .S00(reg_select_0[0]), .S01(dboreg_2_cm8iZ0Z_2), 
        .S10(ds_c_0), .S11(N_300_n), .Y(N_147));
    CM8 addr_reg_12_5 (.D0(cpu_address[5]), .D1(db_in[5]), .D2(
        cpu_address[5]), .D3(N_304), .S00(N_309), .S01(VCCZ0), .S10(
        N_295_n), .S11(GNDZ0), .Y(addr_reg_12Z0Z_5));
    CM8 addr_reg_12_sn_G_13_i_0_n (.D0(GNDZ0), .D1(GNDZ0), .D2(
        reg_selectZ0Z_1), .D3(VCCZ0), .S00(reg_select_0_d0), .S01(
        VCCZ0), .S10(addr_reg_12_sn_G_13_i_0_n_cm8iZ0), .S11(dse[0]), 
        .Y(N_309_n));
    quad_tmr_2 qtmrC (.qC({qC_3, qC_2, qC_1, qC_0}), .\b_c[2] (b_c[2]), 
        .\a_c[2] (a_c[2]), .onemks(onemks), ._reset_c(_reset_c), 
        .clk_c(clk_c), .onemks_1(onemks_1), .onemks_0(onemks_0));
    DFE3C addr_reg_6 (.D(addr_reg_12Z0Z_6), .CLK(clk_c), .CLR(_reset_c)
        , .E(y_114), .Q(cpu_address[6]));
    VCC VCC (.Y(VCCZ0));
    DFE3C addr_reg_7 (.D(addr_reg_12Z0Z_7), .CLK(clk_c), .CLR(_reset_c)
        , .E(y_114), .Q(cpu_address[7]));
    CM8INV addr_reg_12_sn_G_13_i_0_n_cm8i (.A(dse[1]), .Y(
        addr_reg_12_sn_G_13_i_0_n_cm8iZ0));
    DFE3C addr_reg_4 (.D(addr_reg_12Z0Z_4), .CLK(clk_c), .CLR(_reset_c)
        , .E(N_303_0), .Q(cpu_address[4]));
    CM8INV addr_reg_12_cm8i_4 (.A(cpu_address[4]), .Y(
        addr_reg_12_cm8iZ0Z_4));
    DFE3C addr_regZ0Z_20 (.D(y_92), .CLK(clk_c), .CLR(_reset_c), .E(
        y_114), .Q(\addr_reg[20] ));
    CM8 addr_reg_12_4 (.D0(db_in[4]), .D1(db_in[4]), .D2(
        cpu_address[4]), .D3(addr_reg_12_cm8iZ0Z_4), .S00(y_116), .S01(
        N_309), .S10(N_295_n), .S11(N_309_n), .Y(addr_reg_12Z0Z_4));
    CM8 next_cookie_0_and2_0_and2 (.D0(VCCZ0), .D1(reg_select_0_d0), 
        .D2(VCCZ0), .D3(VCCZ0), .S00(_wr_c), .S01(reg_selectZ0Z_1), 
        .S10(ase[1]), .S11(next_cookie_0_and2_0_and2_cm8iZ0), .Y(
        next_cookie));
    CM8INV addr_reg_12_cm8i_1 (.A(cpu_address[1]), .Y(
        addr_reg_12_cm8iZ0Z_1));
    CM8INV dboreg_2_cm8i_4 (.A(ds_c), .Y(dboreg_2_cm8iZ0Z_4));
    CM8 un1_un1_addr_ena_i_0_0_0 (.D0(VCCZ0), .D1(N_300_n), .D2(GNDZ0), 
        .D3(GNDZ0), .S00(un1_un1_addr_ena_i_0_0_0_cm8iZ0), .S01(ase[0])
        , .S10(N_295_n), .S11(GNDZ0), .Y(N_303_0));
    DFC1B aseZ0Z_1 (.D(ase[0]), .CLK(clk_c), .CLR(_reset_c), .Q(ase[1])
        );
    DFE3C addr_reg_2 (.D(addr_reg_12Z0Z_2), .CLK(clk_c), .CLR(_reset_c)
        , .E(N_303_0), .Q(cpu_address[2]));
    DFE3C pageZ0Z_3 (.D(db_in[3]), .CLK(clk_c), .CLR(_reset_c), .E(
        y_121), .Q(page[3]));
    CM8 addr_reg_12_2 (.D0(cpu_address[2]), .D1(db_in[2]), .D2(
        cpu_address[2]), .D3(y_120), .S00(N_309), .S01(VCCZ0), .S10(
        N_295_n), .S11(GNDZ0), .Y(addr_reg_12Z0Z_2));
    CM8INV next_cookie_0_and2_0_and2_cm8i (.A(ase[0]), .Y(
        next_cookie_0_and2_0_and2_cm8iZ0));
    DFE3C pageZ0Z_4 (.D(db_in[4]), .CLK(clk_c), .CLR(_reset_c), .E(
        y_121), .Q(page[4]));
    DFC1B reg_select_0_inst_1 (.D(N_305_i_0), .CLK(clk_c), .CLR(
        _reset_c), .Q(reg_select_0_d0));
    CM8INV dboreg_2_cm8i_5 (.A(ds_c_0), .Y(dboreg_2_cm8iZ0Z_5));
    DFE3C addr_reg_21 (.D(y_93), .CLK(clk_c), .CLR(_reset_c), .E(y_114)
        , .Q(mem_hold));
    CM8 addr_reg_12_6 (.D0(cpu_address[6]), .D1(db_in[6]), .D2(
        cpu_address[6]), .D3(y_118), .S00(N_309), .S01(VCCZ0), .S10(
        N_295_n), .S11(GNDZ0), .Y(addr_reg_12Z0Z_6));
    CM8INV dboreg_i_0_cm8i_4 (.A(reg_select_0_d0), .Y(
        dboreg_i_0_cm8iZ0Z_4));
    CM8 dboreg_2_0 (.D0(qA_0), .D1(qC_0), .D2(md_in[0]), .D3(
        test_freq_0), .S00(reg_select_0[0]), .S01(dboreg_2_cm8iZ0Z_0), 
        .S10(ds_c_0), .S11(N_300_n), .Y(N_145));
    DFE3C addr_reg_15 (.D(y_101), .CLK(clk_c), .CLR(_reset_c), .E(
        N_303_0), .Q(cpu_address[15]));
    DFE3C addr_reg_5 (.D(addr_reg_12Z0Z_5), .CLK(clk_c), .CLR(_reset_c)
        , .E(y_114), .Q(cpu_address[5]));
    DFE3C pageZ0Z_1 (.D(db_in[1]), .CLK(clk_c), .CLR(_reset_c), .E(
        y_121), .Q(page[1]));
    CM8 I_75_s3_s0 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(x2), .S01(cpu_address[0]), .S10(cpu_address[3]), .S11(
        GNDZ0), .Y(y_119));
    CM8INV dboreg_2_cm8i_6 (.A(ds_c_0), .Y(dboreg_2_cm8iZ0Z_6));
    CM8 dboreg_2_3 (.D0(qA_3), .D1(qC_3), .D2(md_in[3]), .D3(
        test_freq_3), .S00(reg_select_0[0]), .S01(dboreg_2_cm8iZ0Z_3), 
        .S10(ds_c_0), .S11(N_300_n), .Y(N_148));
    GND GND (.Y(GNDZ0));
    CM8INV dboreg_2_cm8i_1 (.A(ds_c_0), .Y(dboreg_2_cm8iZ0Z_1));
    DFE3C addr_reg_19 (.D(y_105), .CLK(clk_c), .CLR(_reset_c), .E(
        N_303_0), .Q(cpu_address[19]));
    CM8 addr_reg_12_7 (.D0(cpu_address[7]), .D1(db_in[7]), .D2(
        cpu_address[7]), .D3(y_117), .S00(N_309), .S01(VCCZ0), .S10(
        N_295_n), .S11(GNDZ0), .Y(addr_reg_12Z0Z_7));
    CM8 un1_addr_ena_1_0_0 (.D0(VCCZ0), .D1(VCCZ0), .D2(
        un1_addr_ena_1_0_0_cm8iZ0), .D3(ase[1]), .S00(ase[0]), .S01(
        un1_addr_ena_1_0_0_cm8iZ0), .S10(N_300_n), .S11(GNDZ0), .Y(
        y_121));
    quad_tmr_1 qtmrB (.qB({qB_3, qB_2, qB_1, qB_0}), .\b_c[1] (b_c[1]), 
        .\a_c[1] (a_c[1]), .onemks(onemks), ._reset_c(_reset_c), 
        .clk_c(clk_c), .onemks_1(onemks_1), .onemks_0(onemks_0));
    CM8 dboreg_2_7 (.D0(qB_3), .D1(qD_3), .D2(md_in[7]), .D3(
        test_freq_7), .S00(reg_select_0_d0), .S01(dboreg_2_cm8iZ0Z_7), 
        .S10(ds_c), .S11(N_300_n), .Y(N_152));
    DFE3C addr_reg_13 (.D(y_99), .CLK(clk_c), .CLR(_reset_c), .E(
        N_303_0), .Q(cpu_address[13]));
    CM8 addr_reg_12_1 (.D0(db_in[1]), .D1(db_in[1]), .D2(
        cpu_address[1]), .D3(addr_reg_12_cm8iZ0Z_1), .S00(
        cpu_address[0]), .S01(N_309), .S10(N_295_n), .S11(N_309_n), .Y(
        addr_reg_12Z0Z_1));
    DFE3C addr_reg_9 (.D(y_95), .CLK(clk_c), .CLR(_reset_c), .E(y_114), 
        .Q(cpu_address[9]));
    DFE3C addr_reg_12 (.D(y_98), .CLK(clk_c), .CLR(_reset_c), .E(y_114)
        , .Q(cpu_address[12]));
    DFE3C addr_reg_3 (.D(addr_reg_12Z0Z_3), .CLK(clk_c), .CLR(_reset_c)
        , .E(N_303_0), .Q(cpu_address[3]));
    CM8 addr_reg_12_sn_G_13_i_0 (.D0(VCCZ0), .D1(VCCZ0), .D2(dse[1]), 
        .D3(GNDZ0), .S00(dse[0]), .S01(VCCZ0), .S10(reg_select_0_d0), 
        .S11(reg_selectZ0Z_1), .Y(N_309));
    crt_measure crt_measure_obj (.test_freq({test_freq_9, test_freq_8, 
        test_freq_7, test_freq_6, test_freq_5, test_freq_4, 
        test_freq_3, test_freq_2, test_freq_1, test_freq_0}), 
        .\addr_reg[20] (\addr_reg[20] ), .vsync_in_c(vsync_in_c), 
        ._reset_c(_reset_c), .clk_c(clk_c), .start_measure(
        start_measure), .a(a), .hris_n(hris_n), .measure(measure));
    DFE3C addr_reg_16 (.D(y_102), .CLK(clk_c), .CLR(_reset_c), .E(
        N_303_0), .Q(cpu_address[16]));
    CM8 dboregZ0Z_1 (.D0(N_137), .D1(test_freq_9), .D2(N_146), .D3(
        N_146), .S00(reg_select_0[1]), .S01(VCCZ0), .S10(
        reg_select_0[0]), .S11(ds_c_0), .Y(dboreg_1));
    CM8 dboreg_1_1 (.D0(qA_1), .D1(md_in[1]), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(ds_c_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(N_137));
    CM8INV reg_select_6_i_i_cm8i_0 (.A(y_107), .Y(
        reg_select_6_i_i_cm8iZ0Z_0));
    CM8 I_76_s2_s0 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(cpu_address[5]), .S01(y_106), .S10(cpu_address[6]), .S11(
        GNDZ0), .Y(y_118));
    CM8 dboreg_i_0_4 (.D0(GNDZ0), .D1(GNDZ0), .D2(VCCZ0), .D3(ds_c), 
        .S00(dboreg_i_0_cm8iZ0Z_4), .S01(reg_selectZ0Z_1), .S10(N_149), 
        .S11(GNDZ0), .Y(y_112));
    CM8 addr_reg_12_3 (.D0(cpu_address[3]), .D1(db_in[3]), .D2(
        cpu_address[3]), .D3(y_119), .S00(N_309), .S01(VCCZ0), .S10(
        N_295_n), .S11(GNDZ0), .Y(addr_reg_12Z0Z_3));
    DFE3C addr_reg_8 (.D(y_94), .CLK(clk_c), .CLR(_reset_c), .E(y_114), 
        .Q(cpu_address[8]));
    DFC1B reg_select_0Z0Z_1 (.D(y_113), .CLK(clk_c), .CLR(_reset_c), 
        .Q(reg_select_0[1]));
    quad_tmr qtmrA (.qA({qA_3, qA_2, qA_1, qA_0}), .\b_c[0] (b_c[0]), 
        .\a_c[0] (a_c[0]), .onemks_1(onemks_1), ._reset_c(_reset_c), 
        .clk_c(clk_c), .onemks_0(onemks_0));
    CM8INV dboreg_2_cm8i_7 (.A(ds_c), .Y(dboreg_2_cm8iZ0Z_7));
    CM8INV dboreg_2_cm8i_2 (.A(ds_c_0), .Y(dboreg_2_cm8iZ0Z_2));
    CM8INV un1_un1_addr_ena_i_0_0_0_cm8i (.A(ase[1]), .Y(
        un1_un1_addr_ena_i_0_0_0_cm8iZ0));
    CM8INV dboreg_i_0_cm8i_3 (.A(reg_select_0[0]), .Y(
        dboreg_i_0_cm8iZ0Z_3));
    CM8 dboreg_2_1 (.D0(qA_1), .D1(qC_1), .D2(md_in[1]), .D3(
        test_freq_1), .S00(reg_select_0[0]), .S01(dboreg_2_cm8iZ0Z_1), 
        .S10(ds_c_0), .S11(N_300_n), .Y(N_146));
    CM8 dboregZ0Z_7 (.D0(N_152), .D1(\addr_reg[20] ), .D2(N_152), .D3(
        N_152), .S00(reg_selectZ0Z_1), .S01(VCCZ0), .S10(
        reg_select_0_d0), .S11(ds_c), .Y(dboreg_7));
    AND2 I_76_x2_0_and2_0_and2 (.A(cpu_address[5]), .B(cpu_address[6]), 
        .Y(x2_0));
    AND3 I_75_cry (.A(cpu_address[0]), .B(cpu_address[3]), .C(x2), .Y(
        y_116));
    CM8 dboreg_2_5 (.D0(qB_1), .D1(qD_1), .D2(md_in[5]), .D3(
        test_freq_5), .S00(reg_select_0[0]), .S01(dboreg_2_cm8iZ0Z_5), 
        .S10(ds_c_0), .S11(N_300_n), .Y(N_150));
    DFE3C addr_reg_18 (.D(y_104), .CLK(clk_c), .CLR(_reset_c), .E(
        N_303_0), .Q(cpu_address[18]));
    CM8INV dboreg_2_cm8i_3 (.A(ds_c_0), .Y(dboreg_2_cm8iZ0Z_3));
    CM8 dboregZ0Z_6 (.D0(N_151), .D1(measure), .D2(N_151), .D3(N_151), 
        .S00(reg_select_0[1]), .S01(VCCZ0), .S10(reg_select_0[0]), 
        .S11(ds_c_0), .Y(dboreg_6));
    quad_tmr_3 qtmrD (.qD({qD_3, qD_2, qD_1, qD_0}), .\b_c[3] (b_c[3]), 
        .\a_c[3] (a_c[3]), .onemks(onemks), ._reset_c(_reset_c), 
        .clk_c(clk_c), .onemks_0(onemks_0));
    DFE3C pageZ0Z_5 (.D(db_in[5]), .CLK(clk_c), .CLR(_reset_c), .E(
        y_121), .Q(page[5]));
    DFE3C addr_reg_14 (.D(y_100), .CLK(clk_c), .CLR(_reset_c), .E(
        N_303_0), .Q(cpu_address[14]));
    CM8INV dboreg_i_0_cm8i_2 (.A(reg_select_0[0]), .Y(
        dboreg_i_0_cm8iZ0Z_2));
    DFE3C addr_reg_0 (.D(addr_reg_12Z0Z_0), .CLK(clk_c), .CLR(_reset_c)
        , .E(N_303_0), .Q(cpu_address[0]));
    CM8 I_76_s1_0_xor2_0_xor2 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(
        GNDZ0), .S00(cpu_address[4]), .S01(y_116), .S10(cpu_address[5])
        , .S11(GNDZ0), .Y(N_304));
    CM8 dboreg_2_4 (.D0(qB_0), .D1(qD_0), .D2(md_in[4]), .D3(
        test_freq_4), .S00(reg_select_0_d0), .S01(dboreg_2_cm8iZ0Z_4), 
        .S10(ds_c), .S11(N_300_n), .Y(N_149));
    CM8 un1_un1_addr_ena_i_0_0 (.D0(VCCZ0), .D1(N_300_n), .D2(GNDZ0), 
        .D3(GNDZ0), .S00(un1_un1_addr_ena_i_0_0_cm8iZ0), .S01(ase[0]), 
        .S10(N_295_n), .S11(GNDZ0), .Y(y_114));
    DFE3C pageZ0Z_6 (.D(db_in[6]), .CLK(clk_c), .CLR(_reset_c), .E(
        y_121), .Q(page[6]));
    DFC1B reg_select_0Z0Z_0 (.D(N_305_i_0), .CLK(clk_c), .CLR(_reset_c)
        , .Q(reg_select_0[0]));
    CM8 addr_reg_12_0 (.D0(cpu_address[0]), .D1(db_in[0]), .D2(
        cpu_address[0]), .D3(addr_reg_12_cm8iZ0Z_0), .S00(N_309), .S01(
        VCCZ0), .S10(N_295_n), .S11(GNDZ0), .Y(addr_reg_12Z0Z_0));
    CM8 reg_select_6_i_0_1 (.D0(GNDZ0), .D1(GNDZ0), .D2(VCCZ0), .D3(
        y_107), .S00(reg_select_6_i_0_cm8iZ0Z_1), .S01(dse[0]), .S10(
        y_122), .S11(GNDZ0), .Y(y_113));
    DFE3C pageZ0Z_2 (.D(db_in[2]), .CLK(clk_c), .CLR(_reset_c), .E(
        y_121), .Q(page[2]));
    DFC1B dseZ0Z_0 (.D(ds_c), .CLK(clk_c), .CLR(_reset_c), .Q(dse[0]));
    CM8 dboreg_2_6 (.D0(qB_2), .D1(qD_2), .D2(md_in[6]), .D3(
        test_freq_6), .S00(reg_select_0[0]), .S01(dboreg_2_cm8iZ0Z_6), 
        .S10(ds_c_0), .S11(N_300_n), .Y(N_151));
    DFC1B reg_select_1 (.D(y_113), .CLK(clk_c), .CLR(_reset_c), .Q(
        reg_selectZ0Z_1));
    CM8 dboreg_i_0_3 (.D0(GNDZ0), .D1(GNDZ0), .D2(VCCZ0), .D3(ds_c_0), 
        .S00(dboreg_i_0_cm8iZ0Z_3), .S01(reg_select_0[1]), .S10(N_148), 
        .S11(GNDZ0), .Y(y_111));
    CM8 I_72_s1_s0 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(reg_select_0_d0), .S01(y_107), .S10(reg_selectZ0Z_1), 
        .S11(GNDZ0), .Y(y_122));
    CM8 I_76_s3_s0 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(x2_0), .S01(y_106), .S10(cpu_address[7]), .S11(GNDZ0), .Y(
        y_117));
    crt_cookie obj_crt_cookie (.test(test), ._reset_c(_reset_c), 
        .clk_c(clk_c), .next_cookie(next_cookie), .extnoice(extnoice));
    AND2 I_75_x2_0_and2_0_and2 (.A(cpu_address[1]), .B(cpu_address[2]), 
        .Y(x2));
    CM8INV addr_reg_12_cm8i_0 (.A(cpu_address[0]), .Y(
        addr_reg_12_cm8iZ0Z_0));
    
endmodule


module crt_scan(\hcnt_i_0[0] , \hcnt_i[0] , vcnt_4, vcnt_3, vcnt_0, 
        vcnt_5, vcnt_2, vcnt_1, hcnt_0, hcnt_1, hcnt_4, hcnt_5, hcnt_7, 
        hcnt_3, hcnt_6, hcnt_2, pxclk_i, _reset_c, clk_c, pxclk_i_0, 
        int_c, med_res_c, hsync, href, pxclk);
output  \hcnt_i_0[0] , \hcnt_i[0] , vcnt_4, vcnt_3, vcnt_0, vcnt_5, 
        vcnt_2, vcnt_1, hcnt_0, hcnt_1, hcnt_4, hcnt_5, hcnt_7, hcnt_3, 
        hcnt_6, hcnt_2;
input  pxclk_i, _reset_c, clk_c, pxclk_i_0;
output  int_c;
input  med_res_c;
output  hsync, href;
input  pxclk;

    wire y_8, un1_pxclk_1_1_nZ0, N_54_1, eof_frameZ0, y_10, 
        hsync_endZ0, un3_hsync_begZ0, hsync_begZ0, y_16, y_18, 
        un1_pxclkZ0, vsync_endZ0, vsync_begZ0, y_5, eof_lineZ0, 
        un3_eof_lineZ0, y_24, y_25, un6_vsync_endZ0, y_22, 
        un6_eof_frameZ0Z_3, y_23, y_21, y_19, y_20, y_17, y_15, y_12, 
        y_13, y_11, y_9, y_7, y_6, y_4, y_3, y_2, y_1, y_0, 
        un6_eof_frameZ0, y_26, y_27, y, y_56, y_66, y_57, y_58, y_59, 
        y_69, y_60, y_61, y_70, y_62, y_63, y_64, y_65, hsreg_6, 
        vsreg_8, hreg_6Z0Z_3, hreg_6Z0Z_2, hreg_6Z0Z_1, hreg_6Z0Z_0, 
        vreg_10Z0Z_8, vcntZ0Z_8, vreg_10Z0Z_7, vcntZ0Z_7, y_67, 
        vcntZ0Z_6, y_68, vreg_10Z0Z_4, vreg_10Z0Z_3, vreg_10Z0Z_2, 
        vreg_10Z0Z_1, vreg_10_0, hreg_6Z0Z_9, hcntZ0Z_9, hreg_6Z0Z_8, 
        hcntZ0Z_8, hreg_6Z0Z_7, hreg_6Z0Z_6, un6_hregZ0Z_5, 
        hreg_6Z0Z_4, VCCZ0, GNDZ0, un1_pxclk_462_cm8iZ0, 
        un6_eof_line_446_cm8iZ0, un3_hsync_beg_438_cm8iZ0, 
        un3_hsync_end_426_cm8iZ0, un3_vsync_end_412_cm8iZ0, 
        un6_vsync_beg_406_cm8iZ0, un6_vsync_beg_405_cm8iZ0, 
        un3_eof_frame_388_cm8iZ0, un6_vsync_end_cm8iZ0, 
        hreg_6_cm8iZ0Z_1, hreg_6_cm8iZ0Z_3, hreg_6_cm8iZ0Z_4, 
        un1_vcnt_1_cm8iZ0Z_6, vsreg_8_f0_cm8iZ0, hreg_6_cm8iZ0Z_2, 
        vreg_10_cm8iZ0Z_2, vsync_beg_cm8iZ0, eof_line_cm8iZ0, 
        hsync_end_cm8iZ0, vreg_10_cm8iZ0Z_7, vreg_10_cm8iZ0Z_3, 
        vreg_10_cm8iZ0Z_4, hreg_6_cm8iZ0Z_8, hreg_6_cm8iZ0Z_7, 
        hreg_6_cm8iZ0Z_6, vreg_10_cm8iZ0Z_1;
    
    CM8 vsreg_8_f0 (.D0(GNDZ0), .D1(GNDZ0), .D2(int_c), .D3(
        vsreg_8_f0_cm8iZ0), .S00(eof_lineZ0), .S01(VCCZ0), .S10(int_c), 
        .S11(vsync_begZ0), .Y(vsreg_8));
    AND4 un1_vcnt_1_c3 (.A(vcnt_0), .B(y_69), .C(vcnt_1), .D(vcnt_2), 
        .Y(y_59));
    CM8INV vreg_10_cm8i_2 (.A(un1_pxclkZ0), .Y(vreg_10_cm8iZ0Z_2));
    DFC1B vcntZ0Z_5 (.D(y_68), .CLK(clk_c), .CLR(_reset_c), .Q(vcnt_5));
    DFE3C hcntZ0Z_1 (.D(hreg_6Z0Z_1), .CLK(clk_c), .CLR(_reset_c), .E(
        pxclk_i_0), .Q(hcnt_1));
    AND4B un3_hsync_beg_437 (.A(hcnt_7), .B(hcntZ0Z_9), .C(hcnt_6), .D(
        hcnt_4), .Y(y_8));
    CM8 hreg_6_0 (.D0(GNDZ0), .D1(GNDZ0), .D2(VCCZ0), .D3(med_res_c), 
        .S00(y_5), .S01(y_4), .S10(\hcnt_i[0] ), .S11(GNDZ0), .Y(
        hreg_6Z0Z_0));
    AND3 un1_vcnt_1_c6 (.A(vcnt_3), .B(vcnt_4), .C(vcnt_5), .Y(y_58));
    AND4 un6_hreg_c3 (.A(hcnt_0), .B(hcnt_1), .C(hcnt_2), .D(hcnt_3), 
        .Y(y_64));
    AND3 un1_vcnt_1_c2 (.A(vcnt_0), .B(y_69), .C(vcnt_1), .Y(y_60));
    CM8INV eof_line_cm8i (.A(y_5), .Y(eof_line_cm8iZ0));
    CM8 un3_vsync_end_412 (.D0(GNDZ0), .D1(vcnt_4), .D2(GNDZ0), .D3(
        GNDZ0), .S00(un3_vsync_end_412_cm8iZ0), .S01(vcntZ0Z_7), .S10(
        vcnt_3), .S11(vcnt_0), .Y(y_17));
    CM8INV hreg_6_cm8i_3 (.A(eof_lineZ0), .Y(hreg_6_cm8iZ0Z_3));
    CM8 hcnt_iZ0Z_0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(hcnt_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        \hcnt_i[0] ));
    CM8 un6_vsync_end (.D0(GNDZ0), .D1(y_24), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(vcnt_0), .S01(y_25), .S10(un6_vsync_end_cm8iZ0), .S11(
        vcnt_4), .Y(un6_vsync_endZ0));
    AND3A un6_eof_line_445 (.A(hcnt_5), .B(hcnt_4), .C(hcnt_6), .Y(y_5)
        );
    CM8INV hreg_6_cm8i_1 (.A(eof_lineZ0), .Y(hreg_6_cm8iZ0Z_1));
    CM8INV hreg_6_cm8i_8 (.A(eof_lineZ0), .Y(hreg_6_cm8iZ0Z_8));
    DFE3C hcnt_9 (.D(hreg_6Z0Z_9), .CLK(clk_c), .CLR(_reset_c), .E(
        pxclk_i_0), .Q(hcntZ0Z_9));
    CM8 un6_hreg_5 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(hcnt_4), .S01(y_64), .S10(hcnt_5), .S11(GNDZ0), .Y(
        un6_hregZ0Z_5));
    CM8 un1_vcnt_1_1 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(pxclk), .S01(eof_lineZ0), .S10(vcnt_0), .S11(GNDZ0), .Y(
        vreg_10_0));
    CM8INV vsreg_8_f0_cm8i (.A(vsync_endZ0), .Y(vsreg_8_f0_cm8iZ0));
    CM8 un1_vcnt_1_7 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(y_58), .S01(y_59), .S10(vcntZ0Z_6), .S11(GNDZ0), .Y(y_67));
    DFC1B vcntZ0Z_4 (.D(vreg_10Z0Z_4), .CLK(clk_c), .CLR(_reset_c), .Q(
        vcnt_4));
    AND2B un6_eof_line_442 (.A(hcnt_3), .B(hcnt_2), .Y(y_6));
    AND3 un3_hsync_beg (.A(\hcnt_i[0] ), .B(y_8), .C(y_7), .Y(
        un3_hsync_begZ0));
    CM8 eof_frame (.D0(un6_eof_frameZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(
        y_26), .S00(med_res_c), .S01(y_27), .S10(med_res_c), .S11(
        GNDZ0), .Y(eof_frameZ0));
    DFC1B vcnt_6 (.D(y_67), .CLK(clk_c), .CLR(_reset_c), .Q(vcntZ0Z_6));
    VCC VCC (.Y(VCCZ0));
    AND4C un6_hsync_beg_451 (.A(hcnt_3), .B(hcnt_7), .C(hcntZ0Z_9), .D(
        hcntZ0Z_8), .Y(y_3));
    AND2A un3_vsync_end_408 (.A(vcnt_2), .B(vcnt_1), .Y(y_19));
    AND4B un3_vsync_beg_417 (.A(vcnt_1), .B(vcnt_2), .C(vcnt_5), .D(
        vcntZ0Z_6), .Y(y_16));
    DFC1B vcntZ0Z_0 (.D(vreg_10_0), .CLK(clk_c), .CLR(_reset_c), .Q(
        vcnt_0));
    CM8 un3_hsync_beg_438 (.D0(GNDZ0), .D1(hcnt_5), .D2(GNDZ0), .D3(
        GNDZ0), .S00(hcnt_1), .S01(hcnt_3), .S10(
        un3_hsync_beg_438_cm8iZ0), .S11(hcnt_2), .Y(y_7));
    AND3A un1_pxclk_1 (.A(eof_frameZ0), .B(eof_lineZ0), .C(pxclk), .Y(
        y_69));
    CM8 hreg_6_3 (.D0(GNDZ0), .D1(hreg_6_cm8iZ0Z_3), .D2(
        hreg_6_cm8iZ0Z_3), .D3(GNDZ0), .S00(y_65), .S01(VCCZ0), .S10(
        hcnt_3), .S11(GNDZ0), .Y(hreg_6Z0Z_3));
    AND2B un6_eof_frame_3 (.A(vcntZ0Z_6), .B(vcntZ0Z_7), .Y(
        un6_eof_frameZ0Z_3));
    DFE3C hcntZ0Z_6 (.D(hreg_6Z0Z_6), .CLK(clk_c), .CLR(_reset_c), .E(
        pxclk_i_0), .Q(hcnt_6));
    CM8INV un3_hsync_beg_438_cm8i (.A(hcntZ0Z_8), .Y(
        un3_hsync_beg_438_cm8iZ0));
    CM8 hsync_end (.D0(y_11), .D1(y_11), .D2(GNDZ0), .D3(hcnt_0), .S00(
        y_10), .S01(y_9), .S10(hsync_end_cm8iZ0), .S11(\hcnt_i_0[0] ), 
        .Y(hsync_endZ0));
    DFE3C hcntZ0Z_3 (.D(hreg_6Z0Z_3), .CLK(clk_c), .CLR(_reset_c), .E(
        pxclk_i_0), .Q(hcnt_3));
    CM8INV hreg_6_cm8i_6 (.A(eof_lineZ0), .Y(hreg_6_cm8iZ0Z_6));
    CM8 un3_eof_line (.D0(GNDZ0), .D1(hcnt_0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(hcnt_1), .S01(y_0), .S10(hcnt_4), .S11(hcnt_5), .Y(
        un3_eof_lineZ0));
    CM8INV un3_eof_frame_388_cm8i (.A(vcntZ0Z_7), .Y(
        un3_eof_frame_388_cm8iZ0));
    CM8 un6_hsync_end_431 (.D0(GNDZ0), .D1(hcnt_5), .D2(GNDZ0), .D3(
        GNDZ0), .S00(hcntZ0Z_8), .S01(hcnt_3), .S10(hcnt_1), .S11(
        hcnt_4), .Y(y_9));
    AND2 un1_vcnt_1x_c7 (.A(y_59), .B(y_57), .Y(y_56));
    CM8 un3_eof_frame_388 (.D0(GNDZ0), .D1(vcnt_3), .D2(GNDZ0), .D3(
        GNDZ0), .S00(vcnt_1), .S01(vcnt_4), .S10(
        un3_eof_frame_388_cm8iZ0), .S11(vcnt_2), .Y(y_26));
    CM8 hreg_6_2 (.D0(GNDZ0), .D1(hreg_6_cm8iZ0Z_2), .D2(
        hreg_6_cm8iZ0Z_2), .D3(GNDZ0), .S00(hcnt_1), .S01(hcnt_0), 
        .S10(hcnt_2), .S11(GNDZ0), .Y(hreg_6Z0Z_2));
    DFC1B vcnt_8 (.D(vreg_10Z0Z_8), .CLK(clk_c), .CLR(_reset_c), .Q(
        vcntZ0Z_8));
    CM8 vreg_10_7 (.D0(GNDZ0), .D1(vreg_10_cm8iZ0Z_7), .D2(
        vreg_10_cm8iZ0Z_7), .D3(GNDZ0), .S00(y_57), .S01(y_59), .S10(
        vcntZ0Z_7), .S11(GNDZ0), .Y(vreg_10Z0Z_7));
    CM8INV vreg_10_cm8i_4 (.A(un1_pxclkZ0), .Y(vreg_10_cm8iZ0Z_4));
    AND4B un3_eof_frame_387 (.A(vcntZ0Z_6), .B(vcnt_5), .C(vcntZ0Z_8), 
        .D(vcnt_0), .Y(y_27));
    CM8INV un1_pxclk_462_cm8i (.A(pxclk), .Y(un1_pxclk_462_cm8iZ0));
    CM8INV vsync_beg_cm8i (.A(y_21), .Y(vsync_beg_cm8iZ0));
    DFC1B vcntZ0Z_2 (.D(vreg_10Z0Z_2), .CLK(clk_c), .CLR(_reset_c), .Q(
        vcnt_2));
    GND GND (.Y(GNDZ0));
    CM8INV vreg_10_cm8i_1 (.A(vcnt_0), .Y(vreg_10_cm8iZ0Z_1));
    DFC1B vcntZ0Z_1 (.D(vreg_10Z0Z_1), .CLK(clk_c), .CLR(_reset_c), .Q(
        vcnt_1));
    CM8INV hreg_6_cm8i_4 (.A(eof_lineZ0), .Y(hreg_6_cm8iZ0Z_4));
    AND2B un3_hsync_end_421 (.A(hcnt_3), .B(hcnt_6), .Y(y_13));
    CM8INV hsync_end_cm8i (.A(med_res_c), .Y(hsync_end_cm8iZ0));
    CM8 hsreg_6_f0 (.D0(hsync_begZ0), .D1(GNDZ0), .D2(VCCZ0), .D3(
        GNDZ0), .S00(hsync_endZ0), .S01(VCCZ0), .S10(hsync), .S11(
        GNDZ0), .Y(hsreg_6));
    DFE3C hcnt_8 (.D(hreg_6Z0Z_8), .CLK(clk_c), .CLR(_reset_c), .E(
        pxclk_i_0), .Q(hcntZ0Z_8));
    OR2B un1_pxclk_1_1_n (.A(pxclk), .B(eof_lineZ0), .Y(
        un1_pxclk_1_1_nZ0));
    AND2A hreg_6_9 (.A(eof_lineZ0), .B(y_70), .Y(hreg_6Z0Z_9));
    CM8 hreg_6_4 (.D0(GNDZ0), .D1(hreg_6_cm8iZ0Z_4), .D2(
        hreg_6_cm8iZ0Z_4), .D3(GNDZ0), .S00(y_64), .S01(VCCZ0), .S10(
        hcnt_4), .S11(GNDZ0), .Y(hreg_6Z0Z_4));
    CM8 eof_line (.D0(y_4), .D1(GNDZ0), .D2(GNDZ0), .D3(un3_eof_lineZ0)
        , .S00(med_res_c), .S01(VCCZ0), .S10(eof_line_cm8iZ0), .S11(
        hcnt_0), .Y(eof_lineZ0));
    AND3 un6_hreg_c6 (.A(hcnt_4), .B(hcnt_5), .C(hcnt_6), .Y(y_63));
    CM8INV un3_vsync_end_412_cm8i (.A(vcntZ0Z_8), .Y(
        un3_vsync_end_412_cm8iZ0));
    CM8 un3_vsync_beg_418 (.D0(GNDZ0), .D1(vcnt_0), .D2(GNDZ0), .D3(
        GNDZ0), .S00(vcntZ0Z_7), .S01(vcnt_3), .S10(vcntZ0Z_8), .S11(
        vcnt_4), .Y(y_15));
    AND3A un6_vsync_end_392 (.A(vcnt_3), .B(vcnt_2), .C(vcntZ0Z_7), .Y(
        y_24));
    AND2 un6_eof_frame_395 (.A(vcnt_2), .B(vcntZ0Z_8), .Y(y_23));
    DFE3C hcntZ0Z_4 (.D(hreg_6Z0Z_4), .CLK(clk_c), .CLR(_reset_c), .E(
        pxclk_i), .Q(hcnt_4));
    CM8 un6_hsync_beg_453 (.D0(GNDZ0), .D1(y_3), .D2(GNDZ0), .D3(GNDZ0)
        , .S00(hcnt_6), .S01(hcnt_2), .S10(hcnt_4), .S11(hcnt_5), .Y(
        y_2));
    CM8 vsync_end (.D0(un6_vsync_endZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(
        y_17), .S00(hcntZ0Z_9), .S01(y_18), .S10(hcntZ0Z_9), .S11(
        GNDZ0), .Y(vsync_endZ0));
    CM8 vreg_10_1 (.D0(vcnt_0), .D1(vreg_10_cm8iZ0Z_1), .D2(GNDZ0), 
        .D3(un1_pxclk_1_1_nZ0), .S00(vcnt_1), .S01(VCCZ0), .S10(
        eof_frameZ0), .S11(un1_pxclk_1_1_nZ0), .Y(vreg_10Z0Z_1));
    AND4C un6_hsync_end_430 (.A(hcnt_2), .B(hcnt_7), .C(hcntZ0Z_9), .D(
        hcnt_6), .Y(y_10));
    CM8 un6_eof_line_446 (.D0(GNDZ0), .D1(y_6), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(hcntZ0Z_8), .S01(hcnt_1), .S10(un6_eof_line_446_cm8iZ0), 
        .S11(hcntZ0Z_9), .Y(y_4));
    CM8 hsync_beg (.D0(GNDZ0), .D1(y_2), .D2(un3_hsync_begZ0), .D3(
        GNDZ0), .S00(hcnt_1), .S01(hcnt_0), .S10(med_res_c), .S11(
        GNDZ0), .Y(hsync_begZ0));
    AND4 un6_hreg_c7 (.A(hcnt_4), .B(hcnt_5), .C(hcnt_6), .D(hcnt_7), 
        .Y(y_62));
    AND4B un3_hsync_end_423 (.A(hcnt_1), .B(hcntZ0Z_9), .C(hcntZ0Z_8), 
        .D(hcnt_7), .Y(y_12));
    CM8 hreg_6_6 (.D0(GNDZ0), .D1(hreg_6_cm8iZ0Z_6), .D2(
        hreg_6_cm8iZ0Z_6), .D3(GNDZ0), .S00(hcnt_5), .S01(N_54_1), 
        .S10(hcnt_6), .S11(GNDZ0), .Y(hreg_6Z0Z_6));
    DFE3C hcntZ0Z_2 (.D(hreg_6Z0Z_2), .CLK(clk_c), .CLR(_reset_c), .E(
        pxclk_i_0), .Q(hcnt_2));
    AND2 un1_pxclk (.A(eof_lineZ0), .B(y), .Y(un1_pxclkZ0));
    CM8 hcnt_i_0Z0Z_0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(hcnt_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        \hcnt_i_0[0] ));
    DFE3C hcntZ0Z_7 (.D(hreg_6Z0Z_7), .CLK(clk_c), .CLR(_reset_c), .E(
        pxclk_i_0), .Q(hcnt_7));
    CM8 un6_vsync_beg_405 (.D0(un6_vsync_beg_405_cm8iZ0), .D1(GNDZ0), 
        .D2(GNDZ0), .D3(GNDZ0), .S00(vcnt_0), .S01(VCCZ0), .S10(
        vcntZ0Z_8), .S11(vcnt_5), .Y(y_21));
    CM8 vsync_beg (.D0(y_20), .D1(GNDZ0), .D2(GNDZ0), .D3(y_15), .S00(
        hcntZ0Z_9), .S01(y_16), .S10(hcntZ0Z_9), .S11(vsync_beg_cm8iZ0)
        , .Y(vsync_begZ0));
    CM8INV un6_vsync_beg_405_cm8i (.A(vcntZ0Z_6), .Y(
        un6_vsync_beg_405_cm8iZ0));
    CM8INV un3_hsync_end_426_cm8i (.A(hcnt_2), .Y(
        un3_hsync_end_426_cm8iZ0));
    CM8INV hreg_6_cm8i_7 (.A(eof_lineZ0), .Y(hreg_6_cm8iZ0Z_7));
    CM8 hreg_6_7 (.D0(GNDZ0), .D1(hreg_6_cm8iZ0Z_7), .D2(
        hreg_6_cm8iZ0Z_7), .D3(GNDZ0), .S00(y_63), .S01(y_64), .S10(
        hcnt_7), .S11(GNDZ0), .Y(hreg_6Z0Z_7));
    AND4A un3_vsync_end_411 (.A(vcnt_2), .B(vcnt_1), .C(vcnt_5), .D(
        vcntZ0Z_6), .Y(y_18));
    AX1C un6_hreg_9 (.A(y_61), .B(hcntZ0Z_8), .C(hcntZ0Z_9), .Y(y_70));
    AND2 un6_hregx_c5_1 (.A(y_64), .B(hcnt_4), .Y(N_54_1));
    CM8 un3_eof_line_458 (.D0(GNDZ0), .D1(y_1), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(hcntZ0Z_9), .S01(hcnt_3), .S10(hcnt_7), .S11(hcntZ0Z_8), 
        .Y(y_0));
    CM8INV un6_vsync_beg_406_cm8i (.A(vcntZ0Z_7), .Y(
        un6_vsync_beg_406_cm8iZ0));
    DFE3C hsyncZ0 (.D(hsreg_6), .CLK(clk_c), .CLR(_reset_c), .E(
        pxclk_i_0), .Q(hsync));
    CM8 hreg_6_1 (.D0(hreg_6_cm8iZ0Z_1), .D1(GNDZ0), .D2(GNDZ0), .D3(
        hreg_6_cm8iZ0Z_1), .S00(\hcnt_i[0] ), .S01(VCCZ0), .S10(hcnt_1)
        , .S11(GNDZ0), .Y(hreg_6Z0Z_1));
    CM8INV vreg_10_cm8i_3 (.A(un1_pxclkZ0), .Y(vreg_10_cm8iZ0Z_3));
    AND2 un6_hregx_c7 (.A(y_64), .B(y_62), .Y(y_61));
    CM8 vreg_10_3 (.D0(GNDZ0), .D1(VCCZ0), .D2(vreg_10_cm8iZ0Z_3), .D3(
        GNDZ0), .S00(vreg_10_cm8iZ0Z_3), .S01(y_59), .S10(vcnt_3), 
        .S11(GNDZ0), .Y(vreg_10Z0Z_3));
    AND3 un6_hreg_c2 (.A(hcnt_0), .B(hcnt_1), .C(hcnt_2), .Y(y_65));
    CM8 un1_vcnt_1_6 (.D0(GNDZ0), .D1(vcnt_4), .D2(VCCZ0), .D3(
        un1_vcnt_1_cm8iZ0Z_6), .S00(vcnt_3), .S01(y_59), .S10(vcnt_5), 
        .S11(GNDZ0), .Y(y_68));
    DFE3C hcntZ0Z_0 (.D(hreg_6Z0Z_0), .CLK(clk_c), .CLR(_reset_c), .E(
        pxclk_i_0), .Q(hcnt_0));
    CM8INV vreg_10_cm8i_7 (.A(un1_pxclkZ0), .Y(vreg_10_cm8iZ0Z_7));
    CM8 vreg_10_2 (.D0(GNDZ0), .D1(VCCZ0), .D2(vreg_10_cm8iZ0Z_2), .D3(
        GNDZ0), .S00(vreg_10_cm8iZ0Z_2), .S01(y_60), .S10(vcnt_2), 
        .S11(GNDZ0), .Y(vreg_10Z0Z_2));
    DFE3C vsync (.D(vsreg_8), .CLK(clk_c), .CLR(_reset_c), .E(
        pxclk_i_0), .Q(int_c));
    CM8 vreg_10_4 (.D0(GNDZ0), .D1(vreg_10_cm8iZ0Z_4), .D2(
        vreg_10_cm8iZ0Z_4), .D3(GNDZ0), .S00(vcnt_3), .S01(y_59), .S10(
        vcnt_4), .S11(GNDZ0), .Y(vreg_10Z0Z_4));
    AND3B un6_eof_frame_399 (.A(vcnt_1), .B(vcnt_5), .C(vcnt_0), .Y(
        y_22));
    CM8 un1_pxclk_462 (.D0(un6_eof_frameZ0), .D1(un6_eof_frameZ0), .D2(
        GNDZ0), .D3(y_26), .S00(pxclk), .S01(y_27), .S10(
        un1_pxclk_462_cm8iZ0), .S11(med_res_c), .Y(y));
    AND4C hrefZ0 (.A(hcntZ0Z_8), .B(vcntZ0Z_8), .C(hcntZ0Z_9), .D(
        un6_eof_frameZ0Z_3), .Y(href));
    DFE3C hcntZ0Z_5 (.D(un6_hregZ0Z_5), .CLK(clk_c), .CLR(_reset_c), 
        .E(pxclk_i_0), .Q(hcnt_5));
    CM8INV hreg_6_cm8i_2 (.A(eof_lineZ0), .Y(hreg_6_cm8iZ0Z_2));
    AND2A vreg_10_8 (.A(un1_pxclkZ0), .B(y_66), .Y(vreg_10Z0Z_8));
    DFC1B vcnt_7 (.D(vreg_10Z0Z_7), .CLK(clk_c), .CLR(_reset_c), .Q(
        vcntZ0Z_7));
    AND4 un1_vcnt_1_c7 (.A(vcnt_3), .B(vcnt_4), .C(vcnt_5), .D(
        vcntZ0Z_6), .Y(y_57));
    CM8 un6_eof_frame (.D0(GNDZ0), .D1(y_22), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(un6_eof_frameZ0Z_3), .S01(y_23), .S10(vcnt_4), .S11(
        vcnt_3), .Y(un6_eof_frameZ0));
    CM8 un3_hsync_end_426 (.D0(GNDZ0), .D1(y_12), .D2(GNDZ0), .D3(
        GNDZ0), .S00(hcnt_5), .S01(y_13), .S10(hcnt_4), .S11(
        un3_hsync_end_426_cm8iZ0), .Y(y_11));
    AX1C un1_vcnt_1_9 (.A(y_56), .B(vcntZ0Z_7), .C(vcntZ0Z_8), .Y(y_66)
        );
    CM8INV un1_vcnt_1_cm8i_6 (.A(vcnt_4), .Y(un1_vcnt_1_cm8iZ0Z_6));
    CM8INV un6_eof_line_446_cm8i (.A(hcnt_7), .Y(
        un6_eof_line_446_cm8iZ0));
    CM8 hreg_6_8 (.D0(GNDZ0), .D1(hreg_6_cm8iZ0Z_8), .D2(
        hreg_6_cm8iZ0Z_8), .D3(GNDZ0), .S00(y_61), .S01(VCCZ0), .S10(
        hcntZ0Z_8), .S11(GNDZ0), .Y(hreg_6Z0Z_8));
    CM8INV un6_vsync_end_cm8i (.A(vcnt_1), .Y(un6_vsync_end_cm8iZ0));
    DFC1B vcntZ0Z_3 (.D(vreg_10Z0Z_3), .CLK(clk_c), .CLR(_reset_c), .Q(
        vcnt_3));
    AND3B un6_vsync_end_390 (.A(vcntZ0Z_8), .B(vcntZ0Z_6), .C(vcnt_5), 
        .Y(y_25));
    CM8 un6_vsync_beg_406 (.D0(GNDZ0), .D1(vcnt_3), .D2(GNDZ0), .D3(
        GNDZ0), .S00(vcnt_1), .S01(vcnt_4), .S10(
        un6_vsync_beg_406_cm8iZ0), .S11(y_19), .Y(y_20));
    AND2A un3_eof_line_456 (.A(hcnt_2), .B(hcnt_6), .Y(y_1));
    
endmodule


module onefextractor_2(a, _reset_c, clk_c, hsync_in_c);
output  a;
input  _reset_c, clk_c, hsync_in_c;

    
    DFC1B aZ0 (.D(hsync_in_c), .CLK(clk_c), .CLR(_reset_c), .Q(a));
    
endmodule


module crt_syncsinv(a, _reset_c, _reset_c_i, clk_c, excsync, y_28, 
        hris_n, vsync_in_c, onemks_0, hsync_in_c, onemks_1);
output  a;
input  _reset_c, _reset_c_i, clk_c;
output  excsync;
input  y_28, hris_n, vsync_in_c, onemks_0, hsync_in_c, onemks_1;

    wire un1_vcntZ0Z_1, un1_hcntZ0Z_1, un1_un1_hcntZ0Z_1, y_29, axb3, 
        axb2, N_13, N_14, N_15, N_17, y_82, N_16, y_80, N_11, c2, anb2, 
        y_81, axb3i, y_79, axb1, y_71, vcntZ0Z_3, y_72, vcntZ0Z_2, 
        y_73, vcntZ0Z_1, y_74, vcntZ0Z_0, y_75, hcntZ0Z_3, y_76, 
        hcntZ0Z_2, y_77, hcntZ0Z_1, y_78, hcntZ0Z_0, GNDZ0, VCCZ0, 
        csync_cm8iZ0, un1_un1_hris_cm8iZ0, un1_un1_hcnt_1_cm8iZ0, 
        un1_un1_un1_un1_un1_onemks_cm8iZ0Z_0, G_13_cm8iZ0, G_14_cm8iZ0, 
        G_15_cm8iZ0;
    
    DFC1B vcnt_2 (.D(y_72), .CLK(clk_c), .CLR(_reset_c), .Q(vcntZ0Z_2));
    XNOR2 fadd4_nc_3t0_axb3i (.A(vcntZ0Z_3), .B(y_81), .Y(axb3i));
    XOR2 fadd4_nc_3t0_axb1 (.A(y_81), .B(vcntZ0Z_1), .Y(axb1));
    CM8 I_21_a (.D0(N_13), .D1(N_16), .D2(N_16), .D3(N_16), .S00(N_14), 
        .S01(N_15), .S10(N_17), .S11(GNDZ0), .Y(y_75));
    DFC1B hcnt_2 (.D(y_76), .CLK(clk_c), .CLR(_reset_c), .Q(hcntZ0Z_2));
    CM8INV un1_un1_un1_un1_un1_onemks_cm8i_0 (.A(hsync_in_c), .Y(
        un1_un1_un1_un1_un1_onemks_cm8iZ0Z_0));
    CM8INV un1_un1_hris_cm8i (.A(vcntZ0Z_3), .Y(un1_un1_hris_cm8iZ0));
    AND2 I_20 (.A(hcntZ0Z_2), .B(y_82), .Y(N_17));
    CM8INV csync_cm8i (.A(vcntZ0Z_3), .Y(csync_cm8iZ0));
    VCC VCC (.Y(VCCZ0));
    CM8 G_13 (.D0(G_13_cm8iZ0), .D1(hsync_in_c), .D2(GNDZ0), .D3(VCCZ0)
        , .S00(hcntZ0Z_1), .S01(VCCZ0), .S10(un1_un1_hcntZ0Z_1), .S11(
        onemks_0), .Y(N_11));
    CM8 un1_un1_un1_un1_un1_hris_0 (.D0(vsync_in_c), .D1(VCCZ0), .D2(
        GNDZ0), .D3(VCCZ0), .S00(y_81), .S01(VCCZ0), .S10(hris_n), 
        .S11(un1_vcntZ0Z_1), .Y(y_79));
    AND4 un1_vcnt_1 (.A(vcntZ0Z_0), .B(vcntZ0Z_1), .C(vcntZ0Z_3), .D(
        vcntZ0Z_2), .Y(un1_vcntZ0Z_1));
    DFC1B vcnt_1 (.D(y_73), .CLK(clk_c), .CLR(_reset_c), .Q(vcntZ0Z_1));
    CM8 un1_un1_hcnt_1 (.D0(un1_un1_hcnt_1_cm8iZ0), .D1(GNDZ0), .D2(
        GNDZ0), .D3(GNDZ0), .S00(hcntZ0Z_0), .S01(VCCZ0), .S10(
        hcntZ0Z_1), .S11(hcntZ0Z_3), .Y(un1_un1_hcntZ0Z_1));
    CY2A fadd4_nc_3t0_c2 (.A0(vcntZ0Z_0), .A1(vcntZ0Z_1), .B0(y_79), 
        .B1(y_81), .Y(c2));
    GND GND (.Y(GNDZ0));
    DFP1 vcnt_3 (.CLK(clk_c), .D(y_71), .PRE(_reset_c_i), .Q(vcntZ0Z_3)
        );
    CM8INV un1_un1_hcnt_1_cm8i (.A(hcntZ0Z_2), .Y(
        un1_un1_hcnt_1_cm8iZ0));
    DFC1B hcnt_1 (.D(y_77), .CLK(clk_c), .CLR(_reset_c), .Q(hcntZ0Z_1));
    CM8INV G_15_cm8i (.A(hsync_in_c), .Y(G_15_cm8iZ0));
    XOR2 fadd4_nc_3t0_axb3 (.A(y_81), .B(vcntZ0Z_3), .Y(axb3));
    DFP1 hcnt_3 (.CLK(clk_c), .D(y_75), .PRE(_reset_c_i), .Q(hcntZ0Z_3)
        );
    onefextractor_2 hsig_obj (.a(a), ._reset_c(_reset_c), .clk_c(clk_c)
        , .hsync_in_c(hsync_in_c));
    XOR2 fadd4_nc_3t0_s0 (.A(y_79), .B(vcntZ0Z_0), .Y(y_74));
    XOR2 fadd4_nc_3t0_s2 (.A(c2), .B(axb2), .Y(y_72));
    XOR2 G_12 (.A(y_80), .B(hcntZ0Z_0), .Y(y_78));
    CM8 csync (.D0(vcntZ0Z_3), .D1(csync_cm8iZ0), .D2(csync_cm8iZ0), 
        .D3(vcntZ0Z_3), .S00(y_28), .S01(VCCZ0), .S10(hcntZ0Z_3), .S11(
        GNDZ0), .Y(excsync));
    CM8INV G_13_cm8i (.A(hsync_in_c), .Y(G_13_cm8iZ0));
    XOR2 fadd4_nc_3t0_axb2 (.A(y_81), .B(vcntZ0Z_2), .Y(axb2));
    CM8 un1_un1_hris (.D0(VCCZ0), .D1(vcntZ0Z_0), .D2(GNDZ0), .D3(
        GNDZ0), .S00(un1_un1_hris_cm8iZ0), .S01(y_29), .S10(vsync_in_c)
        , .S11(hris_n), .Y(y_81));
    CM8 G_15 (.D0(G_15_cm8iZ0), .D1(hsync_in_c), .D2(GNDZ0), .D3(VCCZ0)
        , .S00(hcntZ0Z_3), .S01(VCCZ0), .S10(un1_un1_hcntZ0Z_1), .S11(
        onemks_0), .Y(N_13));
    AX1C fadd4_nc_3t0_s1 (.A(vcntZ0Z_0), .B(y_79), .C(axb1), .Y(y_73));
    CM8 G_14 (.D0(G_14_cm8iZ0), .D1(hsync_in_c), .D2(GNDZ0), .D3(VCCZ0)
        , .S00(hcntZ0Z_2), .S01(VCCZ0), .S10(un1_un1_hcntZ0Z_1), .S11(
        onemks_0), .Y(N_14));
    AND4 un1_hcnt_1 (.A(hcntZ0Z_0), .B(hcntZ0Z_1), .C(hcntZ0Z_3), .D(
        hcntZ0Z_2), .Y(un1_hcntZ0Z_1));
    AND2 fadd4_nc_3t0_anb2 (.A(vcntZ0Z_2), .B(y_81), .Y(anb2));
    DFC1B vcnt_0 (.D(y_74), .CLK(clk_c), .CLR(_reset_c), .Q(vcntZ0Z_0));
    XNOR2 I_19 (.A(hcntZ0Z_3), .B(y_82), .Y(N_16));
    AND2B un1_un1_vcnt_1_375 (.A(vcntZ0Z_1), .B(vcntZ0Z_2), .Y(y_29));
    CM8 fadd4_nc_3t0_s3_a (.D0(axb3), .D1(axb3i), .D2(axb3i), .D3(
        axb3i), .S00(axb2), .S01(c2), .S10(anb2), .S11(GNDZ0), .Y(y_71)
        );
    AND3C un1_un1_onemks (.A(onemks_1), .B(hsync_in_c), .C(
        un1_un1_hcntZ0Z_1), .Y(y_82));
    CY2A I_22 (.A0(hcntZ0Z_0), .A1(hcntZ0Z_1), .B0(y_80), .B1(y_82), 
        .Y(N_15));
    CM8INV G_14_cm8i (.A(hsync_in_c), .Y(G_14_cm8iZ0));
    CM8 un1_un1_un1_un1_un1_onemks_0 (.D0(VCCZ0), .D1(GNDZ0), .D2(y_82)
        , .D3(GNDZ0), .S00(onemks_0), .S01(VCCZ0), .S10(
        un1_un1_un1_un1_un1_onemks_cm8iZ0Z_0), .S11(un1_hcntZ0Z_1), .Y(
        y_80));
    AX1C I_17 (.A(hcntZ0Z_0), .B(y_80), .C(N_11), .Y(y_77));
    DFC1B hcnt_0 (.D(y_78), .CLK(clk_c), .CLR(_reset_c), .Q(hcntZ0Z_0));
    XOR2 G_18 (.A(N_15), .B(N_14), .Y(y_76));
    
endmodule


module crt_pix(pixel_c, md_in, \hcnt_i[0] , \hcnt_i_0[0] , _reset_c, 
        clk_c, pxclk_i, bus_mux, bus_mux_0, href);
output  [3:0] pixel_c;
input  [7:0] md_in;
input  \hcnt_i[0] , \hcnt_i_0[0] , _reset_c, clk_c, pxclk_i, bus_mux, 
        bus_mux_0, href;

    wire N_26, N_27, N_29, N_30, N_33, N_32, N_31, N_28, 
        pixel_reg_10_7, pixel_regZ0Z_7, pixel_reg_10_6, pixel_regZ0Z_6, 
        pixel_reg_10_5, pixel_regZ0Z_5, pixel_reg_10_4, pixel_regZ0Z_4, 
        pixel_reg_10_3, pixel_reg_10_2, pixel_reg_10_1, pixel_reg_10_0, 
        GNDZ0, VCCZ0;
    
    AND2 pixel_reg_10_1_and2_0_and2_0_and2_2 (.A(N_28), .B(href), .Y(
        pixel_reg_10_2));
    AND2 pixel_reg_10_1_and2_0_and2_0_and2_4 (.A(N_30), .B(href), .Y(
        pixel_reg_10_4));
    CM8 pixel_reg_10_0_7 (.D0(md_in[7]), .D1(GNDZ0), .D2(
        pixel_regZ0Z_7), .D3(pixel_regZ0Z_7), .S00(bus_mux_0), .S01(
        VCCZ0), .S10(\hcnt_i_0[0] ), .S11(GNDZ0), .Y(N_33));
    CM8 pixel_reg_10_0_5 (.D0(md_in[5]), .D1(GNDZ0), .D2(
        pixel_regZ0Z_5), .D3(pixel_regZ0Z_5), .S00(bus_mux), .S01(
        VCCZ0), .S10(\hcnt_i[0] ), .S11(GNDZ0), .Y(N_31));
    DFE3C pixel_reg_6 (.D(pixel_reg_10_6), .CLK(clk_c), .CLR(_reset_c), 
        .E(pxclk_i), .Q(pixel_regZ0Z_6));
    DFE3C pixel_reg_5 (.D(pixel_reg_10_5), .CLK(clk_c), .CLR(_reset_c), 
        .E(pxclk_i), .Q(pixel_regZ0Z_5));
    CM8 pixel_reg_10_0_1 (.D0(md_in[1]), .D1(GNDZ0), .D2(
        pixel_regZ0Z_5), .D3(pixel_regZ0Z_5), .S00(bus_mux_0), .S01(
        VCCZ0), .S10(\hcnt_i_0[0] ), .S11(GNDZ0), .Y(N_27));
    GND GND (.Y(GNDZ0));
    DFE3C pixel_reg_3 (.D(pixel_reg_10_3), .CLK(clk_c), .CLR(_reset_c), 
        .E(pxclk_i), .Q(pixel_c[3]));
    AND2 pixel_reg_10_1_and2_0_and2_0_and2_0 (.A(N_26), .B(href), .Y(
        pixel_reg_10_0));
    CM8 pixel_reg_10_0_6 (.D0(md_in[6]), .D1(GNDZ0), .D2(
        pixel_regZ0Z_6), .D3(pixel_regZ0Z_6), .S00(bus_mux), .S01(
        VCCZ0), .S10(\hcnt_i_0[0] ), .S11(GNDZ0), .Y(N_32));
    CM8 pixel_reg_10_0_3 (.D0(md_in[3]), .D1(GNDZ0), .D2(
        pixel_regZ0Z_7), .D3(pixel_regZ0Z_7), .S00(bus_mux_0), .S01(
        VCCZ0), .S10(\hcnt_i_0[0] ), .S11(GNDZ0), .Y(N_29));
    AND2 pixel_reg_10_1_and2_0_and2_0_and2_6 (.A(N_32), .B(href), .Y(
        pixel_reg_10_6));
    AND2 pixel_reg_10_1_and2_0_and2_0_and2_1 (.A(N_27), .B(href), .Y(
        pixel_reg_10_1));
    DFE3C pixel_reg_4 (.D(pixel_reg_10_4), .CLK(clk_c), .CLR(_reset_c), 
        .E(pxclk_i), .Q(pixel_regZ0Z_4));
    DFE3C pixel_reg_2 (.D(pixel_reg_10_2), .CLK(clk_c), .CLR(_reset_c), 
        .E(pxclk_i), .Q(pixel_c[2]));
    AND2 pixel_reg_10_1_and2_0_and2_0_and2_5 (.A(N_31), .B(href), .Y(
        pixel_reg_10_5));
    DFE3C pixel_reg_7 (.D(pixel_reg_10_7), .CLK(clk_c), .CLR(_reset_c), 
        .E(pxclk_i), .Q(pixel_regZ0Z_7));
    DFE3C pixel_reg_1 (.D(pixel_reg_10_1), .CLK(clk_c), .CLR(_reset_c), 
        .E(pxclk_i), .Q(pixel_c[1]));
    CM8 pixel_reg_10_0_4 (.D0(md_in[4]), .D1(GNDZ0), .D2(
        pixel_regZ0Z_4), .D3(pixel_regZ0Z_4), .S00(bus_mux_0), .S01(
        VCCZ0), .S10(\hcnt_i_0[0] ), .S11(GNDZ0), .Y(N_30));
    VCC VCC (.Y(VCCZ0));
    CM8 pixel_reg_10_0_0 (.D0(md_in[0]), .D1(GNDZ0), .D2(
        pixel_regZ0Z_4), .D3(pixel_regZ0Z_4), .S00(bus_mux_0), .S01(
        VCCZ0), .S10(\hcnt_i_0[0] ), .S11(GNDZ0), .Y(N_26));
    AND2 pixel_reg_10_1_and2_0_and2_0_and2_7 (.A(N_33), .B(href), .Y(
        pixel_reg_10_7));
    CM8 pixel_reg_10_0_2 (.D0(md_in[2]), .D1(GNDZ0), .D2(
        pixel_regZ0Z_6), .D3(pixel_regZ0Z_6), .S00(bus_mux), .S01(
        VCCZ0), .S10(\hcnt_i[0] ), .S11(GNDZ0), .Y(N_28));
    AND2 pixel_reg_10_1_and2_0_and2_0_and2_3 (.A(N_29), .B(href), .Y(
        pixel_reg_10_3));
    DFE3C pixel_reg_0 (.D(pixel_reg_10_0), .CLK(clk_c), .CLR(_reset_c), 
        .E(pxclk_i), .Q(pixel_c[0]));
    
endmodule


module crt_clock(_reset_c, clk_c, pxclk_i, pxclk_i_0, onemks_1, 
        onemks_0, onemks, med_res_c, pxclk);
input  _reset_c, clk_c;
output  pxclk_i, pxclk_i_0, onemks_1, onemks_0, onemks;
input  med_res_c;
output  pxclk;

    wire y_55, x2, y_54, y_53, div16Z0Z_2, div16_6_1, div16Z0Z_1, 
        div16_iZ0Z_0, div16Z0Z_0, div2Z0Z_6, y_52, div16Z0Z_3, VCCZ0, 
        GNDZ0, div16_6_i_cm8iZ0Z_3, div16_6_i_cm8iZ0Z_2;
    
    DFC1B div16_3 (.D(y_52), .CLK(clk_c), .CLR(_reset_c), .Q(
        div16Z0Z_3));
    DFC1B div16_1 (.D(div16_6_1), .CLK(clk_c), .CLR(_reset_c), .Q(
        div16Z0Z_1));
    DFC1B pxclkZ0 (.D(div2Z0Z_6), .CLK(clk_c), .CLR(_reset_c), .Q(
        pxclk));
    OR2A div2_6 (.A(pxclk), .B(med_res_c), .Y(div2Z0Z_6));
    AND2 I_1_x2_0_and2 (.A(div16Z0Z_1), .B(div16Z0Z_2), .Y(x2));
    CM8 I_1_s2_s0 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(div16Z0Z_1), .S01(div16Z0Z_0), .S10(div16Z0Z_2), .S11(
        GNDZ0), .Y(y_55));
    CM8 div16_6_i_2 (.D0(y_55), .D1(GNDZ0), .D2(y_55), .D3(y_55), .S00(
        div16Z0Z_2), .S01(div16Z0Z_0), .S10(div16_6_i_cm8iZ0Z_2), .S11(
        div16Z0Z_1), .Y(y_53));
    CM8 div16_i_0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(div16Z0Z_0), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        div16_iZ0Z_0));
    CM8INV div16_6_i_cm8i_3 (.A(div16Z0Z_3), .Y(div16_6_i_cm8iZ0Z_3));
    CM8 div16_6_i_3 (.D0(y_54), .D1(GNDZ0), .D2(y_54), .D3(y_54), .S00(
        div16Z0Z_2), .S01(div16Z0Z_0), .S10(div16_6_i_cm8iZ0Z_3), .S11(
        div16Z0Z_1), .Y(y_52));
    GND GND (.Y(GNDZ0));
    CM8 pxclk_iZ0Z_0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(pxclk), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        pxclk_i_0));
    CM8 pxclk_iZ0 (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(pxclk), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(pxclk_i)
        );
    CM8 div16_6_0_1 (.D0(div16Z0Z_0), .D1(GNDZ0), .D2(div16_iZ0Z_0), 
        .D3(div16_iZ0Z_0), .S00(div16Z0Z_3), .S01(div16Z0Z_2), .S10(
        div16Z0Z_1), .S11(GNDZ0), .Y(div16_6_1));
    DFC1B div16_2 (.D(y_53), .CLK(clk_c), .CLR(_reset_c), .Q(
        div16Z0Z_2));
    DFC1B div16_0 (.D(div16_iZ0Z_0), .CLK(clk_c), .CLR(_reset_c), .Q(
        div16Z0Z_0));
    OR4C onemks_0_and2_0 (.A(div16Z0Z_2), .B(div16Z0Z_0), .C(
        div16Z0Z_3), .D(div16Z0Z_1), .Y(onemks_0));
    CM8 I_1_s3_s0 (.D0(GNDZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), 
        .S00(x2), .S01(div16Z0Z_0), .S10(div16Z0Z_3), .S11(GNDZ0), .Y(
        y_54));
    OR4C onemks_0_and2_1 (.A(div16Z0Z_2), .B(div16Z0Z_0), .C(
        div16Z0Z_3), .D(div16Z0Z_1), .Y(onemks_1));
    VCC VCC (.Y(VCCZ0));
    CM8INV div16_6_i_cm8i_2 (.A(div16Z0Z_3), .Y(div16_6_i_cm8iZ0Z_2));
    OR4C onemks_0_and2 (.A(div16Z0Z_2), .B(div16Z0Z_0), .C(div16Z0Z_3), 
        .D(div16Z0Z_1), .Y(onemks));
    
endmodule


module crt_sys(db, ma, md, pixel, a, b, clk, _reset, ds, as, _wr, _mcs, 
        _mrd, _mwr, med_res, csync, hsync_in, vsync_in, extsyncon, int);
inout  [7:0] db;
output  [19:0] ma;
inout  [7:0] md;
output  [3:0] pixel;
input  [3:0] a;
input  [3:0] b;
input  clk, _reset, ds, as, _wr;
output  _mcs, _mrd, _mwr;
input  med_res;
output  csync;
input  hsync_in, vsync_in, extsyncon;
output  int;

    wire pxclk, onemks, hcnt_1, hcnt_2, hcnt_3, hcnt_4, hcnt_5, hcnt_6, 
        hcnt_7, vcnt_0, vcnt_1, vcnt_2, vcnt_3, vcnt_4, vcnt_5, hsync, 
        cpu_address_0, cpu_address_1, cpu_address_2, cpu_address_3, 
        cpu_address_4, cpu_address_5, cpu_address_6, cpu_address_7, 
        cpu_address_8, cpu_address_9, cpu_address_10, cpu_address_11, 
        cpu_address_12, cpu_address_13, cpu_address_14, cpu_address_15, 
        cpu_address_16, cpu_address_17, cpu_address_18, cpu_address_19, 
        mem_hold, page_0, page_1, page_2, page_3, page_4, page_5, 
        page_6, extnoiceZ0, ob_crt_mem_bus_mux, ob_crt_cpu_addr_reg_20, 
        ob_crt_cpu_ase_0, ob_crt_cpu_ase_1, ob_crt_cpu_dse_0, 
        ob_crt_cpu_dse_1, ob_crt_cpu_reg_select_0, ob_crt_cpu_dboreg_7, 
        ob_crt_cpu_dboreg_6, ob_crt_cpu_dboreg_5, ob_crt_cpu_dboreg_1, 
        ob_crt_cpu_dboreg_0, GNDZ0, VCCZ0, ob_crt_mem_bus_dir_out, 
        ob_crt_syncsinv_hsig_obj_a, hcnt_0, N_296, N_297, excsync, 
        href, clk_c, db_in_0, db_in_1, db_in_2, db_in_3, db_in_4, 
        db_in_5, db_in_6, db_in_7, ds_c, as_c, Z_wr_c, md_in_0, 
        md_in_1, md_in_2, md_in_3, md_in_4, md_in_5, md_in_6, md_in_7, 
        med_res_c, pixel_c_0, pixel_c_1, pixel_c_2, pixel_c_3, csync_c, 
        a_c_0, a_c_1, a_c_2, a_c_3, b_c_0, b_c_1, b_c_2, b_c_3, 
        hsync_in_c, vsync_in_c, extsyncon_c, int_c, Z_reset_c, 
        hcnt_i_0, pxclk_i, Z_reset_c_iZ0, ob_crt_mem_bus_dir_out_i, 
        ob_crt_syncsinv_hris_n, N_300_n, N_295_n, pxclk_i_0, 
        ob_crt_cpu_reg_select_0_0, ob_crt_cpu_reg_select_0_1, 
        ob_crt_mem_bus_mux_0, ob_crt_mem_bus_mux_1, onemks_0, onemks_1, 
        hcnt_i_0_0, ds_c_0, y_28, y_30, y_31, y_32, y_33, y_34, y_35, 
        y_36, y_37, y_38, y_39, y_40, y_41, y_42, y_43, y_44, y_45, 
        y_46, y_47, y_48, y_49, y_50, y_51, y_92, y_93, y_94, y_95, 
        y_96, y_97, y_98, y_99, y_100, y_101, y_102, y_103, y_104, 
        y_105, y_106, y_107, y_108, y_109, y_110, y_111, y_112, y_115, 
        y_116, csync_cm8iZ0, G_311_cm8iZ0, G_312_cm8iZ0;
    
    OUTBUF pixel_pad_1 (.PAD(pixel[1]), .D(pixel_c_1));
    CM8 G_322 (.D0(hcnt_5), .D1(cpu_address_4), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(ob_crt_mem_bus_mux), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0)
        , .Y(y_47));
    INBUF a_pad_2 (.PAD(a[2]), .Y(a_c_2));
    OUTBUF ma_pad_0 (.PAD(ma[0]), .D(y_51));
    OUTBUF ma_pad_16 (.PAD(ma[16]), .D(y_35));
    BIBUF db_pad_3 (.PAD(db[3]), .D(y_111), .E(y_115), .Y(db_in_3));
    OUTBUF ma_pad_19 (.PAD(ma[19]), .D(y_32));
    CM8 G_353 (.D0(db_in_0), .D1(cpu_address_8), .D2(GNDZ0), .D3(GNDZ0)
        , .S00(N_296), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_94));
    OUTBUF ma_pad_13 (.PAD(ma[13]), .D(y_38));
    CM8 G_328 (.D0(page_3), .D1(cpu_address_16), .D2(GNDZ0), .D3(GNDZ0)
        , .S00(ob_crt_mem_bus_mux_1), .S01(VCCZ0), .S10(GNDZ0), .S11(
        GNDZ0), .Y(y_35));
    AND2 G_314 (.A(y_116), .B(cpu_address_4), .Y(y_106));
    CM8 G_343 (.D0(db_in_2), .D1(cpu_address_18), .D2(GNDZ0), .D3(
        GNDZ0), .S00(N_297), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        y_104));
    OUTBUF pixel_pad_0 (.PAD(pixel[0]), .D(pixel_c_0));
    OUTBUF ma_pad_6 (.PAD(ma[6]), .D(y_45));
    OUTBUF ma_pad_15 (.PAD(ma[15]), .D(y_36));
    OUTBUF ma_pad_14 (.PAD(ma[14]), .D(y_37));
    CM8 G_352 (.D0(db_in_1), .D1(cpu_address_9), .D2(GNDZ0), .D3(GNDZ0)
        , .S00(N_296), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_95));
    CM8 G_339 (.D0(hcnt_3), .D1(cpu_address_2), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(ob_crt_mem_bus_mux_0), .S01(VCCZ0), .S10(GNDZ0), .S11(
        GNDZ0), .Y(y_49));
    crt_mem ob_crt_mem (.\hcnt_i[0] (hcnt_i_0), .\hcnt_i_0[0] (
        hcnt_i_0_0), .y_109(y_109), .href(href), .bus_mux_0(
        ob_crt_mem_bus_mux_0), .bus_mux_1(ob_crt_mem_bus_mux_1), 
        ._reset_c(Z_reset_c), .clk_c(clk_c), .mem_hold(mem_hold), 
        .bus_dir_out(ob_crt_mem_bus_dir_out), .bus_dir_out_i(
        ob_crt_mem_bus_dir_out_i), ._wr_c(Z_wr_c), .bus_mux(
        ob_crt_mem_bus_mux), .ds_c(ds_c));
    CM8 G_342 (.D0(db_in_3), .D1(cpu_address_19), .D2(GNDZ0), .D3(
        GNDZ0), .S00(N_297), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        y_105));
    BIBUF db_pad_5 (.PAD(db[5]), .D(ob_crt_cpu_dboreg_5), .E(y_115), 
        .Y(db_in_5));
    crt_cpu ob_crt_cpu (.a_c({a_c_3, a_c_2, a_c_1, a_c_0}), .b_c({
        b_c_3, b_c_2, b_c_1, b_c_0}), .page({page_6, page_5, page_4, 
        page_3, page_2, page_1, page_0}), .md_in({md_in_7, md_in_6, 
        md_in_5, md_in_4, md_in_3, md_in_2, md_in_1, md_in_0}), .dse({
        ob_crt_cpu_dse_1, ob_crt_cpu_dse_0}), .ase({ob_crt_cpu_ase_1, 
        ob_crt_cpu_ase_0}), .reg_select_0({ob_crt_cpu_reg_select_0_1, 
        ob_crt_cpu_reg_select_0_0}), .db_in({db_in_7, db_in_6, db_in_5, 
        db_in_4, db_in_3, db_in_2, db_in_1, db_in_0}), .cpu_address({
        cpu_address_19, cpu_address_18, cpu_address_17, cpu_address_16, 
        cpu_address_15, cpu_address_14, cpu_address_13, cpu_address_12, 
        cpu_address_11, cpu_address_10, cpu_address_9, cpu_address_8, 
        cpu_address_7, cpu_address_6, cpu_address_5, cpu_address_4, 
        cpu_address_3, cpu_address_2, cpu_address_1, cpu_address_0}), 
        .\addr_reg[20] (ob_crt_cpu_addr_reg_20), .reg_select_0_d0(
        ob_crt_cpu_reg_select_0), .dboreg_7(ob_crt_cpu_dboreg_7), 
        .dboreg_6(ob_crt_cpu_dboreg_6), .dboreg_5(ob_crt_cpu_dboreg_5), 
        .dboreg_1(ob_crt_cpu_dboreg_1), .dboreg_0(ob_crt_cpu_dboreg_0), 
        .hris_n(ob_crt_syncsinv_hris_n), .a(ob_crt_syncsinv_hsig_obj_a)
        , .vsync_in_c(vsync_in_c), .extnoice(extnoiceZ0), .onemks(
        onemks), .onemks_0(onemks_0), .onemks_1(onemks_1), .y_92(y_92), 
        .mem_hold(mem_hold), .y_93(y_93), .y_94(y_94), .y_95(y_95), 
        .y_96(y_96), .y_97(y_97), .y_98(y_98), .y_99(y_99), .y_100(
        y_100), .y_101(y_101), .y_102(y_102), .y_103(y_103), .y_104(
        y_104), .y_105(y_105), .y_106(y_106), .y_112(y_112), .y_115(
        y_115), .as_c(as_c), .y_110(y_110), .ds_c(ds_c), .y_111(y_111), 
        .ds_c_0(ds_c_0), .y_107(y_107), .N_295_n(N_295_n), .N_300_n(
        N_300_n), ._reset_c(Z_reset_c), .clk_c(clk_c), ._wr_c(Z_wr_c), 
        .y_116(y_116));
    BIBUF md_pad_2 (.PAD(md[2]), .D(db_in_2), .E(
        ob_crt_mem_bus_dir_out), .Y(md_in_2));
    XOR2 G_368 (.A(vcnt_0), .B(hcnt_5), .Y(y_30));
    INBUF a_pad_1 (.PAD(a[1]), .Y(a_c_1));
    OUTBUF Z_mrd_pad (.PAD(_mrd), .D(y_109));
    CM8 Z_reset_c_i (.D0(VCCZ0), .D1(GNDZ0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(Z_reset_c), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        Z_reset_c_iZ0));
    CM8 G_334 (.D0(vcnt_2), .D1(cpu_address_9), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(ob_crt_mem_bus_mux_1), .S01(VCCZ0), .S10(GNDZ0), .S11(
        GNDZ0), .Y(y_42));
    CM8INV csync_cm8i (.A(hsync), .Y(csync_cm8iZ0));
    AND2 G_315_n (.A(ob_crt_cpu_reg_select_0_1), .B(
        ob_crt_cpu_reg_select_0_0), .Y(N_300_n));
    VCC VCC (.Y(VCCZ0));
    CM8 G_348 (.D0(db_in_5), .D1(cpu_address_13), .D2(GNDZ0), .D3(
        GNDZ0), .S00(N_296), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        y_99));
    CM8 G_325 (.D0(page_6), .D1(cpu_address_19), .D2(GNDZ0), .D3(GNDZ0)
        , .S00(ob_crt_mem_bus_mux_1), .S01(VCCZ0), .S10(GNDZ0), .S11(
        GNDZ0), .Y(y_32));
    AND2A G_310_n (.A(ob_crt_cpu_dse_0), .B(ob_crt_cpu_dse_1), .Y(
        N_295_n));
    OUTBUF ma_pad_12 (.PAD(ma[12]), .D(y_39));
    CM8 G_351 (.D0(db_in_2), .D1(cpu_address_10), .D2(GNDZ0), .D3(
        GNDZ0), .S00(N_296), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        y_96));
    CM8 G_336 (.D0(hcnt_7), .D1(cpu_address_6), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(ob_crt_mem_bus_mux), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0)
        , .Y(y_45));
    INBUF extsyncon_pad (.PAD(extsyncon), .Y(extsyncon_c));
    CM8 G_341 (.D0(hcnt_1), .D1(cpu_address_0), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(ob_crt_mem_bus_mux_0), .S01(VCCZ0), .S10(GNDZ0), .S11(
        GNDZ0), .Y(y_51));
    CM8INV G_312_cm8i (.A(ob_crt_cpu_dse_1), .Y(G_312_cm8iZ0));
    OUTBUF int_pad (.PAD(int), .D(int_c));
    CM8 G_350 (.D0(db_in_3), .D1(cpu_address_11), .D2(GNDZ0), .D3(
        GNDZ0), .S00(N_296), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        y_97));
    OUTBUF ma_pad_8 (.PAD(ma[8]), .D(y_43));
    OUTBUF Z_mcs_pad (.PAD(_mcs), .D(y_108));
    CM8 N_100_i_i (.D0(VCCZ0), .D1(GNDZ0), .D2(ob_crt_mem_bus_mux), 
        .D3(GNDZ0), .S00(ds_c), .S01(ob_crt_mem_bus_mux), .S10(href), 
        .S11(GNDZ0), .Y(y_108));
    OUTBUF ma_pad_2 (.PAD(ma[2]), .D(y_49));
    CM8 G_340 (.D0(hcnt_2), .D1(cpu_address_1), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(ob_crt_mem_bus_mux_0), .S01(VCCZ0), .S10(GNDZ0), .S11(
        GNDZ0), .Y(y_50));
    CM8 extnoice (.D0(hcnt_0), .D1(hcnt_i_0), .D2(hcnt_i_0), .D3(
        hcnt_0), .S00(y_30), .S01(VCCZ0), .S10(y_31), .S11(GNDZ0), .Y(
        extnoiceZ0));
    INBUF b_pad_3 (.PAD(b[3]), .Y(b_c_3));
    INBUF med_res_pad (.PAD(med_res), .Y(med_res_c));
    crt_scan ob_crt_scan (.\hcnt_i_0[0] (hcnt_i_0_0), .\hcnt_i[0] (
        hcnt_i_0), .vcnt_4(vcnt_4), .vcnt_3(vcnt_3), .vcnt_0(vcnt_0), 
        .vcnt_5(vcnt_5), .vcnt_2(vcnt_2), .vcnt_1(vcnt_1), .hcnt_0(
        hcnt_0), .hcnt_1(hcnt_1), .hcnt_4(hcnt_4), .hcnt_5(hcnt_5), 
        .hcnt_7(hcnt_7), .hcnt_3(hcnt_3), .hcnt_6(hcnt_6), .hcnt_2(
        hcnt_2), .pxclk_i(pxclk_i), ._reset_c(Z_reset_c), .clk_c(clk_c)
        , .pxclk_i_0(pxclk_i_0), .int_c(int_c), .med_res_c(med_res_c), 
        .hsync(hsync), .href(href), .pxclk(pxclk));
    BIBUF db_pad_2 (.PAD(db[2]), .D(y_110), .E(y_115), .Y(db_in_2));
    OUTBUF ma_pad_7 (.PAD(ma[7]), .D(y_44));
    CM8 G_355 (.D0(db_in_6), .D1(ob_crt_cpu_addr_reg_20), .D2(GNDZ0), 
        .D3(GNDZ0), .S00(N_297), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), 
        .Y(y_92));
    INBUF as_pad (.PAD(as), .Y(as_c));
    CM8 G_337 (.D0(hcnt_6), .D1(cpu_address_5), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(ob_crt_mem_bus_mux_0), .S01(VCCZ0), .S10(GNDZ0), .S11(
        GNDZ0), .Y(y_46));
    CM8 G_345 (.D0(db_in_0), .D1(cpu_address_16), .D2(GNDZ0), .D3(
        GNDZ0), .S00(N_297), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        y_102));
    BIBUF db_pad_4 (.PAD(db[4]), .D(y_112), .E(y_115), .Y(db_in_4));
    CM8INV G_311_cm8i (.A(ob_crt_cpu_dse_1), .Y(G_311_cm8iZ0));
    BIBUF md_pad_0 (.PAD(md[0]), .D(db_in_0), .E(
        ob_crt_mem_bus_dir_out), .Y(md_in_0));
    BIBUF db_pad_1 (.PAD(db[1]), .D(ob_crt_cpu_dboreg_1), .E(y_115), 
        .Y(db_in_1));
    BIBUF md_pad_7 (.PAD(md[7]), .D(db_in_7), .E(
        ob_crt_mem_bus_dir_out), .Y(md_in_7));
    OUTBUF pixel_pad_3 (.PAD(pixel[3]), .D(pixel_c_3));
    OUTBUF ma_pad_10 (.PAD(ma[10]), .D(y_41));
    AND2A G_313 (.A(ob_crt_cpu_ase_0), .B(ob_crt_cpu_ase_1), .Y(y_107));
    GND GND (.Y(GNDZ0));
    OUTBUF ma_pad_1 (.PAD(ma[1]), .D(y_50));
    INBUF hsync_in_pad (.PAD(hsync_in), .Y(hsync_in_c));
    CM8 G_312 (.D0(VCCZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), .S00(
        ob_crt_cpu_reg_select_0_1), .S01(VCCZ0), .S10(G_312_cm8iZ0), 
        .S11(ob_crt_cpu_dse_0), .Y(N_297));
    BIBUF db_pad_7 (.PAD(db[7]), .D(ob_crt_cpu_dboreg_7), .E(y_115), 
        .Y(db_in_7));
    crt_syncsinv ob_crt_syncsinv (.a(ob_crt_syncsinv_hsig_obj_a), 
        ._reset_c(Z_reset_c), ._reset_c_i(Z_reset_c_iZ0), .clk_c(clk_c)
        , .excsync(excsync), .y_28(y_28), .hris_n(
        ob_crt_syncsinv_hris_n), .vsync_in_c(vsync_in_c), .onemks_0(
        onemks_0), .hsync_in_c(hsync_in_c), .onemks_1(onemks_1));
    CM8 G_329 (.D0(page_2), .D1(cpu_address_15), .D2(GNDZ0), .D3(GNDZ0)
        , .S00(ob_crt_mem_bus_mux_1), .S01(VCCZ0), .S10(GNDZ0), .S11(
        GNDZ0), .Y(y_36));
    XOR2 G_367_380 (.A(vsync_in_c), .B(hsync_in_c), .Y(y_28));
    crt_pix ob_crt_pix (.pixel_c({pixel_c_3, pixel_c_2, pixel_c_1, 
        pixel_c_0}), .md_in({md_in_7, md_in_6, md_in_5, md_in_4, 
        md_in_3, md_in_2, md_in_1, md_in_0}), .\hcnt_i[0] (hcnt_i_0), 
        .\hcnt_i_0[0] (hcnt_i_0_0), ._reset_c(Z_reset_c), .clk_c(clk_c)
        , .pxclk_i(pxclk_i), .bus_mux(ob_crt_mem_bus_mux), .bus_mux_0(
        ob_crt_mem_bus_mux_0), .href(href));
    BIBUF md_pad_3 (.PAD(md[3]), .D(db_in_3), .E(
        ob_crt_mem_bus_dir_out), .Y(md_in_3));
    OUTBUF ma_pad_18 (.PAD(ma[18]), .D(y_33));
    CM8 G_333 (.D0(vcnt_3), .D1(cpu_address_10), .D2(GNDZ0), .D3(GNDZ0)
        , .S00(ob_crt_mem_bus_mux_1), .S01(VCCZ0), .S10(GNDZ0), .S11(
        GNDZ0), .Y(y_41));
    INBUF b_pad_2 (.PAD(b[2]), .Y(b_c_2));
    CM8 G_324 (.D0(vcnt_5), .D1(cpu_address_12), .D2(GNDZ0), .D3(GNDZ0)
        , .S00(ob_crt_mem_bus_mux_1), .S01(VCCZ0), .S10(GNDZ0), .S11(
        GNDZ0), .Y(y_39));
    INBUF vsync_in_pad (.PAD(vsync_in), .Y(vsync_in_c));
    BIBUF md_pad_1 (.PAD(md[1]), .D(db_in_1), .E(
        ob_crt_mem_bus_dir_out), .Y(md_in_1));
    OUTBUF ma_pad_3 (.PAD(ma[3]), .D(y_48));
    CM8 G_332 (.D0(vcnt_4), .D1(cpu_address_11), .D2(GNDZ0), .D3(GNDZ0)
        , .S00(ob_crt_mem_bus_mux_1), .S01(VCCZ0), .S10(GNDZ0), .S11(
        GNDZ0), .Y(y_40));
    INBUF a_pad_3 (.PAD(a[3]), .Y(a_c_3));
    CM8 G_311 (.D0(VCCZ0), .D1(VCCZ0), .D2(VCCZ0), .D3(GNDZ0), .S00(
        ob_crt_cpu_reg_select_0), .S01(VCCZ0), .S10(G_311_cm8iZ0), 
        .S11(ob_crt_cpu_dse_0), .Y(N_296));
    CM8 G_349 (.D0(db_in_4), .D1(cpu_address_12), .D2(GNDZ0), .D3(
        GNDZ0), .S00(N_296), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        y_98));
    CM8 G_326 (.D0(page_5), .D1(cpu_address_18), .D2(GNDZ0), .D3(GNDZ0)
        , .S00(ob_crt_mem_bus_mux_1), .S01(VCCZ0), .S10(GNDZ0), .S11(
        GNDZ0), .Y(y_33));
    BUFF ds_pad_0 (.A(ds_c), .Y(ds_c_0));
    OUTBUF ma_pad_11 (.PAD(ma[11]), .D(y_40));
    INBUF Z_wr_pad (.PAD(_wr), .Y(Z_wr_c));
    CM8 G_338 (.D0(hcnt_4), .D1(cpu_address_3), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(ob_crt_mem_bus_mux_0), .S01(VCCZ0), .S10(GNDZ0), .S11(
        GNDZ0), .Y(y_48));
    CLKBUF Z_reset_pad (.PAD(_reset), .Y(Z_reset_c));
    crt_clock ob_clock (._reset_c(Z_reset_c), .clk_c(clk_c), .pxclk_i(
        pxclk_i), .pxclk_i_0(pxclk_i_0), .onemks_1(onemks_1), 
        .onemks_0(onemks_0), .onemks(onemks), .med_res_c(med_res_c), 
        .pxclk(pxclk));
    CM8 G_354 (.D0(db_in_7), .D1(mem_hold), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(N_297), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(y_93));
    INBUF b_pad_1 (.PAD(b[1]), .Y(b_c_1));
    OUTBUF ma_pad_17 (.PAD(ma[17]), .D(y_34));
    CM8 G_344 (.D0(db_in_1), .D1(cpu_address_17), .D2(GNDZ0), .D3(
        GNDZ0), .S00(N_297), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        y_103));
    CM8 G_327 (.D0(page_4), .D1(cpu_address_17), .D2(GNDZ0), .D3(GNDZ0)
        , .S00(ob_crt_mem_bus_mux_1), .S01(VCCZ0), .S10(GNDZ0), .S11(
        GNDZ0), .Y(y_34));
    OUTBUF ma_pad_4 (.PAD(ma[4]), .D(y_47));
    CM8 G_331 (.D0(page_0), .D1(cpu_address_13), .D2(GNDZ0), .D3(GNDZ0)
        , .S00(ob_crt_mem_bus_mux_1), .S01(VCCZ0), .S10(GNDZ0), .S11(
        GNDZ0), .Y(y_38));
    INBUF a_pad_0 (.PAD(a[0]), .Y(a_c_0));
    OUTBUF ma_pad_5 (.PAD(ma[5]), .D(y_46));
    CM8 G_330 (.D0(page_1), .D1(cpu_address_14), .D2(GNDZ0), .D3(GNDZ0)
        , .S00(ob_crt_mem_bus_mux_1), .S01(VCCZ0), .S10(GNDZ0), .S11(
        GNDZ0), .Y(y_37));
    OUTBUF Z_mwr_pad (.PAD(_mwr), .D(ob_crt_mem_bus_dir_out_i));
    CM8 G_346 (.D0(db_in_7), .D1(cpu_address_15), .D2(GNDZ0), .D3(
        GNDZ0), .S00(N_296), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        y_101));
    OUTBUF pixel_pad_2 (.PAD(pixel[2]), .D(pixel_c_2));
    BIBUF md_pad_4 (.PAD(md[4]), .D(db_in_4), .E(
        ob_crt_mem_bus_dir_out), .Y(md_in_4));
    OUTBUF ma_pad_9 (.PAD(ma[9]), .D(y_42));
    XOR2 G_367 (.A(vcnt_5), .B(y_28), .Y(y_31));
    CM8 G_335 (.D0(vcnt_1), .D1(cpu_address_8), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(ob_crt_mem_bus_mux_0), .S01(VCCZ0), .S10(GNDZ0), .S11(
        GNDZ0), .Y(y_43));
    CM8 csyncZ0 (.D0(hsync), .D1(excsync), .D2(csync_cm8iZ0), .D3(
        excsync), .S00(extsyncon_c), .S01(VCCZ0), .S10(int_c), .S11(
        GNDZ0), .Y(csync_c));
    BIBUF db_pad_6 (.PAD(db[6]), .D(ob_crt_cpu_dboreg_6), .E(y_115), 
        .Y(db_in_6));
    OUTBUF csync_pad (.PAD(csync), .D(csync_c));
    CM8 G_347 (.D0(db_in_6), .D1(cpu_address_14), .D2(GNDZ0), .D3(
        GNDZ0), .S00(N_296), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0), .Y(
        y_100));
    INBUF b_pad_0 (.PAD(b[0]), .Y(b_c_0));
    BIBUF md_pad_5 (.PAD(md[5]), .D(db_in_5), .E(
        ob_crt_mem_bus_dir_out), .Y(md_in_5));
    CM8 G_323 (.D0(vcnt_0), .D1(cpu_address_7), .D2(GNDZ0), .D3(GNDZ0), 
        .S00(ob_crt_mem_bus_mux), .S01(VCCZ0), .S10(GNDZ0), .S11(GNDZ0)
        , .Y(y_44));
    BIBUF md_pad_6 (.PAD(md[6]), .D(db_in_6), .E(
        ob_crt_mem_bus_dir_out), .Y(md_in_6));
    INBUF ds_pad (.PAD(ds), .Y(ds_c));
    BIBUF db_pad_0 (.PAD(db[0]), .D(ob_crt_cpu_dboreg_0), .E(y_115), 
        .Y(db_in_0));
    HCLKBUF clk_pad (.PAD(clk), .Y(clk_c));
    
endmodule
