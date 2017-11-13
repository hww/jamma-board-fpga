library verilog;
use verilog.vl_types.all;
entity my16counter is
    generic(
        width            : integer := 16
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        ena             : in     vl_logic;
        set             : in     vl_logic;
        data            : in     vl_logic_vector;
        q               : out    vl_logic_vector
    );
end my16counter;
