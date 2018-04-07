library verilog;
use verilog.vl_types.all;
entity rom_wrap is
    port(
        rst_n           : in     vl_logic;
        m_clock         : in     vl_logic;
        addr            : in     vl_logic_vector(31 downto 0);
        rdata           : out    vl_logic_vector(31 downto 0)
    );
end rom_wrap;
