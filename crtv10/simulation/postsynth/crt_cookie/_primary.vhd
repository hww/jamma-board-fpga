library verilog;
use verilog.vl_types.all;
entity crt_cookie is
    port(
        test            : out    vl_logic;
        \_reset_c\      : in     vl_logic;
        clk_c           : in     vl_logic;
        next_cookie     : in     vl_logic;
        extnoice        : in     vl_logic
    );
end crt_cookie;
