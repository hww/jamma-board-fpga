//---------------------------------------------------------------------
//
// crt_top
//
//---------------------------------------------------------------------

// This file is test file. It should be to do the next sequence:
//
//  1   Setup address and page register hold mem
//      Change qud timers
//  2   Write date
//  3   Read data
//  4   Read status register
//  5   Setup address and page register free mem

module crt_top;

    reg             clk, _reset;
    wire            med_res;
    reg     [7:0]   dbi, mdi;
    reg             ds, as, _wr;
    wire    [3:0]   pixel;
	wire  	[7:0]	md;
	wire	[19:0]  ma;
	wire    [7:0]	db;
    reg     [3:0]   a, b;
    reg             hsync, vsync;
    wire            extsyncon;
    
    assign extsyncon = 1;
    assign med_res 	 = 1;  
	assign db = dbi;
    assign md = mdi;

    crt_sys ob_crt_sys( clk, _reset, db, ds, as, _wr, ma, md,  _mcs, _mrd, _mwr, med_res, pixel, sync, a, b, hsync, vsync, extsyncon, int);

    initial begin
        mdi <= 8'bzzzz_zzzz;
        #200 mdi = 8'b0000_0001;    // AL
        #400 mdi = 8'b0000_0010;    // AM
        #400 mdi = 8'b1000_0100;    // AH
        #400 mdi = 8'b0000_1000;    // PN
        #400 mdi = 8'bzzzz_zzzz;    // DWR
        #400 mdi = 8'b0000_1000;    // DRD
        #400 mdi = 8'b0000_1000;    // T1
        #400 mdi = 8'b0000_1000;    // T2
        #400 mdi = 8'b0000_1000;    // SMF
        #400 mdi = 8'b0000_1000;    // MF
        #200 mdi = 8'b0000_0001;    // AL
        #400 mdi = 8'b0000_0010;    // AM
        #400 mdi = 8'b1000_0100;    // AH
        #400 mdi = 8'b0000_1000;    // PN
    end

    initial begin
        clk = 1'b0;
        forever clk = #33.9 ~clk;
    end

    initial begin
        _reset = 0;
        #20 _reset = 1;
    end


    initial begin
        dbi = 8'bzzzz_zzzz;
        #200 dbi = 8'b0000_0001;    // AL
        #400 dbi = 8'b0000_0010;    // AM
        #400 dbi = 8'b1000_0100;    // AH
        #400 dbi = 8'b0000_1000;    // PN
        #400 dbi = 8'b0000_1000;    // DWR
        #400 dbi = 8'bzzzz_zzzz;    // DRD
        #400 dbi = 8'bzzzz_zzzz;    // T1
        #400 dbi = 8'bzzzz_zzzz;    // T2
        #400 dbi = 8'bzzzz_zzzz;    // SMF
        #400 dbi = 8'bzzzz_zzzz;    // MF
        #200 dbi = 8'b0000_0001;    // AL
        #400 dbi = 8'b0000_0010;    // AM
        #400 dbi = 8'b1000_0100;    // AH
        #400 dbi = 8'b0000_1000;    // PN
    end

    initial begin
        as = 0;
        #200  as = 1;       // AL
        #200  as = 0;
        #200  as = 1;       // AM
        #200  as = 0;
        #200  as = 1;       // AH
        #200  as = 0;
        #200  as = 1;       // PN
        #200  as = 0;
        #200  as = 0;       // DWR
        #200  as = 0;
        #200  as = 0;       // SRD
        #200  as = 0;
        #200  as = 1;       // T1
        #200  as = 0;
        #200  as = 1;       // T2
        #200  as = 0;
        #200  as = 1;       // SMF
        #200  as = 0;
        #200  as = 1;       // MF
        #200  as = 0;
        #200  as = 1;       // AL
        #200  as = 0;
        #200  as = 1;       // AM
        #200  as = 0;
        #200  as = 1;       // AH
        #200  as = 0;
        #200  as = 1;       // PN
        #200  as = 0;
    end

    initial begin
        _wr = 1;
        #200  _wr = 0;      // AL
        #200  _wr = 1;
        #200  _wr = 0;      // AM
        #200  _wr = 1;
        #200  _wr = 0;      // AH
        #200  _wr = 1;
        #200  _wr = 0;      // PN
        #200  _wr = 1;
        #200  _wr = 0;      // DWR
        #200  _wr = 1;
        #200  _wr = 1;      // DRD
        #200  _wr = 1;
        #200  _wr = 1;      // T1
        #200  _wr = 1;
        #200  _wr = 1;      // T2
        #200  _wr = 1;
        #200  _wr = 1;      // SMF
        #200  _wr = 1;
        #200  _wr = 1;      // MF
        #200  _wr = 1;
        #200  _wr = 0;      // AL
        #200  _wr = 1;
        #200  _wr = 0;      // AM
        #200  _wr = 1;
        #200  _wr = 0;      // AH
        #200  _wr = 1;
        #200  _wr = 0;      // PN
        #200  _wr = 1;
    end

    initial begin
        ds = 0;
        #200  ds = 0;       // AL
        #200  ds = 0;
        #200  ds = 0;       // AM
        #200  ds = 0;
        #200  ds = 0;       // AH
        #200  ds = 0;
        #200  ds = 0;       // PN
        #200  ds = 0;
        #200  ds = 1;       // DWR
        #200  ds = 0;
        #200  ds = 1;       // DRD
        #200  ds = 0;
        #200  ds = 0;       // T1
        #200  ds = 0;
        #200  ds = 0;       // T2
        #200  ds = 0;
        #200  ds = 0;       // SMF
        #200  ds = 0;
        #200  ds = 0;       // MF
        #200  ds = 0;
        #200  ds = 0;       // AL
        #200  ds = 0;
        #200  ds = 0;       // AM
        #200  ds = 0;
        #200  ds = 0;       // AH
        #200  ds = 0;
        #200  ds = 0;       // PN
    end

    // QUAD TIMERS TEST

    initial begin
        a = 4'b0000;
        #10000 a = 4'b1111;
        #10000 a = 4'b0000;
        #10000 a = 4'b1111;
        #10000 a = 4'b0000;
        #10000 a = 4'b1111;
        #10000 a = 4'b0000;
        #10000 a = 4'b1111;
        #10000 a = 4'b0000;
    end

    initial begin
        b = 4'b0000;
        #15000 b = 4'b1111;
        #10000 b = 4'b0000;
        #10000 b = 4'b1111;
        #10000 b = 4'b0000;
        #10000 b = 4'b1111;
        #10000 b = 4'b0000;
        #10000 b = 4'b1111;
        #10000 b = 4'b0000;
    end

endmodule




