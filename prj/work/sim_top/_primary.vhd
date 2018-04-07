library verilog;
use verilog.vl_types.all;
entity sim_top is
    port(
        rst_n           : in     vl_logic;
        m_clock         : in     vl_logic
    );
end sim_top;
