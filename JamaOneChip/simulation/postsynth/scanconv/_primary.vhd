library verilog;
use verilog.vl_types.all;
entity scanconv is
    port(
        dmem_c          : out    vl_logic_vector(7 downto 0);
        amem_c          : out    vl_logic_vector(7 downto 0);
        nreset_c        : in     vl_logic;
        ncs_c           : out    vl_logic;
        noe_c           : out    vl_logic;
        nwe_c           : out    vl_logic;
        clk_c           : in     vl_logic;
        hsync_c         : in     vl_logic;
        vsync_c         : in     vl_logic;
        ivideo_c        : in     vl_logic
    );
end scanconv;
