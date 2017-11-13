library verilog;
use verilog.vl_types.all;
entity syncinv is
    port(
        clk             : in     vl_logic;
        ena             : in     vl_logic;
        reset           : in     vl_logic;
        ih              : in     vl_logic;
        iv              : in     vl_logic;
        oh              : out    vl_logic;
        ov              : out    vl_logic;
        htick           : out    vl_logic
    );
end syncinv;
