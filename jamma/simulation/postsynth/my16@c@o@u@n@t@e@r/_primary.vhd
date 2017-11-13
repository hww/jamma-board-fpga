library verilog;
use verilog.vl_types.all;
entity my16counter is
    port(
        count           : out    vl_logic_vector(15 downto 1);
        y_56            : out    vl_logic;
        y_55            : out    vl_logic;
        nreset_c        : in     vl_logic;
        cmd6n           : in     vl_logic;
        cmd6n_0_0       : in     vl_logic;
        nreset_c_5      : in     vl_logic;
        ndiow_c         : in     vl_logic;
        cmd6n_0         : in     vl_logic;
        n_502           : in     vl_logic;
        n_501           : in     vl_logic;
        n_14            : in     vl_logic;
        y_57            : out    vl_logic;
        n_509_n         : in     vl_logic;
        n_510_n         : in     vl_logic;
        n_511_n         : in     vl_logic;
        n_14_0          : in     vl_logic;
        word            : out    vl_logic
    );
end my16counter;
