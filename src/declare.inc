declare riscv_top {
    input         MODE
                ;
    output        seg_7_0[8]
                , seg_7_1[8]
                , seg_7_2[8]
                , seg_7_3[8]
                , seg_7_4[8]
                , seg_7_5[8]
                ;
}

declare rv32i_core {
    input         idata[32]
                , rdata[32]
                ;
    output        iaddr[32]
                , daddr[32]
                , wdata[32]
                ;
    func_out      dmem_read()
                , dmem_write()
                ;
}

declare rom_wrap {
    input       addr[32];
    output      rdata[32];
}

declare CodeROM interface {
    input         clock
                , address[10]
                ;
    output        q[32]
                ;
}

declare ram_wrap {
    input         addr[32]
                , wdata[32]
                , rden
                , wren
                ;
    output        rdata[32]
                ;
}

declare OnChipRAM interface {
    input         clock
                , address[9]
                , data[32]
                , rden
                , wren
                ;
    output        q[32]
                ;
}

declare seg7_ctrl {
    input         data[32]
                ;
    output        digit_0[8]
                , digit_1[8]
                , digit_2[8]
                , digit_3[8]
                , digit_4[8]
                , digit_5[8]
                ;
}

declare digit_dec {
    input       data[4];
    output      seg[8];
}

declare gen_gr {
    input         rs1_n[5]
                , rs2_n[5]
//                , rs3_n[5]
                , rd_n[5]
                , wd[32]
                ;
    output        s1_rd[32]
                , s2_rd[32]
                , s3_rd[32]
                ;
    func_in     rs1(rs1_n):s1_rd;
    func_in     rs2(rs2_n):s2_rd;
//    func_in     rs3(rs3_n):s3_rd;
    func_in     rd(rd_n, wd);
}

