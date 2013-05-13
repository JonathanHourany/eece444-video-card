library verilog;
use verilog.vl_types.all;
entity LineBuffer is
    port(
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        CHAR_NUM        : in     vl_logic;
        DATA_IN         : in     vl_logic_vector(9 downto 0);
        DATA_OUT        : out    vl_logic_vector(0 to 639)
    );
end LineBuffer;
