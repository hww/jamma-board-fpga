library verilog;
use verilog.vl_types.all;
entity memory is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        wrvga           : in     vl_logic;
        dvga            : in     vl_logic_vector(7 downto 0);
        avga            : in     vl_logic_vector(15 downto 0);
        dcga            : out    vl_logic_vector(7 downto 0);
        acga            : in     vl_logic_vector(15 downto 0);
        dmemin          : in     vl_logic_vector(7 downto 0);
        dmemout         : out    vl_logic_vector(7 downto 0);
        amem            : out    vl_logic_vector(15 downto 0);
        dirout          : out    vl_logic;
        ncsmem          : out    vl_logic;
        noemem          : out    vl_logic;
        nwemem          : out    vl_logic;
        t3              : out    vl_logic;
        halfclk         : out    vl_logic;
        wrvgareq        : out    vl_logic
    );
end memory;
