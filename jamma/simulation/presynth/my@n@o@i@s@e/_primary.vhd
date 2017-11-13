library verilog;
use verilog.vl_types.all;
entity mynoise is
    generic(
        width            : integer := 16
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enaa            : in     vl_logic;
        q               : out    vl_logic_vector
    );
end mynoise;
