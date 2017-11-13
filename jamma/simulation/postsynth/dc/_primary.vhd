library verilog;
use verilog.vl_types.all;
entity dc is
    port(
        da_c            : in     vl_logic_vector(2 downto 0);
        csdevreg        : out    vl_logic;
        y_11            : out    vl_logic;
        y_10            : out    vl_logic;
        ncs1_c          : in     vl_logic;
        ncs0_c          : in     vl_logic;
        csdatareg       : out    vl_logic;
        acces           : in     vl_logic;
        y_1             : out    vl_logic;
        bdevice         : in     vl_logic
    );
end dc;
