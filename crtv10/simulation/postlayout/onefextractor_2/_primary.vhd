library verilog;
use verilog.vl_types.all;
entity onefextractor_2 is
    port(
        a               : out    vl_logic;
        \_reset_c\      : in     vl_logic;
        clk_c           : in     vl_logic;
        hsync_in_c      : in     vl_logic
    );
end onefextractor_2;
