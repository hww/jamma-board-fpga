library verilog;
use verilog.vl_types.all;
entity revcounter is
    generic(
        width            : integer := 7
    );
    port(
        clk             : in     vl_logic;
        clrn            : in     vl_logic;
        ena             : in     vl_logic;
        plus            : in     vl_logic;
        q               : out    vl_logic_vector
    );
end revcounter;
