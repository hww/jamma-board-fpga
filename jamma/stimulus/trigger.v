`timescale 1ns / 1ps
module stimulus(nReset,nCS0,nCS1,da,nDiow,nDior,dd,iordy,CoinCounter,CoinLockout,P,clk);

output  nReset;
reg  nReset;
output  nCS0;
reg  nCS0;
output  nCS1;
reg  nCS1;
output [2:0] da;
reg [2:0] da;
output  nDiow;
reg  nDiow;
output  nDior;
reg  nDior;
inout [7:0] dd;
reg [7:0] dd_driver;
assign dd = dd_driver;
input  iordy;
input [2:1] CoinCounter;
input [2:1] CoinLockout;
output [28:0] P;
reg [28:0] P;
output  clk;
reg  clk;


wire [1:0] tb_status;
reg [1:0] tb_status_driver;
assign tb_status = tb_status_driver;

parameter tb_stop_time = 7450;



task AssignExpressions;
  begin
  end
endtask  // AssignExpressions

initial
  begin
  AssignExpressions;
  tb_status_driver <= 1'b1;
  #(tb_stop_time)
  tb_status_driver <= 1'b0;
  end

initial
  begin                  //SIGNAL nReset
        nReset = 1'b0;
      #20
        nReset = 1'b1;
      #7416.718
        ;
  end

initial
  begin                  //SIGNAL nCS0
        nCS0 = 1'b1;
      #45
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #60
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #45
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #45
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #45
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #45
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #45
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #45
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #45
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #45
        nCS0 = 1'b0;
      #105
        nCS0 = 1'b1;
      #143.864
        ;
  end

initial
  begin                  //SIGNAL nCS1
        nCS1 = 1'b1;
      #7440
        ;
  end

initial
  begin                  //SIGNAL da
        da = 3'bxxx;
      #45
        da = 3'b110;
      #105
        da = 3'bxxx;
      #60
        da = 3'b111;
      #105
        da = 3'bxxx;
      #60
        da = 3'b111;
      #105
        da = 3'bxxx;
      #60
        da = 3'b111;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b111;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #60
        da = 3'b000;
      #105
        da = 3'bxxx;
      #45
        da = 3'b111;
      #105
        da = 3'bxxx;
      #45
        da = 3'b110;
      #105
        da = 3'bxxx;
      #45
        da = 3'b011;
      #105
        da = 3'bxxx;
      #45
        da = 3'b100;
      #105
        da = 3'bxxx;
      #45
        da = 3'b101;
      #105
        da = 3'bxxx;
      #45
        da = 3'b110;
      #105
        da = 3'bxxx;
      #45
        da = 3'b111;
      #105
        da = 3'bxxx;
      #45
        da = 3'b000;
      #105
        da = 3'bxxx;
      #146.718
        ;
  end

initial
  begin                  //SIGNAL nDiow
        nDiow = 1'b1;
      #70
        nDiow = 1'b0;
      #70
        nDiow = 1'b1;
      #95
        nDiow = 1'b0;
      #70
        nDiow = 1'b1;
      #95
        nDiow = 1'b0;
      #70
        nDiow = 1'b1;
      #95
        nDiow = 1'b0;
      #70
        nDiow = 1'b1;
      #2735
        nDiow = 1'b0;
      #70
        nDiow = 1'b1;
      #2720
        nDiow = 1'b0;
      #70
        nDiow = 1'b1;
      #80
        nDiow = 1'b0;
      #70
        nDiow = 1'b1;
      #80
        nDiow = 1'b0;
      #70
        nDiow = 1'b1;
      #80
        nDiow = 1'b0;
      #70
        nDiow = 1'b1;
      #80
        nDiow = 1'b0;
      #70
        nDiow = 1'b1;
      #80
        nDiow = 1'b0;
      #70
        nDiow = 1'b1;
      #80
        nDiow = 1'b0;
      #70
        nDiow = 1'b1;
      #80
        nDiow = 1'b0;
      #70
        nDiow = 1'b1;
      #160
        ;
  end

initial
  begin                  //SIGNAL nDior
        nDior = 1'b1;
      #730
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #260
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #95
        nDior = 1'b0;
      #70
        nDior = 1'b1;
      #1360
        ;
  end

initial
  begin                  //SIGNAL dd
        dd_driver = 8'bzzzzzzzz;
      #120
        dd_driver = 8'h10;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'h60;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'h60;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'h60;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'h60;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #135
        dd_driver = 8'hzz;
      #30
        dd_driver = 8'bzzzzzzzz;
      #120
        dd_driver = 8'h60;
      #30
        dd_driver = 8'bzzzzzzzz;
      #120
        dd_driver = 8'h00;
      #30
        dd_driver = 8'bzzzzzzzz;
      #120
        dd_driver = 8'h73;
      #30
        dd_driver = 8'bzzzzzzzz;
      #120
        dd_driver = 8'h25;
      #30
        dd_driver = 8'bzzzzzzzz;
      #120
        dd_driver = 8'h19;
      #30
        dd_driver = 8'bzzzzzzzz;
      #120
        dd_driver = 8'h10;
      #30
        dd_driver = 8'bzzzzzzzz;
      #120
        dd_driver = 8'h60;
      #30
        dd_driver = 8'bzzzzzzzz;
      #120
        dd_driver = 8'h10;
      #30
        dd_driver = 8'bzzzzzzzz;
      #146.718
        ;
  end

initial
  begin                  //SIGNAL P
        P = 29'b00000000000000000000000000000;
      #345.362
        P = 29'b00000000000000000000000000010;
      #336.801
        P = 29'b00000000000000000000000000110;
      #351.07
        P = 29'b00000000000000000000000000100;
      #373.907
        P = 29'b00000000000000000000000000000;
      #368.195
        P = 29'b00000000000000000000000000010;
      #362.49
        P = 29'b00000000000000000000000000110;
      #368.195
        P = 29'b00000000000000000000000000100;
      #448.117
        P = 29'b00000000000000000000000000000;
      #422.426
        P = 29'b00000000000000000000000000100;
      #430.991
        P = 29'b00000000000000000000000000110;
      #430.989
        P = 29'b00000000000000000000000000010;
      #413.866
        P = 29'b00000000000000000000000000000;
      #442.405
        P = 29'b00000000000000000000000000100;
      #468.097
        P = 29'b00000000000000000000000000110;
      #445.26
        P = 29'b00000000000000000000000000010;
      #473.805
        P = 29'b00000000000000000000000000000;
      #964.732
        ;
  end

initial
  begin                  //SIGNAL clk
        clk = 1'b0;
      #0
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        clk = 1'b0;
      #50
        clk = 1'b1;
      #50
        ;
  end

  initial
    #7450000 $finish;

endmodule



//Test bench module
module testbench;

wire  nReset;
wire  nCS0;
wire  nCS1;
wire [2:0] da;
wire  nDiow;
wire  nDior;
wire [7:0] dd;
wire  iordy;
wire [2:1] CoinCounter;
wire [2:1] CoinLockout;
wire [28:0] P;
wire  clk;

//Instantiation of the stimulus module.
stimulus stimulus_0(nReset,nCS0,nCS1,da,nDiow,nDior,dd,iordy,CoinCounter,CoinLockout,P,clk);

//Instantiation of the product module.
jamma jamma_0(
	.da(da),
	.dd(dd),
	.CoinCounter(CoinCounter),
	.CoinLockout(CoinLockout),
	.P(P),
	.clk(clk),
	.nReset(nReset),
	.nDiow(nDiow),
	.nDior(nDior),
	.nCS0(nCS0),
	.nCS1(nCS1),
	.iordy(iordy)
	);

endmodule