
`timescale	1ns / 1ns
`default_nettype wire


/*Produced by NSL Core(version=20180302), IP ARCH, Inc. Thu Mar 22 19:59:21 2018
 Licensed to :EVALUATION USER*/

// synthesis translate_off
// synopsys translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module sim_top ( rst_n , m_clock );
  input rst_n, m_clock;
  wire rst_n, m_clock;
  reg [31:0] sim_time;
  wire _logic_top_MODE;
  wire [7:0] _logic_top_seg_7_0;
  wire [7:0] _logic_top_seg_7_1;
  wire [7:0] _logic_top_seg_7_2;
  wire [7:0] _logic_top_seg_7_3;
  wire [7:0] _logic_top_seg_7_4;
  wire [7:0] _logic_top_seg_7_5;
  wire _logic_top_ecall;
  wire _logic_top_ebreak;
  wire _logic_top_rst_n;
  wire _logic_top_m_clock;
riscv_top logic_top (.m_clock(m_clock), .rst_n(rst_n), .seg_7_0(_logic_top_seg_7_0), .seg_7_1(_logic_top_seg_7_1), .seg_7_2(_logic_top_seg_7_2), .seg_7_3(_logic_top_seg_7_3), .seg_7_4(_logic_top_seg_7_4), .seg_7_5(_logic_top_seg_7_5), .ecall(_logic_top_ecall), .ebreak(_logic_top_ebreak), .MODE(_logic_top_MODE));

   assign  _logic_top_MODE = 1'b0;
   assign  _logic_top_rst_n = rst_n;
   assign  _logic_top_m_clock = m_clock;
always @(posedge m_clock)
  begin
    if((_logic_top_ecall != 1'b0))
    begin
    $stop;
    end
  end
always @(posedge m_clock or negedge rst_n)
  begin
if (~rst_n)
     sim_time <= 32'b00000000000000000000000000000000;
else   sim_time <= (sim_time+32'b00000000000000000000000000000001);
end
endmodule

// synthesis translate_on
// synopsys translate_on

/*Produced by NSL Core(version=20180302), IP ARCH, Inc. Thu Mar 22 19:59:21 2018
 Licensed to :EVALUATION USER*/

/*Produced by NSL Core(version=20180302), IP ARCH, Inc. Thu Mar 22 19:59:21 2018
 Licensed to :EVALUATION USER*/

//synthesis translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/
module tb;
	parameter tCYC=2;
	parameter tPD=(tCYC/10);

	reg rst_n;
	reg m_clock;

	sim_top sim_top_instance(
		.rst_n(rst_n),
		.m_clock(m_clock)
	);

	initial forever #(tCYC/2) m_clock = ~m_clock;

	initial begin
		$dumpfile("sim_top.vcd");
		$dumpvars(0,sim_top_instance);
	end

	initial begin
		#(tPD)
			rst_n = 0;
			m_clock = 0;
		#(tCYC)
			rst_n = 1;
	end

endmodule

//synthesis translate_on
