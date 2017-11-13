library verilog;
use verilog.vl_types.all;
entity jamma is
    port(
        da              : in     vl_logic_vector(2 downto 0);
        dd              : inout  vl_logic_vector(7 downto 0);
        coincounter     : out    vl_logic_vector(2 downto 1);
        coinlockout     : out    vl_logic_vector(2 downto 1);
        p               : in     vl_logic_vector(28 downto 0);
        clk             : in     vl_logic;
        nreset          : in     vl_logic;
        ndiow           : in     vl_logic;
        ndior           : in     vl_logic;
        ncs0            : in     vl_logic;
        ncs1            : in     vl_logic;
        iordy           : out    vl_logic
    );
end jamma;
