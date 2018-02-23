
`timescale	1ns / 1ns
`default_nettype wire

/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Thu Feb 22 15:20:55 2018
 Licensed to :EVALUATION USER
*/

// synthesis translate_off
// synopsys translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module sim_top ( p_reset , m_clock );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  reg [31:0] sim_time;
  wire _logic_top_MODE;
  wire [7:0] _logic_top_seg_7_0;
  wire [7:0] _logic_top_seg_7_1;
  wire [7:0] _logic_top_seg_7_2;
  wire [7:0] _logic_top_seg_7_3;
  wire [7:0] _logic_top_seg_7_4;
  wire [7:0] _logic_top_seg_7_5;
  wire _logic_top_p_reset;
  wire _logic_top_m_clock;
  wire _net_0;
riscv_top logic_top (.m_clock(m_clock), .p_reset(p_reset), .seg_7_0(_logic_top_seg_7_0), .seg_7_1(_logic_top_seg_7_1), .seg_7_2(_logic_top_seg_7_2), .seg_7_3(_logic_top_seg_7_3), .seg_7_4(_logic_top_seg_7_4), .seg_7_5(_logic_top_seg_7_5), .MODE(_logic_top_MODE));

   assign  _logic_top_MODE = 1'b0;
   assign  _logic_top_p_reset = p_reset;
   assign  _logic_top_m_clock = m_clock;
   assign  _net_0 = (sim_time==32'b00000000000000000000001111101000);
always @(posedge m_clock)
  begin
    if(_net_0)
    begin
    $stop;
    end
  end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     sim_time <= 32'b00000000000000000000000000000000;
else   sim_time <= (sim_time+32'b00000000000000000000000000000001);
end
endmodule

// synthesis translate_on
// synopsys translate_on
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Thu Feb 22 15:20:55 2018
 Licensed to :EVALUATION USER
*/
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Thu Feb 22 15:20:55 2018
 Licensed to :EVALUATION USER:
*/

//synthesis translate_off
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/
module tb;
	parameter tCYC=2;
	parameter tPD=(tCYC/10);

	reg p_reset;
	reg m_clock;

	sim_top sim_top_instance(
		.p_reset(p_reset),
		.m_clock(m_clock)
	);

	initial forever #(tCYC/2) m_clock = ~m_clock;

	initial begin
		$dumpfile("sim_top.vcd");
		$dumpvars(0,sim_top_instance);
	end

	initial begin
		#(tPD)
			p_reset = 1;
			m_clock = 0;
		#(tCYC)
			p_reset = 0;
	end

endmodule

//synthesis translate_on
