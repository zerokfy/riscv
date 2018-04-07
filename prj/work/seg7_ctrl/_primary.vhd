library verilog;
use verilog.vl_types.all;
entity seg7_ctrl is
    port(
        rst_n           : in     vl_logic;
        m_clock         : in     vl_logic;
        data            : in     vl_logic_vector(31 downto 0);
        digit_0         : out    vl_logic_vector(7 downto 0);
        digit_1         : out    vl_logic_vector(7 downto 0);
        digit_2         : out    vl_logic_vector(7 downto 0);
        digit_3         : out    vl_logic_vector(7 downto 0);
        digit_4         : out    vl_logic_vector(7 downto 0);
        digit_5         : out    vl_logic_vector(7 downto 0)
    );
end seg7_ctrl;
