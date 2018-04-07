declare riscv_top {
    output        led[8]
                ;
}

declare rv32i_core interface {
    input         clk_20M
                , rst_n
                , idata[32]
                , rdata[32]
                ;
    output        iaddr[32]
                , daddr[32]
                , wdata[32]
                , ecall_led
                , ebreak_led
                ;
    func_out      dmem_r()
                , dmem_w()
                ;
}

declare code_rom interface {
    input         clock
                , address[10]
                ;
    output        q[32]
                ;
}

declare ram_cascade interface {
    input         clk_20M
                , addr[32]
                , wdata[32]
                , wren[4]
                ;
    output        rdata[32]
                ;
}

declare data_ram interface {
    input         clock
                , address[12]
                , data[8]
                , wren
                ;
    output        q[8]
                ;
}

declare gen_gr {
    input         rs1_n[5]
                , rs2_n[5]
                , rd_n[5]
                , wd[32]
                ;
    output        s1_rd[32]
                , s2_rd[32]
                ;
    func_in     rs1(rs1_n):s1_rd;
    func_in     rs2(rs2_n):s2_rd;
    func_in     rd(rd_n, wd);
}

declare PLL interface {
    input       areset
              , inclk0
              ;
    output      c0
              , locked
              ;
}

