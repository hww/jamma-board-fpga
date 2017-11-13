library verilog;
use verilog.vl_types.all;
entity my4counter is
    port(
        bcounter        : out    vl_logic_vector(3 downto 0);
        bcounter_0      : out    vl_logic_vector(3 downto 1);
        \bCounter_i[0]\ : out    vl_logic;
        y_62            : in     vl_logic;
        ndior_c         : in     vl_logic;
        csdatareg       : in     vl_logic;
        y_28            : in     vl_logic
    );
end my4counter;
