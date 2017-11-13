library verilog;
use verilog.vl_types.all;
entity crt_measure is
    port(
        test_freq       : out    vl_logic_vector(9 downto 0);
        \addr_reg[20]\  : in     vl_logic;
        vsync_in_c      : in     vl_logic;
        \_reset_c\      : in     vl_logic;
        clk_c           : in     vl_logic;
        start_measure   : in     vl_logic;
        a               : in     vl_logic;
        hris_n          : out    vl_logic;
        measure         : out    vl_logic
    );
end crt_measure;
