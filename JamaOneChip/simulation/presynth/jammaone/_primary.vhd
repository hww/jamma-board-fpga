library verilog;
use verilog.vl_types.all;
entity jammaone is
    port(
        clk             : in     vl_logic;
        nreset          : in     vl_logic;
        da              : in     vl_logic_vector(2 downto 0);
        ndiow           : in     vl_logic;
        ndior           : in     vl_logic;
        ncs0            : in     vl_logic;
        ncs1            : in     vl_logic;
        iordy           : inout  vl_logic;
        dd              : inout  vl_logic_vector(7 downto 0);
        coincounter     : out    vl_logic_vector(2 downto 1);
        coinlockout     : out    vl_logic_vector(2 downto 1);
        p               : in     vl_logic_vector(28 downto 0);
        hsync           : in     vl_logic;
        vsync           : in     vl_logic;
        csync           : out    vl_logic;
        ega             : in     vl_logic;
        ivideo          : in     vl_logic;
        ovideo          : out    vl_logic;
        relay           : out    vl_logic;
        amem            : out    vl_logic_vector(15 downto 0);
        dmem            : inout  vl_logic_vector(7 downto 0);
        ncs             : out    vl_logic;
        noe             : out    vl_logic;
        nwe             : out    vl_logic
    );
end jammaone;
