library verilog;
use verilog.vl_types.all;
entity scanconv is
    port(
        clk             : in     vl_logic;
        nreset          : in     vl_logic;
        nhsync          : in     vl_logic;
        nvsync          : in     vl_logic;
        ega             : in     vl_logic;
        ivideo          : in     vl_logic;
        ovideo          : out    vl_logic;
        csync           : out    vl_logic;
        relay           : out    vl_logic;
        amem            : out    vl_logic_vector(15 downto 0);
        dmem            : inout  vl_logic_vector(7 downto 0);
        ncs             : out    vl_logic;
        noe             : out    vl_logic;
        nwe             : out    vl_logic
    );
end scanconv;
