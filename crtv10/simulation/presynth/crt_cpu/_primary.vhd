library verilog;
use verilog.vl_types.all;
entity crt_cpu is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        db              : inout  vl_logic_vector(7 downto 0);
        as              : in     vl_logic;
        ds              : in     vl_logic;
        wr              : in     vl_logic;
        dbi             : in     vl_logic_vector(7 downto 0);
        dbo             : out    vl_logic_vector(7 downto 0);
        da              : out    vl_logic_vector(19 downto 0);
        mem_hold        : out    vl_logic;
        page            : out    vl_logic_vector(6 downto 0);
        onemks          : in     vl_logic;
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        testh           : in     vl_logic;
        testv           : in     vl_logic;
        extnoice        : in     vl_logic
    );
end crt_cpu;
