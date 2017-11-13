library verilog;
use verilog.vl_types.all;
entity stimulus is
    generic(
        tb_stop_time     : integer := 7450
    );
    port(
        nreset          : out    vl_logic;
        ncs0            : out    vl_logic;
        ncs1            : out    vl_logic;
        da              : out    vl_logic_vector(2 downto 0);
        ndiow           : out    vl_logic;
        ndior           : out    vl_logic;
        dd              : inout  vl_logic_vector(7 downto 0);
        iordy           : in     vl_logic;
        coincounter     : in     vl_logic_vector(2 downto 1);
        coinlockout     : in     vl_logic_vector(2 downto 1);
        p               : out    vl_logic_vector(28 downto 0);
        clk             : out    vl_logic
    );
end stimulus;
