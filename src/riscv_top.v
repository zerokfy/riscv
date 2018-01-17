module riscv_top (
      input   wire        m_clock
    , input   wire        p_reset
) {

    reg     dummy_d;

    always @(posedge m_clock or posedge p_reset)
    begin
        if(p_reset)     dummy_d <= 1'b0;
        else            dummy_d <= 1'b1;
    end

}

