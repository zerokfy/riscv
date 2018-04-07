library verilog;
use verilog.vl_types.all;
entity rv32i_core is
    port(
        rst_n           : in     vl_logic;
        m_clock         : in     vl_logic;
        idata           : in     vl_logic_vector(31 downto 0);
        rdata           : in     vl_logic_vector(31 downto 0);
        iaddr           : out    vl_logic_vector(31 downto 0);
        daddr           : out    vl_logic_vector(31 downto 0);
        wdata           : out    vl_logic_vector(31 downto 0);
        ecall_led       : out    vl_logic;
        ebreak_led      : out    vl_logic;
        dmem_w          : out    vl_logic;
        dmem_r          : out    vl_logic
    );
end rv32i_core;
