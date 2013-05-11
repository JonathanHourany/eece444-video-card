library verilog;
use verilog.vl_types.all;
entity Top is
    port(
        CLOCK_50        : in     vl_logic;
        RESET           : in     vl_logic;
        H_SYNC          : out    vl_logic;
        V_SYNC          : out    vl_logic;
        RED             : out    vl_logic;
        BLUE            : out    vl_logic;
        GREEN           : out    vl_logic
    );
end Top;
