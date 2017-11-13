library verilog;
use verilog.vl_types.all;
entity mynoise is
    port(
        noice_15        : out    vl_logic;
        noice_1         : out    vl_logic;
        noice_0         : out    vl_logic;
        nreset_c_5      : in     vl_logic;
        nreset_c_4      : in     vl_logic;
        ndior_c         : in     vl_logic;
        y_9             : in     vl_logic
    );
end mynoise;
