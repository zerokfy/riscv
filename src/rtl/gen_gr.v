
/*Produced by NSL Core(version=20180321), IP ARCH, Inc. Sat Apr  7 18:58:55 2018
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module gen_gr ( rst_n , clk_20M , rs1_n , rs2_n , rd_n , wd , s1_rd , s2_rd , rs1 , rs2 , rd );
  input rst_n, clk_20M;
  wire rst_n, clk_20M;
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

   assign  _net_0 = ((rs1)?(|rs1_n):1'b0);
   assign  _net_1 = ((rs2)?(|rs2_n):1'b0);
   assign  s1_rd = (((rs1&(~_net_0)))?32'b00000000000000000000000000000000:32'b0)|
    (((rs1&_net_0))?(gr[rs1_n]):32'b0);
   assign  s2_rd = (((rs2&(~_net_1)))?32'b00000000000000000000000000000000:32'b0)|
    (((rs2&_net_1))?(gr[rs2_n]):32'b0);
initial begin
    gr[0] = 32'b00000000000000000000000000000000;
    gr[1] = 0;
    gr[2] = 0;
    gr[3] = 0;
    gr[4] = 0;
    gr[5] = 0;
    gr[6] = 0;
    gr[7] = 0;
    gr[8] = 0;
    gr[9] = 0;
    gr[10] = 0;
    gr[11] = 0;
    gr[12] = 0;
    gr[13] = 0;
    gr[14] = 0;
    gr[15] = 0;
    gr[16] = 0;
    gr[17] = 0;
    gr[18] = 0;
    gr[19] = 0;
    gr[20] = 0;
    gr[21] = 0;
    gr[22] = 0;
    gr[23] = 0;
    gr[24] = 0;
    gr[25] = 0;
    gr[26] = 0;
    gr[27] = 0;
    gr[28] = 0;
    gr[29] = 0;
    gr[30] = 0;
    gr[31] = 0;
end
always @(posedge clk_20M)
  begin
   if (rd )
     gr[rd_n] <= wd;
end
endmodule

/*Produced by NSL Core(version=20180321), IP ARCH, Inc. Sat Apr  7 18:58:55 2018
 Licensed to :EVALUATION USER*/
