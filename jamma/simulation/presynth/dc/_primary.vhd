library verilog;
use verilog.vl_types.all;
entity dc is
    port(
        ncs0            : in     vl_logic;
        ncs1            : in     vl_logic;
        da              : in     vl_logic_vector(2 downto 0);
        device          : in     vl_logic;
        cs              : out    vl_logic;
        csdevreg        : out    vl_logic;
        csdatareg       : out    vl_logic;
        cscmdreg        : out    vl_logic;
        cssectaddr      : out    vl_logic;
        cscyllo         : out    vl_logic;
        cscylhi         : out    vl_logic
    );
end dc;
