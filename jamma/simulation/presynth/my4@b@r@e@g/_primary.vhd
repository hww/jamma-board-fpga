library verilog;
use verilog.vl_types.all;
entity my4breg is
    generic(
        width            : integer := 4
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enaa            : in     vl_logic;
        dataa           : in     vl_logic_vector;
        q               : out    vl_logic_vector
    );
end my4breg;
