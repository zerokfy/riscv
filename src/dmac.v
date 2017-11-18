/*
 Produced by NSL Core(version=20120915), IP ARCH, Inc. Wed Nov 15 22:27:42 2017
 Licensed to :500 line EVALUATION USER
*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module dmac ( p_reset , m_clock , HRDATA , HADDR , HWDATA , HBURST , HSIZE , HTRANS , HWRITE , rxd , txd , write_req , read_req , read_ack , bus_req , bus_grant , bus_open );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input [31:0] HRDATA;
  wire [31:0] HRDATA;
  output [31:0] HADDR;
  wire [31:0] HADDR;
  output [31:0] HWDATA;
  wire [31:0] HWDATA;
  output [2:0] HBURST;
  wire [2:0] HBURST;
  output [1:0] HSIZE;
  wire [1:0] HSIZE;
  output [1:0] HTRANS;
  wire [1:0] HTRANS;
  output HWRITE;
  wire HWRITE;
  input [7:0] rxd;
  wire [7:0] rxd;
  output [7:0] txd;
  wire [7:0] txd;
  input write_req;
  wire write_req;
  input read_req;
  wire read_req;
  output read_ack;
  wire read_ack;
  output bus_req;
  wire bus_req;
  input bus_grant;
  wire bus_grant;
  output bus_open;
  wire bus_open;
  reg [7:0] txd_buf;
  reg [7:0] rxd_buf;
  reg write;
  wire exec_write;
  wire exec_read;
  reg _reg_0;
  reg _reg_1;
  reg _reg_2;
  reg _reg_3;
  reg _reg_4;


// synthesis translate_off
// synopsys translate_off
always @(posedge exec_write)
  begin
#1 if (exec_write===1'bx)
 begin
$display("Warning: control hazard(dmac:exec_write) at %d",$time);
 end
#1 if ((((bus_grant&write))===1'bx) || (1'b1)===1'bx) $display("hazard ((bus_grant&write) || 1'b1) line 39 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  exec_write = (bus_grant&write);

// synthesis translate_off
// synopsys translate_off
always @(posedge exec_read)
  begin
#1 if (exec_read===1'bx)
 begin
$display("Warning: control hazard(dmac:exec_read) at %d",$time);
 end
#1 if ((((bus_grant&(~write)))===1'bx) || (1'b1)===1'bx) $display("hazard ((bus_grant&(~write)) || 1'b1) line 40 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  exec_read = (bus_grant&(~write));

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((exec_read|_reg_4)&(exec_write|_reg_1)))
 begin $display("Warning: assign collision(dmac:HADDR) at %d",$time);
if ((exec_read|_reg_4)) $display("assert ((exec_read|_reg_4)) line 62 at %d\n",$time);
if ((exec_write|_reg_1)) $display("assert ((exec_write|_reg_1)) line 46 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  HADDR = 
// synthesis translate_off
// synopsys translate_off
(((exec_read|_reg_4)&(exec_write|_reg_1)))? 32'bx :(((exec_read|_reg_4)|(exec_write|_reg_1)))? 
// synthesis translate_on
// synopsys translate_on
(((exec_read|_reg_4))?32'b00000000000000000001000000000000:32'b0)|
    (((exec_write|_reg_1))?32'b00000000000000000001000000000000:32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  HWDATA = 
// synthesis translate_off
// synopsys translate_off
(_reg_0)? 
// synthesis translate_on
// synopsys translate_on
((_reg_0)?({24'b000000000000000000000000,rxd_buf}):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((exec_read|_reg_4)&(exec_write|_reg_1)))
 begin $display("Warning: assign collision(dmac:HBURST) at %d",$time);
if ((exec_read|_reg_4)) $display("assert ((exec_read|_reg_4)) line 63 at %d\n",$time);
if ((exec_write|_reg_1)) $display("assert ((exec_write|_reg_1)) line 47 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  HBURST = 
// synthesis translate_off
// synopsys translate_off
(((exec_read|_reg_4)&(exec_write|_reg_1)))? 3'bx :(((exec_read|_reg_4)|(exec_write|_reg_1)))? 
// synthesis translate_on
// synopsys translate_on
(((exec_read|_reg_4))?3'b000:3'b0)|
    (((exec_write|_reg_1))?3'b000:3'b0)
// synthesis translate_off
// synopsys translate_off
:3'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((exec_read|_reg_4)&(exec_write|_reg_1)))
 begin $display("Warning: assign collision(dmac:HSIZE) at %d",$time);
if ((exec_read|_reg_4)) $display("assert ((exec_read|_reg_4)) line 64 at %d\n",$time);
if ((exec_write|_reg_1)) $display("assert ((exec_write|_reg_1)) line 48 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  HSIZE = 
// synthesis translate_off
// synopsys translate_off
(((exec_read|_reg_4)&(exec_write|_reg_1)))? 2'bx :(((exec_read|_reg_4)|(exec_write|_reg_1)))? 
// synthesis translate_on
// synopsys translate_on
(((exec_read|_reg_4))?2'b00:2'b0)|
    (((exec_write|_reg_1))?2'b00:2'b0)
// synthesis translate_off
// synopsys translate_off
:2'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((exec_read|_reg_4)&(exec_write|_reg_1)))
 begin $display("Warning: assign collision(dmac:HTRANS) at %d",$time);
if ((exec_read|_reg_4)) $display("assert ((exec_read|_reg_4)) line 65 at %d\n",$time);
if ((exec_write|_reg_1)) $display("assert ((exec_write|_reg_1)) line 49 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  HTRANS = 
// synthesis translate_off
// synopsys translate_off
(((exec_read|_reg_4)&(exec_write|_reg_1)))? 2'bx :(((exec_read|_reg_4)|(exec_write|_reg_1)))? 
// synthesis translate_on
// synopsys translate_on
(((exec_read|_reg_4))?2'b01:2'b0)|
    (((exec_write|_reg_1))?2'b01:2'b0)
// synthesis translate_off
// synopsys translate_off
:2'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((exec_read|_reg_4)&(exec_write|_reg_1)))
 begin $display("Warning: assign collision(dmac:HWRITE) at %d",$time);
if ((exec_read|_reg_4)) $display("assert ((exec_read|_reg_4)) line 66 at %d\n",$time);
if ((exec_write|_reg_1)) $display("assert ((exec_write|_reg_1)) line 50 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  HWRITE = 
// synthesis translate_off
// synopsys translate_off
(((exec_read|_reg_4)&(exec_write|_reg_1)))? 1'bx :(((exec_read|_reg_4)|(exec_write|_reg_1)))? 
// synthesis translate_on
// synopsys translate_on
(((exec_read|_reg_4))?write:1'b0)|
    (((exec_write|_reg_1))?write:1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  txd = 
// synthesis translate_off
// synopsys translate_off
(_reg_2)? 
// synthesis translate_on
// synopsys translate_on
((_reg_2)?txd_buf:8'b0)
// synthesis translate_off
// synopsys translate_off
:8'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge read_ack)
  begin
#1 if (read_ack===1'bx)
 begin
$display("Warning: control hazard(dmac:read_ack) at %d",$time);
 end
#1 if (((_reg_2)===1'bx) || (1'b1)===1'bx) $display("hazard (_reg_2 || 1'b1) line 71 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  read_ack = _reg_2;

// synthesis translate_off
// synopsys translate_off
always @(posedge bus_req)
  begin
#1 if (bus_req===1'bx)
 begin
$display("Warning: control hazard(dmac:bus_req) at %d",$time);
 end
#1 if (((read_req)===1'bx) || (1'b1)===1'bx) $display("hazard (read_req || 1'b1) line 35 at %d\n",$time);
#1 if (((write_req)===1'bx) || (1'b1)===1'bx) $display("hazard (write_req || 1'b1) line 30 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  bus_req = read_req|
    write_req;

// synthesis translate_off
// synopsys translate_off
always @(posedge bus_open)
  begin
#1 if (bus_open===1'bx)
 begin
$display("Warning: control hazard(dmac:bus_open) at %d",$time);
 end
#1 if (((_reg_2)===1'bx) || (1'b1)===1'bx) $display("hazard (_reg_2 || 1'b1) line 72 at %d\n",$time);
#1 if (((_reg_0)===1'bx) || (1'b1)===1'bx) $display("hazard (_reg_0 || 1'b1) line 54 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  bus_open = _reg_2|
    _reg_0;
always @(posedge m_clock)
  begin

// synthesis translate_off
// synopsys translate_off
if ((_reg_3&_reg_2))   txd_buf <= 8'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (_reg_3)
      txd_buf <= (HRDATA[7:0]);
else if (_reg_2)
      txd_buf <= (HRDATA[7:0]);
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((_reg_3|_reg_2)=='b1) ||
 ((_reg_3|_reg_2)=='b0) ) begin
 if ((_reg_3&_reg_2))
 begin $display("Warning: assign collision(dmac:txd_buf) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(dmac:txd_buf) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock)
  begin
if (write_req)
      rxd_buf <= rxd;
end
always @(posedge m_clock)
  begin

// synthesis translate_off
// synopsys translate_off
if ((read_req&write_req))   write <= 1'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (read_req)
      write <= 1'b0;
else if (write_req)
      write <= 1'b1;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((read_req|write_req)=='b1) ||
 ((read_req|write_req)=='b0) ) begin
 if ((read_req&write_req))
 begin $display("Warning: assign collision(dmac:write) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(dmac:write) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_0 <= 1'b0;
else if ((exec_write|(_reg_0|_reg_1)))
      _reg_0 <= (_reg_1|exec_write);
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_1 <= 1'b0;
else if (_reg_1)
      _reg_1 <= 1'b0;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_2 <= 1'b0;
else if ((_reg_2|_reg_3))
      _reg_2 <= _reg_3;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_3 <= 1'b0;
else if ((exec_read|(_reg_3|_reg_4)))
      _reg_3 <= (_reg_4|exec_read);
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_4 <= 1'b0;
else if (_reg_4)
      _reg_4 <= 1'b0;
end
endmodule
/*
 Produced by NSL Core(version=20120915), IP ARCH, Inc. Wed Nov 15 22:27:42 2017
 Licensed to :500 line EVALUATION USER
*/
