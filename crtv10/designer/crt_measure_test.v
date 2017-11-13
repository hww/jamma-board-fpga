`timescale 1 ns/100 ps


module crt_measure_test();

    wire GNDZ0, VCCZ0;
    
    VCC VCC (.Y(VCCZ0));
    GND GND (.Y(GNDZ0));
    
endmodule
