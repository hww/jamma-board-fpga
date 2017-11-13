library verilog;
use verilog.vl_types.all;
entity cgaega is
    port(
        ha              : out    vl_logic_vector(8 downto 0);
        va              : out    vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        egamode         : in     vl_logic;
        csync           : out    vl_logic;
        reset           : in     vl_logic
    );
end cgaega;
