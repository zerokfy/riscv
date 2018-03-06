
/*Produced by NSL Core(version=20171221), IP ARCH, Inc. Tue Mar  6 13:30:22 2018
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module gen_gr ( p_reset , m_clock , rs1_n , rs2_n , rd_n , wd , s1_rd , s2_rd , rs1 , rs2 , rd );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input [4:0] rs1_n;
  wire [4:0] rs1_n;
  input [4:0] rs2_n;
  wire [4:0] rs2_n;
  input [4:0] rd_n;
  wire [4:0] rd_n;
  input [31:0] wd;
  wire [31:0] wd;
  output [31:0] s1_rd;
  wire [31:0] s1_rd;
  output [31:0] s2_rd;
  wire [31:0] s2_rd;
  input rs1;
  wire rs1;
  input rs2;
  wire rs2;
  input rd;
  wire rd;
  reg [31:0] gr [0:31];
  wire _net_0;
  wire _net_1;

   assign  _net_0 = ((rs1)?(rs1_n==5'b00000):1'b0);
   assign  _net_1 = ((rs2)?(rs2_n==5'b00000):1'b0);
   assign  s1_rd = (((rs1&(~_net_0)))?(gr[rs1_n]):32'b0)|
    (((rs1&_net_0))?32'b00000000000000000000000000000000:32'b0);
   assign  s2_rd = (((rs2&(~_net_1)))?(gr[rs2_n]):32'b0)|
    (((rs2&_net_1))?32'b00000000000000000000000000000000:32'b0);
always @(posedge m_clock)
  begin
   if (rd )
     gr[rd_n] <= wd;
end
endmodule

/*Produced by NSL Core(version=20171221), IP ARCH, Inc. Tue Mar  6 13:30:22 2018
 Licensed to :EVALUATION USER*/
