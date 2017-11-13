library verilog;
use verilog.vl_types.all;
entity crt_clock is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        pxclk           : out    vl_logic;
        med_res         : in     vl_logic;
        onemks          : out    vl_logic
    );
end crt_clock;
