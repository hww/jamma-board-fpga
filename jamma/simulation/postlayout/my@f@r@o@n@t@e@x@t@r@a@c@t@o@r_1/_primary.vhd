library verilog;
use verilog.vl_types.all;
entity myfrontextractor_1 is
    port(
        rise            : out    vl_logic_vector(1 downto 0);
        \P_c[2]\        : in     vl_logic;
        nreset_c_0      : in     vl_logic;
        clk_c           : in     vl_logic;
        ndior_c_i_0     : in     vl_logic
    );
end myfrontextractor_1;
