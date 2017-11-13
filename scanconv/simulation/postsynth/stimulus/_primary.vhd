library verilog;
use verilog.vl_types.all;
entity stimulus is
    generic(
        tb_stop_time     : real    := 30243100.000000
    );
    port(
        ha              : in     vl_logic_vector(8 downto 0);
        va              : in     vl_logic_vector(7 downto 0);
        clk             : out    vl_logic;
        egamode         : out    vl_logic;
        csync           : in     vl_logic;
        reset           : out    vl_logic
    );
end stimulus;
