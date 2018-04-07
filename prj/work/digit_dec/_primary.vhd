library verilog;
use verilog.vl_types.all;
entity digit_dec is
    port(
        rst_n           : in     vl_logic;
        m_clock         : in     vl_logic;
        data            : in     vl_logic_vector(3 downto 0);
        seg             : out    vl_logic_vector(7 downto 0)
    );
end digit_dec;
