library verilog;
use verilog.vl_types.all;
entity stimulus is
    generic(
        tb_stop_time     : real    := 25242000.000000
    );
    port(
        amem            : in     vl_logic_vector(15 downto 0);
        dmem            : in     vl_logic_vector(7 downto 0);
        clk             : out    vl_logic;
        hsync           : out    vl_logic;
        vsync           : out    vl_logic;
        ega             : out    vl_logic;
        nreset          : out    vl_logic;
        csync           : in     vl_logic;
        ivideo          : out    vl_logic;
        ovideo          : in     vl_logic;
        relay           : in     vl_logic;
        ncs             : in     vl_logic;
        noe             : in     vl_logic;
        nwe             : in     vl_logic
    );
end stimulus;
