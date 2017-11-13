library verilog;
use verilog.vl_types.all;
entity crt_pix is
    port(
        pixel_c         : out    vl_logic_vector(3 downto 0);
        md_in           : in     vl_logic_vector(7 downto 0);
        \hcnt_i[0]\     : in     vl_logic;
        \hcnt_i_0[0]\   : in     vl_logic;
        \_reset_c\      : in     vl_logic;
        clk_c           : in     vl_logic;
        pxclk_i         : in     vl_logic;
        bus_mux         : in     vl_logic;
        bus_mux_0       : in     vl_logic;
        href            : in     vl_logic
    );
end crt_pix;
