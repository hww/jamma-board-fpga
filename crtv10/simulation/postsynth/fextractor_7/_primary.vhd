library verilog;
use verilog.vl_types.all;
entity fextractor_7 is
    port(
        \b_c[3]\        : in     vl_logic;
        \_reset_c\      : in     vl_logic;
        clk_c           : in     vl_logic;
        onemks          : in     vl_logic;
        riseb           : out    vl_logic
    );
end fextractor_7;
