library verilog;
use verilog.vl_types.all;
entity jamma is
    generic(
        sector_cookie    : integer := 115;
        cylinder_lo_cookie : integer := 37;
        cylinder_hi_cookie : integer := 25;
        cookie_mask      : integer := 1;
        after_cookie_mask : integer := 3;
        cookie_lo        : integer := 12816;
        cookie_hi        : integer := 30292
    );
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
        p               : in     vl_logic_vector(28 downto 0)
    );
end jamma;
