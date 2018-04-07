library verilog;
use verilog.vl_types.all;
entity ram_wrap is
    port(
        rst_n           : in     vl_logic;
        m_clock         : in     vl_logic;
        addr            : in     vl_logic_vector(31 downto 0);
        wdata           : in     vl_logic_vector(31 downto 0);
        wren            : in     vl_logic_vector(3 downto 0);
        rdata           : out    vl_logic_vector(31 downto 0)
    );
end ram_wrap;
