library verilog;
use verilog.vl_types.all;
entity crt_mem is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        video_data_latch: in     vl_logic;
        href            : in     vl_logic;
        video_address   : in     vl_logic_vector(19 downto 0);
        video_data      : out    vl_logic_vector(7 downto 0);
        da              : in     vl_logic_vector(19 downto 0);
        dbi             : in     vl_logic_vector(7 downto 0);
        dbo             : out    vl_logic_vector(7 downto 0);
        mem_hold        : in     vl_logic;
        wr              : in     vl_logic;
        ds              : in     vl_logic;
        md              : inout  vl_logic_vector(7 downto 0);
        ma              : out    vl_logic_vector(19 downto 0);
        \_mcs\          : out    vl_logic;
        \_mwr\          : out    vl_logic;
        \_mrd\          : out    vl_logic
    );
end crt_mem;
