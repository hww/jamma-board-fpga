library verilog;
use verilog.vl_types.all;
entity onefextractor is
    port(
        \_reset_c\      : in     vl_logic;
        clk_c           : in     vl_logic;
        hris_n          : out    vl_logic;
        b               : out    vl_logic;
        a               : in     vl_logic
    );
end onefextractor;
