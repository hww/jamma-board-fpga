library verilog;
use verilog.vl_types.all;
entity crt_measure is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        start           : in     vl_logic;
        mode            : in     vl_logic;
        hsync           : in     vl_logic;
        vsync           : in     vl_logic;
        measure         : out    vl_logic;
        q               : out    vl_logic_vector(9 downto 0)
    );
end crt_measure;
