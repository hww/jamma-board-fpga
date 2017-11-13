library verilog;
use verilog.vl_types.all;
entity crt_scan is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        pxclk           : in     vl_logic;
        med_res         : in     vl_logic;
        video_data_latch: out    vl_logic;
        hcnt            : out    vl_logic_vector(9 downto 0);
        vcnt            : out    vl_logic_vector(8 downto 0);
        href            : out    vl_logic;
        hsync           : out    vl_logic;
        vsync           : out    vl_logic
    );
end crt_scan;
