library verilog;
use verilog.vl_types.all;
entity crt_cookie is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        ena             : in     vl_logic;
        noice           : in     vl_logic;
        test            : out    vl_logic
    );
end crt_cookie;
