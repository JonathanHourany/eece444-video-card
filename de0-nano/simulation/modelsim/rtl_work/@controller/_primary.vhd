library verilog;
use verilog.vl_types.all;
entity Controller is
    port(
        CLK             : in     vl_logic;
        NRST            : in     vl_logic;
        H_SYNC          : out    vl_logic;
        V_SYNC          : out    vl_logic;
        H_STATUS        : out    vl_logic_vector(2 downto 0);
        V_STATUS        : out    vl_logic_vector(2 downto 0);
        PIXEL_CNTR      : out    vl_logic_vector(9 downto 0);
        ROW_NUM         : out    vl_logic_vector(9 downto 0)
    );
end Controller;
