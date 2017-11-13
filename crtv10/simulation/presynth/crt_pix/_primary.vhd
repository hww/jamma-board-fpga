library verilog;
use verilog.vl_types.all;
entity crt_pix is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        pxclk           : in     vl_logic;
        video_data_in   : in     vl_logic_vector(7 downto 0);
        video_data_latch: in     vl_logic;
        black           : in     vl_logic;
        pixel_data_out  : out    vl_logic_vector(3 downto 0)
    );
end crt_pix;
