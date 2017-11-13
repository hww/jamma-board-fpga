library verilog;
use verilog.vl_types.all;
entity onefextractor_1 is
    port(
        b               : out    vl_logic;
        a               : out    vl_logic;
        \_reset_c\      : in     vl_logic;
        clk_c           : in     vl_logic;
        vsync_in_c      : in     vl_logic
    );
end onefextractor_1;
