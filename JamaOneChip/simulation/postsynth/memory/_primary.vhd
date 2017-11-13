library verilog;
use verilog.vl_types.all;
entity memory is
    port(
        dmem_c          : out    vl_logic_vector(7 downto 0);
        dvga            : in     vl_logic_vector(7 downto 0);
        \state_1[1]\    : in     vl_logic;
        \state[1]\      : out    vl_logic;
        \aMem_c[7]\     : out    vl_logic;
        \aVga[7]\       : in     vl_logic;
        y_10            : in     vl_logic;
        nwe_c           : out    vl_logic;
        noe_c           : out    vl_logic;
        ncs_c           : out    vl_logic;
        y_4             : in     vl_logic;
        n_180_i         : in     vl_logic;
        nreset_c        : in     vl_logic;
        clk_c           : in     vl_logic;
        y_12            : in     vl_logic;
        halfclk         : out    vl_logic;
        wrvgareq        : out    vl_logic;
        wrcycle         : out    vl_logic
    );
end memory;
