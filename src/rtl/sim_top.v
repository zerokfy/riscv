
`timescale	1ns / 1ns
`default_nettype wire


/*Produced by NSL Core(version=20180321), IP ARCH, Inc. Sat Apr  7 18:58:55 2018
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
  wire [7:0] _logic_top_led;
  wire _logic_top_rst_n;
  wire _logic_top_m_clock;
  wire [15:0] _net_0;
  wire _net_1;
riscv_top logic_top (.m_clock(m_clock), .rst_n( rst_n), .led(_logic_top_led));

   assign  _logic_top_rst_n = rst_n;
   assign  _logic_top_m_clock = m_clock;
   assign  _net_0 = 16'b0010011100010000;
   assign  _net_1 = (sim_time==({16'b0000000000000000,_net_0}));
always @(posedge m_clock)
  begin
    if(_net_1)
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

/*Produced by NSL Core(version=20180321), IP ARCH, Inc. Sat Apr  7 18:58:55 2018
 Licensed to :EVALUATION USER*/

/*Produced by NSL Core(version=20180321), IP ARCH, Inc. Sat Apr  7 18:58:55 2018
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
