/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Thu Jan 25 12:01:44 2018
 Licensed to :EVALUATION USER
*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module riscv_core ( p_reset , m_clock , idata , rdata , iaddr , daddr , wdata , dmem_write , dmem_read );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input [31:0] idata;
  wire [31:0] idata;
  input [31:0] rdata;
  wire [31:0] rdata;
  output [31:0] iaddr;
  wire [31:0] iaddr;
  output [31:0] daddr;
  wire [31:0] daddr;
  output [31:0] wdata;
  wire [31:0] wdata;
  output dmem_write;
  wire dmem_write;
  output dmem_read;
  wire dmem_read;
  reg [31:0] gr [0:31];
  wire [31:0] rd_wire;
  reg [31:0] pc;
  reg rst_d;
  reg [31:0] inst;
  reg [4:0] rs1;
  reg [4:0] rs2;
  reg [4:0] rd;
  reg [11:0] imm12;
  reg [19:0] imm;
  reg [7:0] order;
  reg ift;
  reg dec;
  reg exer;
  reg exei_1;
  reg exei_2;
  reg exes;
  reg exeb;
  reg exeu;
  reg exej;
  wire _proc_exej_set;
  wire _proc_exej_reset;
  wire _proc_exeu_set;
  wire _proc_exeu_reset;
  wire _proc_exeb_set;
  wire _proc_exeb_reset;
  wire _proc_exes_set;
  wire _proc_exes_reset;
  wire _proc_exei_2_set;
  wire _proc_exei_2_reset;
  wire _proc_exei_1_set;
  wire _proc_exei_1_reset;
  wire _proc_exer_set;
  wire _proc_exer_reset;
  wire _proc_dec_set;
  wire _proc_dec_reset;
  wire _proc_ift_set;
  wire _proc_ift_reset;
  wire _net_0;
  reg _reg_1;
  reg _reg_2;
  wire _net_3;
  wire _net_4;
  wire _net_5;
  wire _net_6;
  wire _net_7;
  wire _net_8;
  wire _net_9;
  wire _net_10;
  wire _net_11;
  wire _net_12;
  wire _net_13;
  wire _net_14;
  wire _net_15;
  wire _net_16;
  wire _net_17;
  wire _net_18;
  wire _net_19;
  wire _net_20;
  wire _net_21;
  wire _net_22;
  wire _net_23;
  wire _net_24;
  wire _net_25;
  wire _net_26;
  wire _net_27;
  wire _net_28;
  wire _net_29;
  wire _net_30;
  wire _net_31;
  wire _net_32;
  wire _net_33;
  wire _net_34;
  wire _net_35;
  wire _net_36;
  wire _net_37;
  wire _net_38;
  wire _net_39;
  wire _net_40;
  wire _net_41;
  wire _net_42;
  wire _net_43;
  wire _net_44;
  wire _net_45;
  wire [31:0] _net_46;
  wire _net_47;
  wire [31:0] _net_48;
  wire [31:0] _net_49;
  wire [30:0] _net_50;
  wire [31:0] _net_51;
  wire _net_52;
  wire [31:0] _net_53;
  wire [31:0] _net_54;
  wire _net_55;
  wire [31:0] _net_56;
  wire [31:0] _net_57;
  wire _net_58;
  wire [31:0] _net_59;
  wire [31:0] _net_60;
  wire _net_61;
  wire _net_62;
  wire [31:0] _net_63;
  wire [31:0] _net_64;
  wire _net_65;
  wire [31:0] _net_66;
  wire [31:0] _net_67;
  wire _net_68;
  wire [31:0] _net_69;
  wire [31:0] _net_70;
  wire _net_71;
  wire [31:0] _net_72;
  wire [31:0] _net_73;
  wire _net_74;
  wire _net_75;
  wire [31:0] _net_76;
  wire [31:0] _net_77;
  wire _net_78;
  wire [31:0] _net_79;
  wire [31:0] _net_80;
  wire _net_81;
  wire [31:0] _net_82;
  wire [31:0] _net_83;
  wire _net_84;
  wire [31:0] _net_85;
  wire [31:0] _net_86;
  wire _net_87;
  wire [31:0] _net_88;
  wire [31:0] _net_89;
  wire _net_90;
  wire [31:0] _net_91;
  wire [31:0] _net_92;
  reg _reg_93;
  reg _reg_94;
  wire _net_95;
  wire [31:0] _net_96;
  wire [31:0] _net_97;
  wire _net_98;
  wire [31:0] _net_99;
  wire _net_100;
  wire [31:0] _net_101;
  wire _net_102;
  wire [31:0] _net_103;
  wire _net_104;
  wire [31:0] _net_105;
  wire [11:0] _net_106;
  wire _net_107;
  wire _net_108;
  wire [31:0] _net_109;
  wire _net_110;
  wire _net_111;
  wire [31:0] _net_112;
  wire [31:0] _net_113;
  reg _reg_114;
  reg _reg_115;
  wire _net_116;
  wire [31:0] _net_117;
  wire [11:0] _net_118;
  wire _net_119;
  wire [31:0] _net_120;
  wire [11:0] _net_121;
  wire _net_122;
  wire [31:0] _net_123;
  wire _net_124;
  wire [31:0] _net_125;
  wire _net_126;
  wire [31:0] _net_127;
  reg _reg_128;
  reg _reg_129;
  wire _net_130;
  wire [31:0] _net_131;
  wire [31:0] _net_132;
  wire _net_133;
  wire [31:0] _net_134;
  wire [31:0] _net_135;
  wire _net_136;
  wire [31:0] _net_137;
  wire [31:0] _net_138;
  wire _net_139;
  wire [31:0] _net_140;
  wire [31:0] _net_141;
  wire _net_142;
  wire [31:0] _net_143;
  wire [31:0] _net_144;
  wire _net_145;
  wire [12:0] _net_146;
  wire [31:0] _net_147;
  wire [31:0] _net_148;
  wire _net_149;
  wire [31:0] _net_150;
  wire [31:0] _net_151;
  wire _net_152;
  wire [31:0] _net_153;
  wire [31:0] _net_154;
  wire _net_155;
  wire [12:0] _net_156;
  wire _net_157;
  wire [31:0] _net_158;
  wire [31:0] _net_159;
  wire _net_160;
  wire [12:0] _net_161;
  wire [31:0] _net_162;
  wire [31:0] _net_163;
  wire _net_164;
  wire [31:0] _net_165;
  wire [31:0] _net_166;
  wire _net_167;
  wire [31:0] _net_168;
  wire [31:0] _net_169;
  wire _net_170;
  wire [31:0] _net_171;
  wire [31:0] _net_172;
  wire _net_173;
  wire [12:0] _net_174;
  wire _net_175;
  wire [31:0] _net_176;
  wire [31:0] _net_177;
  wire _net_178;
  wire [31:0] _net_179;
  wire [31:0] _net_180;
  wire _net_181;
  wire [12:0] _net_182;
  wire _net_183;
  wire [31:0] _net_184;
  wire [31:0] _net_185;
  wire _net_186;
  wire [31:0] _net_187;
  wire [31:0] _net_188;
  wire _net_189;
  wire [12:0] _net_190;
  wire _net_191;
  wire [31:0] _net_192;
  wire [31:0] _net_193;
  wire _net_194;
  wire [31:0] _net_195;
  wire [31:0] _net_196;
  wire _net_197;
  wire [12:0] _net_198;
  wire _net_199;
  wire [31:0] _net_200;
  wire [31:0] _net_201;
  wire _net_202;
  wire [31:0] _net_203;
  wire [31:0] _net_204;
  wire _net_205;
  wire [12:0] _net_206;
  wire _net_207;
  wire _net_208;
  wire _net_209;
  wire [20:0] _net_210;


// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or posedge p_reset)
  begin
if (((((((exei_2&_reg_115)&_net_126)&((exei_2&_reg_115)&_net_124))|((((exei_2&_reg_115)&_net_126)|((exei_2&_reg_115)&_net_124))&((exei_2&_reg_115)&_net_122)))|(((((exei_2&_reg_115)&_net_126)|((exei_2&_reg_115)&_net_124))|((exei_2&_reg_115)&_net_122))&((exei_2&_reg_115)&_net_119)))|((((((exei_2&_reg_115)&_net_126)|((exei_2&_reg_115)&_net_124))|((exei_2&_reg_115)&_net_122))|((exei_2&_reg_115)&_net_119))&((exei_2&_reg_115)&_net_116))))
 begin $display("Warning: assign collision(riscv_core:rd_wire) at %d",$time);
if (((exei_2&_reg_115)&_net_126)) $display("assert (((exei_2&_reg_115)&_net_126)) line 167 at %d\n",$time);
if (((exei_2&_reg_115)&_net_124)) $display("assert (((exei_2&_reg_115)&_net_124)) line 172 at %d\n",$time);
if (((exei_2&_reg_115)&_net_122)) $display("assert (((exei_2&_reg_115)&_net_122)) line 177 at %d\n",$time);
if (((exei_2&_reg_115)&_net_119)) $display("assert (((exei_2&_reg_115)&_net_119)) line 182 at %d\n",$time);
if (((exei_2&_reg_115)&_net_116)) $display("assert (((exei_2&_reg_115)&_net_116)) line 187 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  rd_wire = 
// synthesis translate_off
// synopsys translate_off
(((((((exei_2&_reg_115)&_net_126)&((exei_2&_reg_115)&_net_124))|((((exei_2&_reg_115)&_net_126)|((exei_2&_reg_115)&_net_124))&((exei_2&_reg_115)&_net_122)))|(((((exei_2&_reg_115)&_net_126)|((exei_2&_reg_115)&_net_124))|((exei_2&_reg_115)&_net_122))&((exei_2&_reg_115)&_net_119)))|((((((exei_2&_reg_115)&_net_126)|((exei_2&_reg_115)&_net_124))|((exei_2&_reg_115)&_net_122))|((exei_2&_reg_115)&_net_119))&((exei_2&_reg_115)&_net_116))))? 32'bx :(((((((exei_2&_reg_115)&_net_126)|((exei_2&_reg_115)&_net_124))|((exei_2&_reg_115)&_net_122))|((exei_2&_reg_115)&_net_119))|((exei_2&_reg_115)&_net_116)))? 
// synthesis translate_on
// synopsys translate_on
((((exei_2&_reg_115)&_net_126))?({24'b000000000000000000000000,(rdata[7:0])}):32'b0)|
    ((((exei_2&_reg_115)&_net_124))?({16'b0000000000000000,(rdata[15:0])}):32'b0)|
    ((((exei_2&_reg_115)&_net_122))?rdata:32'b0)|
    ((((exei_2&_reg_115)&_net_119))?rdata:32'b0)|
    ((((exei_2&_reg_115)&_net_116))?({16'b0000000000000000,(rdata[15:0])}):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_exej_set)
  begin
#1 if (_proc_exej_set===1'bx)
 begin
$display("Warning: control hazard(riscv_core:_proc_exej_set) at %d",$time);
 end
#1 if ((((dec&_net_3))===1'bx) || (1'b1)===1'bx) $display("hazard ((dec&_net_3) || 1'b1) line 108 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_exej_set = (dec&_net_3);

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_exej_reset)
  begin
#1 if (_proc_exej_reset===1'bx)
 begin
$display("Warning: control hazard(riscv_core:_proc_exej_reset) at %d",$time);
 end
#1 if ((((exej&_net_209))===1'bx) || (1'b1)===1'bx) $display("hazard ((exej&_net_209) || 1'b1) line 264 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_exej_reset = (exej&_net_209);

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_exeu_set)
  begin
#1 if (_proc_exeu_set===1'bx)
 begin
$display("Warning: control hazard(riscv_core:_proc_exeu_set) at %d",$time);
 end
#1 if ((((dec&_net_31))===1'bx) || (1'b1)===1'bx) $display("hazard ((dec&_net_31) || 1'b1) line 74 at %d\n",$time);
#1 if ((((dec&_net_12))===1'bx) || (1'b1)===1'bx) $display("hazard ((dec&_net_12) || 1'b1) line 98 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_exeu_set = (dec&_net_31)|
    (dec&_net_12);

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_exeu_reset)
  begin
#1 if (_proc_exeu_reset===1'bx)
 begin
$display("Warning: control hazard(riscv_core:_proc_exeu_reset) at %d",$time);
 end
#1 if (((exeu)===1'bx) || (1'b1)===1'bx) $display("hazard (exeu || 1'b1) line 257 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_exeu_reset = exeu;

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_exeb_set)
  begin
#1 if (_proc_exeb_set===1'bx)
 begin
$display("Warning: control hazard(riscv_core:_proc_exeb_set) at %d",$time);
 end
#1 if (((((dec&_net_5)&_net_11))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_5)&_net_11) || 1'b1) line 100 at %d\n",$time);
#1 if (((((dec&_net_5)&_net_10))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_5)&_net_10) || 1'b1) line 101 at %d\n",$time);
#1 if (((((dec&_net_5)&_net_9))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_5)&_net_9) || 1'b1) line 102 at %d\n",$time);
#1 if (((((dec&_net_5)&_net_8))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_5)&_net_8) || 1'b1) line 103 at %d\n",$time);
#1 if (((((dec&_net_5)&_net_7))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_5)&_net_7) || 1'b1) line 104 at %d\n",$time);
#1 if (((((dec&_net_5)&_net_6))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_5)&_net_6) || 1'b1) line 105 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_exeb_set = ((dec&_net_5)&_net_11)|
    ((dec&_net_5)&_net_10)|
    ((dec&_net_5)&_net_9)|
    ((dec&_net_5)&_net_8)|
    ((dec&_net_5)&_net_7)|
    ((dec&_net_5)&_net_6);

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_exeb_reset)
  begin
#1 if (_proc_exeb_reset===1'bx)
 begin
$display("Warning: control hazard(riscv_core:_proc_exeb_reset) at %d",$time);
 end
#1 if (((((exeb&_net_199)&_net_205))===1'bx) || (1'b1)===1'bx) $display("hazard (((exeb&_net_199)&_net_205) || 1'b1) line 219 at %d\n",$time);
#1 if (((((exeb&_net_199)&_net_202))===1'bx) || (1'b1)===1'bx) $display("hazard (((exeb&_net_199)&_net_202) || 1'b1) line 220 at %d\n",$time);
#1 if (((((exeb&_net_191)&_net_197))===1'bx) || (1'b1)===1'bx) $display("hazard (((exeb&_net_191)&_net_197) || 1'b1) line 223 at %d\n",$time);
#1 if (((((exeb&_net_191)&_net_194))===1'bx) || (1'b1)===1'bx) $display("hazard (((exeb&_net_191)&_net_194) || 1'b1) line 224 at %d\n",$time);
#1 if (((((exeb&_net_183)&_net_189))===1'bx) || (1'b1)===1'bx) $display("hazard (((exeb&_net_183)&_net_189) || 1'b1) line 227 at %d\n",$time);
#1 if (((((exeb&_net_183)&_net_186))===1'bx) || (1'b1)===1'bx) $display("hazard (((exeb&_net_183)&_net_186) || 1'b1) line 228 at %d\n",$time);
#1 if (((((exeb&_net_175)&_net_181))===1'bx) || (1'b1)===1'bx) $display("hazard (((exeb&_net_175)&_net_181) || 1'b1) line 231 at %d\n",$time);
#1 if (((((exeb&_net_175)&_net_178))===1'bx) || (1'b1)===1'bx) $display("hazard (((exeb&_net_175)&_net_178) || 1'b1) line 232 at %d\n",$time);
#1 if ((((((exeb&_net_157)&_net_167)&_net_173))===1'bx) || (1'b1)===1'bx) $display("hazard ((((exeb&_net_157)&_net_167)&_net_173) || 1'b1) line 236 at %d\n",$time);
#1 if ((((((exeb&_net_157)&_net_167)&_net_170))===1'bx) || (1'b1)===1'bx) $display("hazard ((((exeb&_net_157)&_net_167)&_net_170) || 1'b1) line 237 at %d\n",$time);
#1 if (((((exeb&_net_157)&_net_164))===1'bx) || (1'b1)===1'bx) $display("hazard (((exeb&_net_157)&_net_164) || 1'b1) line 239 at %d\n",$time);
#1 if (((((exeb&_net_157)&_net_160))===1'bx) || (1'b1)===1'bx) $display("hazard (((exeb&_net_157)&_net_160) || 1'b1) line 240 at %d\n",$time);
#1 if ((((((exeb&_net_139)&_net_149)&_net_152))===1'bx) || (1'b1)===1'bx) $display("hazard ((((exeb&_net_139)&_net_149)&_net_152) || 1'b1) line 245 at %d\n",$time);
#1 if (((((exeb&_net_139)&_net_142))===1'bx) || (1'b1)===1'bx) $display("hazard (((exeb&_net_139)&_net_142) || 1'b1) line 248 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_exeb_reset = ((exeb&_net_199)&_net_205)|
    ((exeb&_net_199)&_net_202)|
    ((exeb&_net_191)&_net_197)|
    ((exeb&_net_191)&_net_194)|
    ((exeb&_net_183)&_net_189)|
    ((exeb&_net_183)&_net_186)|
    ((exeb&_net_175)&_net_181)|
    ((exeb&_net_175)&_net_178)|
    (((exeb&_net_157)&_net_167)&_net_173)|
    (((exeb&_net_157)&_net_167)&_net_170)|
    ((exeb&_net_157)&_net_164)|
    ((exeb&_net_157)&_net_160)|
    (((exeb&_net_139)&_net_149)&_net_152)|
    ((exeb&_net_139)&_net_142);

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_exes_set)
  begin
#1 if (_proc_exes_set===1'bx)
 begin
$display("Warning: control hazard(riscv_core:_proc_exes_set) at %d",$time);
 end
#1 if (((((dec&_net_27)&_net_30))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_27)&_net_30) || 1'b1) line 76 at %d\n",$time);
#1 if (((((dec&_net_27)&_net_29))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_27)&_net_29) || 1'b1) line 77 at %d\n",$time);
#1 if (((((dec&_net_27)&_net_28))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_27)&_net_28) || 1'b1) line 78 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_exes_set = ((dec&_net_27)&_net_30)|
    ((dec&_net_27)&_net_29)|
    ((dec&_net_27)&_net_28);
   assign  _proc_exes_reset = 1'b0;

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_exei_2_set)
  begin
#1 if (_proc_exei_2_set===1'bx)
 begin
$display("Warning: control hazard(riscv_core:_proc_exei_2_set) at %d",$time);
 end
#1 if (((((dec&_net_39)&_net_44))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_39)&_net_44) || 1'b1) line 60 at %d\n",$time);
#1 if (((((dec&_net_39)&_net_43))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_39)&_net_43) || 1'b1) line 61 at %d\n",$time);
#1 if (((((dec&_net_39)&_net_42))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_39)&_net_42) || 1'b1) line 62 at %d\n",$time);
#1 if (((((dec&_net_39)&_net_41))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_39)&_net_41) || 1'b1) line 63 at %d\n",$time);
#1 if (((((dec&_net_39)&_net_40))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_39)&_net_40) || 1'b1) line 64 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_exei_2_set = ((dec&_net_39)&_net_44)|
    ((dec&_net_39)&_net_43)|
    ((dec&_net_39)&_net_42)|
    ((dec&_net_39)&_net_41)|
    ((dec&_net_39)&_net_40);
   assign  _proc_exei_2_reset = 1'b0;

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_exei_1_set)
  begin
#1 if (_proc_exei_1_set===1'bx)
 begin
$display("Warning: control hazard(riscv_core:_proc_exei_1_set) at %d",$time);
 end
#1 if (((((dec&_net_32)&_net_38))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_32)&_net_38) || 1'b1) line 67 at %d\n",$time);
#1 if (((((dec&_net_32)&_net_37))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_32)&_net_37) || 1'b1) line 68 at %d\n",$time);
#1 if (((((dec&_net_32)&_net_36))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_32)&_net_36) || 1'b1) line 69 at %d\n",$time);
#1 if (((((dec&_net_32)&_net_35))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_32)&_net_35) || 1'b1) line 70 at %d\n",$time);
#1 if (((((dec&_net_32)&_net_34))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_32)&_net_34) || 1'b1) line 71 at %d\n",$time);
#1 if (((((dec&_net_32)&_net_33))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_32)&_net_33) || 1'b1) line 72 at %d\n",$time);
#1 if ((((dec&_net_4))===1'bx) || (1'b1)===1'bx) $display("hazard ((dec&_net_4) || 1'b1) line 107 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_exei_1_set = ((dec&_net_32)&_net_38)|
    ((dec&_net_32)&_net_37)|
    ((dec&_net_32)&_net_36)|
    ((dec&_net_32)&_net_35)|
    ((dec&_net_32)&_net_34)|
    ((dec&_net_32)&_net_33)|
    (dec&_net_4);
   assign  _proc_exei_1_reset = 1'b0;

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_exer_set)
  begin
#1 if (_proc_exer_set===1'bx)
 begin
$display("Warning: control hazard(riscv_core:_proc_exer_set) at %d",$time);
 end
#1 if (((((((dec&_net_13)&_net_14)&_net_24)&_net_26))===1'bx) || (1'b1)===1'bx) $display("hazard (((((dec&_net_13)&_net_14)&_net_24)&_net_26) || 1'b1) line 83 at %d\n",$time);
#1 if (((((((dec&_net_13)&_net_14)&_net_24)&_net_25))===1'bx) || (1'b1)===1'bx) $display("hazard (((((dec&_net_13)&_net_14)&_net_24)&_net_25) || 1'b1) line 84 at %d\n",$time);
#1 if ((((((dec&_net_13)&_net_14)&_net_23))===1'bx) || (1'b1)===1'bx) $display("hazard ((((dec&_net_13)&_net_14)&_net_23) || 1'b1) line 86 at %d\n",$time);
#1 if ((((((dec&_net_13)&_net_14)&_net_22))===1'bx) || (1'b1)===1'bx) $display("hazard ((((dec&_net_13)&_net_14)&_net_22) || 1'b1) line 87 at %d\n",$time);
#1 if ((((((dec&_net_13)&_net_14)&_net_21))===1'bx) || (1'b1)===1'bx) $display("hazard ((((dec&_net_13)&_net_14)&_net_21) || 1'b1) line 88 at %d\n",$time);
#1 if ((((((dec&_net_13)&_net_14)&_net_20))===1'bx) || (1'b1)===1'bx) $display("hazard ((((dec&_net_13)&_net_14)&_net_20) || 1'b1) line 89 at %d\n",$time);
#1 if (((((((dec&_net_13)&_net_14)&_net_17)&_net_19))===1'bx) || (1'b1)===1'bx) $display("hazard (((((dec&_net_13)&_net_14)&_net_17)&_net_19) || 1'b1) line 91 at %d\n",$time);
#1 if (((((((dec&_net_13)&_net_14)&_net_17)&_net_18))===1'bx) || (1'b1)===1'bx) $display("hazard (((((dec&_net_13)&_net_14)&_net_17)&_net_18) || 1'b1) line 92 at %d\n",$time);
#1 if ((((((dec&_net_13)&_net_14)&_net_16))===1'bx) || (1'b1)===1'bx) $display("hazard ((((dec&_net_13)&_net_14)&_net_16) || 1'b1) line 94 at %d\n",$time);
#1 if ((((((dec&_net_13)&_net_14)&_net_15))===1'bx) || (1'b1)===1'bx) $display("hazard ((((dec&_net_13)&_net_14)&_net_15) || 1'b1) line 95 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_exer_set = ((((dec&_net_13)&_net_14)&_net_24)&_net_26)|
    ((((dec&_net_13)&_net_14)&_net_24)&_net_25)|
    (((dec&_net_13)&_net_14)&_net_23)|
    (((dec&_net_13)&_net_14)&_net_22)|
    (((dec&_net_13)&_net_14)&_net_21)|
    (((dec&_net_13)&_net_14)&_net_20)|
    ((((dec&_net_13)&_net_14)&_net_17)&_net_19)|
    ((((dec&_net_13)&_net_14)&_net_17)&_net_18)|
    (((dec&_net_13)&_net_14)&_net_16)|
    (((dec&_net_13)&_net_14)&_net_15);

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_exer_reset)
  begin
#1 if (_proc_exer_reset===1'bx)
 begin
$display("Warning: control hazard(riscv_core:_proc_exer_reset) at %d",$time);
 end
#1 if (((exer)===1'bx) || (1'b1)===1'bx) $display("hazard (exer || 1'b1) line 143 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_exer_reset = exer;

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_dec_set)
  begin
#1 if (_proc_dec_set===1'bx)
 begin
$display("Warning: control hazard(riscv_core:_proc_dec_set) at %d",$time);
 end
#1 if ((((_reg_1&ift))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_1&ift) || 1'b1) line 55 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_dec_set = (_reg_1&ift);

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_dec_reset)
  begin
#1 if (_proc_dec_reset===1'bx)
 begin
$display("Warning: control hazard(riscv_core:_proc_dec_reset) at %d",$time);
 end
#1 if (((((dec&_net_39)&_net_44))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_39)&_net_44) || 1'b1) line 60 at %d\n",$time);
#1 if (((((dec&_net_39)&_net_43))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_39)&_net_43) || 1'b1) line 61 at %d\n",$time);
#1 if (((((dec&_net_39)&_net_42))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_39)&_net_42) || 1'b1) line 62 at %d\n",$time);
#1 if (((((dec&_net_39)&_net_41))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_39)&_net_41) || 1'b1) line 63 at %d\n",$time);
#1 if (((((dec&_net_39)&_net_40))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_39)&_net_40) || 1'b1) line 64 at %d\n",$time);
#1 if (((((dec&_net_32)&_net_38))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_32)&_net_38) || 1'b1) line 67 at %d\n",$time);
#1 if (((((dec&_net_32)&_net_37))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_32)&_net_37) || 1'b1) line 68 at %d\n",$time);
#1 if (((((dec&_net_32)&_net_36))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_32)&_net_36) || 1'b1) line 69 at %d\n",$time);
#1 if (((((dec&_net_32)&_net_35))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_32)&_net_35) || 1'b1) line 70 at %d\n",$time);
#1 if (((((dec&_net_32)&_net_34))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_32)&_net_34) || 1'b1) line 71 at %d\n",$time);
#1 if (((((dec&_net_32)&_net_33))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_32)&_net_33) || 1'b1) line 72 at %d\n",$time);
#1 if ((((dec&_net_31))===1'bx) || (1'b1)===1'bx) $display("hazard ((dec&_net_31) || 1'b1) line 74 at %d\n",$time);
#1 if (((((dec&_net_27)&_net_30))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_27)&_net_30) || 1'b1) line 76 at %d\n",$time);
#1 if (((((dec&_net_27)&_net_29))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_27)&_net_29) || 1'b1) line 77 at %d\n",$time);
#1 if (((((dec&_net_27)&_net_28))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_27)&_net_28) || 1'b1) line 78 at %d\n",$time);
#1 if (((((((dec&_net_13)&_net_14)&_net_24)&_net_26))===1'bx) || (1'b1)===1'bx) $display("hazard (((((dec&_net_13)&_net_14)&_net_24)&_net_26) || 1'b1) line 83 at %d\n",$time);
#1 if (((((((dec&_net_13)&_net_14)&_net_24)&_net_25))===1'bx) || (1'b1)===1'bx) $display("hazard (((((dec&_net_13)&_net_14)&_net_24)&_net_25) || 1'b1) line 84 at %d\n",$time);
#1 if ((((((dec&_net_13)&_net_14)&_net_23))===1'bx) || (1'b1)===1'bx) $display("hazard ((((dec&_net_13)&_net_14)&_net_23) || 1'b1) line 86 at %d\n",$time);
#1 if ((((((dec&_net_13)&_net_14)&_net_22))===1'bx) || (1'b1)===1'bx) $display("hazard ((((dec&_net_13)&_net_14)&_net_22) || 1'b1) line 87 at %d\n",$time);
#1 if ((((((dec&_net_13)&_net_14)&_net_21))===1'bx) || (1'b1)===1'bx) $display("hazard ((((dec&_net_13)&_net_14)&_net_21) || 1'b1) line 88 at %d\n",$time);
#1 if ((((((dec&_net_13)&_net_14)&_net_20))===1'bx) || (1'b1)===1'bx) $display("hazard ((((dec&_net_13)&_net_14)&_net_20) || 1'b1) line 89 at %d\n",$time);
#1 if (((((((dec&_net_13)&_net_14)&_net_17)&_net_19))===1'bx) || (1'b1)===1'bx) $display("hazard (((((dec&_net_13)&_net_14)&_net_17)&_net_19) || 1'b1) line 91 at %d\n",$time);
#1 if (((((((dec&_net_13)&_net_14)&_net_17)&_net_18))===1'bx) || (1'b1)===1'bx) $display("hazard (((((dec&_net_13)&_net_14)&_net_17)&_net_18) || 1'b1) line 92 at %d\n",$time);
#1 if ((((((dec&_net_13)&_net_14)&_net_16))===1'bx) || (1'b1)===1'bx) $display("hazard ((((dec&_net_13)&_net_14)&_net_16) || 1'b1) line 94 at %d\n",$time);
#1 if ((((((dec&_net_13)&_net_14)&_net_15))===1'bx) || (1'b1)===1'bx) $display("hazard ((((dec&_net_13)&_net_14)&_net_15) || 1'b1) line 95 at %d\n",$time);
#1 if ((((dec&_net_12))===1'bx) || (1'b1)===1'bx) $display("hazard ((dec&_net_12) || 1'b1) line 98 at %d\n",$time);
#1 if (((((dec&_net_5)&_net_11))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_5)&_net_11) || 1'b1) line 100 at %d\n",$time);
#1 if (((((dec&_net_5)&_net_10))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_5)&_net_10) || 1'b1) line 101 at %d\n",$time);
#1 if (((((dec&_net_5)&_net_9))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_5)&_net_9) || 1'b1) line 102 at %d\n",$time);
#1 if (((((dec&_net_5)&_net_8))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_5)&_net_8) || 1'b1) line 103 at %d\n",$time);
#1 if (((((dec&_net_5)&_net_7))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_5)&_net_7) || 1'b1) line 104 at %d\n",$time);
#1 if (((((dec&_net_5)&_net_6))===1'bx) || (1'b1)===1'bx) $display("hazard (((dec&_net_5)&_net_6) || 1'b1) line 105 at %d\n",$time);
#1 if ((((dec&_net_4))===1'bx) || (1'b1)===1'bx) $display("hazard ((dec&_net_4) || 1'b1) line 107 at %d\n",$time);
#1 if ((((dec&_net_3))===1'bx) || (1'b1)===1'bx) $display("hazard ((dec&_net_3) || 1'b1) line 108 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_dec_reset = ((dec&_net_39)&_net_44)|
    ((dec&_net_39)&_net_43)|
    ((dec&_net_39)&_net_42)|
    ((dec&_net_39)&_net_41)|
    ((dec&_net_39)&_net_40)|
    ((dec&_net_32)&_net_38)|
    ((dec&_net_32)&_net_37)|
    ((dec&_net_32)&_net_36)|
    ((dec&_net_32)&_net_35)|
    ((dec&_net_32)&_net_34)|
    ((dec&_net_32)&_net_33)|
    (dec&_net_31)|
    ((dec&_net_27)&_net_30)|
    ((dec&_net_27)&_net_29)|
    ((dec&_net_27)&_net_28)|
    ((((dec&_net_13)&_net_14)&_net_24)&_net_26)|
    ((((dec&_net_13)&_net_14)&_net_24)&_net_25)|
    (((dec&_net_13)&_net_14)&_net_23)|
    (((dec&_net_13)&_net_14)&_net_22)|
    (((dec&_net_13)&_net_14)&_net_21)|
    (((dec&_net_13)&_net_14)&_net_20)|
    ((((dec&_net_13)&_net_14)&_net_17)&_net_19)|
    ((((dec&_net_13)&_net_14)&_net_17)&_net_18)|
    (((dec&_net_13)&_net_14)&_net_16)|
    (((dec&_net_13)&_net_14)&_net_15)|
    (dec&_net_12)|
    ((dec&_net_5)&_net_11)|
    ((dec&_net_5)&_net_10)|
    ((dec&_net_5)&_net_9)|
    ((dec&_net_5)&_net_8)|
    ((dec&_net_5)&_net_7)|
    ((dec&_net_5)&_net_6)|
    (dec&_net_4)|
    (dec&_net_3);

// synthesis translate_off
// synopsys translate_off
always @(posedge _proc_ift_set)
  begin
#1 if (_proc_ift_set===1'bx)
 begin
$display("Warning: control hazard(riscv_core:_proc_ift_set) at %d",$time);
 end
#1 if ((((exej&_net_209))===1'bx) || (1'b1)===1'bx) $display("hazard ((exej&_net_209) || 1'b1) line 264 at %d\n",$time);
#1 if (((exeu)===1'bx) || (1'b1)===1'bx) $display("hazard (exeu || 1'b1) line 257 at %d\n",$time);
#1 if (((((exeb&_net_199)&_net_205))===1'bx) || (1'b1)===1'bx) $display("hazard (((exeb&_net_199)&_net_205) || 1'b1) line 219 at %d\n",$time);
#1 if (((((exeb&_net_199)&_net_202))===1'bx) || (1'b1)===1'bx) $display("hazard (((exeb&_net_199)&_net_202) || 1'b1) line 220 at %d\n",$time);
#1 if (((((exeb&_net_191)&_net_197))===1'bx) || (1'b1)===1'bx) $display("hazard (((exeb&_net_191)&_net_197) || 1'b1) line 223 at %d\n",$time);
#1 if (((((exeb&_net_191)&_net_194))===1'bx) || (1'b1)===1'bx) $display("hazard (((exeb&_net_191)&_net_194) || 1'b1) line 224 at %d\n",$time);
#1 if (((((exeb&_net_183)&_net_189))===1'bx) || (1'b1)===1'bx) $display("hazard (((exeb&_net_183)&_net_189) || 1'b1) line 227 at %d\n",$time);
#1 if (((((exeb&_net_183)&_net_186))===1'bx) || (1'b1)===1'bx) $display("hazard (((exeb&_net_183)&_net_186) || 1'b1) line 228 at %d\n",$time);
#1 if (((((exeb&_net_175)&_net_181))===1'bx) || (1'b1)===1'bx) $display("hazard (((exeb&_net_175)&_net_181) || 1'b1) line 231 at %d\n",$time);
#1 if (((((exeb&_net_175)&_net_178))===1'bx) || (1'b1)===1'bx) $display("hazard (((exeb&_net_175)&_net_178) || 1'b1) line 232 at %d\n",$time);
#1 if ((((((exeb&_net_157)&_net_167)&_net_173))===1'bx) || (1'b1)===1'bx) $display("hazard ((((exeb&_net_157)&_net_167)&_net_173) || 1'b1) line 236 at %d\n",$time);
#1 if ((((((exeb&_net_157)&_net_167)&_net_170))===1'bx) || (1'b1)===1'bx) $display("hazard ((((exeb&_net_157)&_net_167)&_net_170) || 1'b1) line 237 at %d\n",$time);
#1 if (((((exeb&_net_157)&_net_164))===1'bx) || (1'b1)===1'bx) $display("hazard (((exeb&_net_157)&_net_164) || 1'b1) line 239 at %d\n",$time);
#1 if (((((exeb&_net_157)&_net_160))===1'bx) || (1'b1)===1'bx) $display("hazard (((exeb&_net_157)&_net_160) || 1'b1) line 240 at %d\n",$time);
#1 if ((((((exeb&_net_139)&_net_149)&_net_152))===1'bx) || (1'b1)===1'bx) $display("hazard ((((exeb&_net_139)&_net_149)&_net_152) || 1'b1) line 245 at %d\n",$time);
#1 if (((((exeb&_net_139)&_net_142))===1'bx) || (1'b1)===1'bx) $display("hazard (((exeb&_net_139)&_net_142) || 1'b1) line 248 at %d\n",$time);
#1 if ((((_reg_128&exes))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_128&exes) || 1'b1) line 214 at %d\n",$time);
#1 if ((((_reg_114&exei_2))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_114&exei_2) || 1'b1) line 192 at %d\n",$time);
#1 if ((((_reg_93&exei_1))===1'bx) || (1'b1)===1'bx) $display("hazard ((_reg_93&exei_1) || 1'b1) line 159 at %d\n",$time);
#1 if (((exer)===1'bx) || (1'b1)===1'bx) $display("hazard (exer || 1'b1) line 143 at %d\n",$time);
#1 if (((_net_0)===1'bx) || (1'b1)===1'bx) $display("hazard (_net_0 || 1'b1) line 48 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _proc_ift_set = (exej&_net_209)|
    exeu|
    ((exeb&_net_199)&_net_205)|
    ((exeb&_net_199)&_net_202)|
    ((exeb&_net_191)&_net_197)|
    ((exeb&_net_191)&_net_194)|
    ((exeb&_net_183)&_net_189)|
    ((exeb&_net_183)&_net_186)|
    ((exeb&_net_175)&_net_181)|
    ((exeb&_net_175)&_net_178)|
    (((exeb&_net_157)&_net_167)&_net_173)|
    (((exeb&_net_157)&_net_167)&_net_170)|
    ((exeb&_net_157)&_net_164)|
    ((exeb&_net_157)&_net_160)|
    (((exeb&_net_139)&_net_149)&_net_152)|
    ((exeb&_net_139)&_net_142)|
    (_reg_128&exes)|
    (_reg_114&exei_2)|
    (_reg_93&exei_1)|
    exer|
    _net_0;
   assign  _proc_ift_reset = 1'b0;
   assign  _net_0 = (rst_d&(~p_reset));
   assign  _net_3 = 
// synthesis translate_off
// synopsys translate_off
(dec)? 
// synthesis translate_on
// synopsys translate_on
((dec)?((inst[6:2])==5'b11011):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_4 = 
// synthesis translate_off
// synopsys translate_off
(dec)? 
// synthesis translate_on
// synopsys translate_on
((dec)?((inst[6:2])==5'b11001):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_5 = 
// synthesis translate_off
// synopsys translate_off
(dec)? 
// synthesis translate_on
// synopsys translate_on
((dec)?((inst[6:2])==5'b11000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_6 = 
// synthesis translate_off
// synopsys translate_off
((dec&_net_5))? 
// synthesis translate_on
// synopsys translate_on
(((dec&_net_5))?((inst[14:12])==3'b111):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_7 = 
// synthesis translate_off
// synopsys translate_off
((dec&_net_5))? 
// synthesis translate_on
// synopsys translate_on
(((dec&_net_5))?((inst[14:12])==3'b110):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_8 = 
// synthesis translate_off
// synopsys translate_off
((dec&_net_5))? 
// synthesis translate_on
// synopsys translate_on
(((dec&_net_5))?((inst[14:12])==3'b101):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_9 = 
// synthesis translate_off
// synopsys translate_off
((dec&_net_5))? 
// synthesis translate_on
// synopsys translate_on
(((dec&_net_5))?((inst[14:12])==3'b100):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_10 = 
// synthesis translate_off
// synopsys translate_off
((dec&_net_5))? 
// synthesis translate_on
// synopsys translate_on
(((dec&_net_5))?((inst[14:12])==3'b001):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_11 = 
// synthesis translate_off
// synopsys translate_off
((dec&_net_5))? 
// synthesis translate_on
// synopsys translate_on
(((dec&_net_5))?((inst[14:12])==3'b000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_12 = 
// synthesis translate_off
// synopsys translate_off
(dec)? 
// synthesis translate_on
// synopsys translate_on
((dec)?((inst[6:2])==5'b01101):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_13 = 
// synthesis translate_off
// synopsys translate_off
(dec)? 
// synthesis translate_on
// synopsys translate_on
((dec)?((inst[6:2])==5'b01100):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_14 = 
// synthesis translate_off
// synopsys translate_off
((dec&_net_13))? 
// synthesis translate_on
// synopsys translate_on
(((dec&_net_13))?(~(inst[25])):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_15 = 
// synthesis translate_off
// synopsys translate_off
(((dec&_net_13)&_net_14))? 
// synthesis translate_on
// synopsys translate_on
((((dec&_net_13)&_net_14))?((inst[14:12])==3'b111):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_16 = 
// synthesis translate_off
// synopsys translate_off
(((dec&_net_13)&_net_14))? 
// synthesis translate_on
// synopsys translate_on
((((dec&_net_13)&_net_14))?((inst[14:12])==3'b110):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_17 = 
// synthesis translate_off
// synopsys translate_off
(((dec&_net_13)&_net_14))? 
// synthesis translate_on
// synopsys translate_on
((((dec&_net_13)&_net_14))?((inst[14:12])==3'b101):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_18 = 
// synthesis translate_off
// synopsys translate_off
((((dec&_net_13)&_net_14)&_net_17))? 
// synthesis translate_on
// synopsys translate_on
(((((dec&_net_13)&_net_14)&_net_17))?(inst[30]):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_19 = 
// synthesis translate_off
// synopsys translate_off
((((dec&_net_13)&_net_14)&_net_17))? 
// synthesis translate_on
// synopsys translate_on
(((((dec&_net_13)&_net_14)&_net_17))?(~(inst[30])):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_20 = 
// synthesis translate_off
// synopsys translate_off
(((dec&_net_13)&_net_14))? 
// synthesis translate_on
// synopsys translate_on
((((dec&_net_13)&_net_14))?((inst[14:12])==3'b100):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_21 = 
// synthesis translate_off
// synopsys translate_off
(((dec&_net_13)&_net_14))? 
// synthesis translate_on
// synopsys translate_on
((((dec&_net_13)&_net_14))?((inst[14:12])==3'b011):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_22 = 
// synthesis translate_off
// synopsys translate_off
(((dec&_net_13)&_net_14))? 
// synthesis translate_on
// synopsys translate_on
((((dec&_net_13)&_net_14))?((inst[14:12])==3'b010):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_23 = 
// synthesis translate_off
// synopsys translate_off
(((dec&_net_13)&_net_14))? 
// synthesis translate_on
// synopsys translate_on
((((dec&_net_13)&_net_14))?((inst[14:12])==3'b001):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_24 = 
// synthesis translate_off
// synopsys translate_off
(((dec&_net_13)&_net_14))? 
// synthesis translate_on
// synopsys translate_on
((((dec&_net_13)&_net_14))?((inst[14:12])==3'b000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_25 = 
// synthesis translate_off
// synopsys translate_off
((((dec&_net_13)&_net_14)&_net_24))? 
// synthesis translate_on
// synopsys translate_on
(((((dec&_net_13)&_net_14)&_net_24))?(inst[30]):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_26 = 
// synthesis translate_off
// synopsys translate_off
((((dec&_net_13)&_net_14)&_net_24))? 
// synthesis translate_on
// synopsys translate_on
(((((dec&_net_13)&_net_14)&_net_24))?(~(inst[30])):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_27 = 
// synthesis translate_off
// synopsys translate_off
(dec)? 
// synthesis translate_on
// synopsys translate_on
((dec)?((inst[6:2])==5'b01000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_28 = 
// synthesis translate_off
// synopsys translate_off
((dec&_net_27))? 
// synthesis translate_on
// synopsys translate_on
(((dec&_net_27))?((inst[14:12])==3'b010):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_29 = 
// synthesis translate_off
// synopsys translate_off
((dec&_net_27))? 
// synthesis translate_on
// synopsys translate_on
(((dec&_net_27))?((inst[14:12])==3'b001):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_30 = 
// synthesis translate_off
// synopsys translate_off
((dec&_net_27))? 
// synthesis translate_on
// synopsys translate_on
(((dec&_net_27))?((inst[14:12])==3'b000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_31 = 
// synthesis translate_off
// synopsys translate_off
(dec)? 
// synthesis translate_on
// synopsys translate_on
((dec)?((inst[6:2])==5'b00101):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_32 = 
// synthesis translate_off
// synopsys translate_off
(dec)? 
// synthesis translate_on
// synopsys translate_on
((dec)?((inst[6:2])==5'b00100):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_33 = 
// synthesis translate_off
// synopsys translate_off
((dec&_net_32))? 
// synthesis translate_on
// synopsys translate_on
(((dec&_net_32))?((inst[14:12])==3'b111):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_34 = 
// synthesis translate_off
// synopsys translate_off
((dec&_net_32))? 
// synthesis translate_on
// synopsys translate_on
(((dec&_net_32))?((inst[14:12])==3'b110):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_35 = 
// synthesis translate_off
// synopsys translate_off
((dec&_net_32))? 
// synthesis translate_on
// synopsys translate_on
(((dec&_net_32))?((inst[14:12])==3'b100):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_36 = 
// synthesis translate_off
// synopsys translate_off
((dec&_net_32))? 
// synthesis translate_on
// synopsys translate_on
(((dec&_net_32))?((inst[14:12])==3'b011):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_37 = 
// synthesis translate_off
// synopsys translate_off
((dec&_net_32))? 
// synthesis translate_on
// synopsys translate_on
(((dec&_net_32))?((inst[14:12])==3'b010):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_38 = 
// synthesis translate_off
// synopsys translate_off
((dec&_net_32))? 
// synthesis translate_on
// synopsys translate_on
(((dec&_net_32))?((inst[14:12])==3'b000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_39 = 
// synthesis translate_off
// synopsys translate_off
(dec)? 
// synthesis translate_on
// synopsys translate_on
((dec)?((inst[6:2])==5'b00000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_40 = 
// synthesis translate_off
// synopsys translate_off
((dec&_net_39))? 
// synthesis translate_on
// synopsys translate_on
(((dec&_net_39))?((inst[14:12])==3'b101):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_41 = 
// synthesis translate_off
// synopsys translate_off
((dec&_net_39))? 
// synthesis translate_on
// synopsys translate_on
(((dec&_net_39))?((inst[14:12])==3'b100):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_42 = 
// synthesis translate_off
// synopsys translate_off
((dec&_net_39))? 
// synthesis translate_on
// synopsys translate_on
(((dec&_net_39))?((inst[14:12])==3'b010):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_43 = 
// synthesis translate_off
// synopsys translate_off
((dec&_net_39))? 
// synthesis translate_on
// synopsys translate_on
(((dec&_net_39))?((inst[14:12])==3'b001):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_44 = 
// synthesis translate_off
// synopsys translate_off
((dec&_net_39))? 
// synthesis translate_on
// synopsys translate_on
(((dec&_net_39))?((inst[14:12])==3'b000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_45 = 
// synthesis translate_off
// synopsys translate_off
(exer)? 
// synthesis translate_on
// synopsys translate_on
((exer)?(order==8'b01101100):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_46 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_45))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_45))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_47 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_45))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_45))?(_net_46[31]):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_48 = 
// synthesis translate_off
// synopsys translate_off
(((exer&_net_45)&_net_47))? 
// synthesis translate_on
// synopsys translate_on
((((exer&_net_45)&_net_47))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_49 = 
// synthesis translate_off
// synopsys translate_off
(((exer&_net_45)&_net_47))? 
// synthesis translate_on
// synopsys translate_on
((((exer&_net_45)&_net_47))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_50 = ((_net_48[30:0])>>_net_49);
   assign  _net_51 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_45))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_45))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_52 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_45))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_45))?(~(_net_51[31])):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_53 = 
// synthesis translate_off
// synopsys translate_off
(((exer&_net_45)&_net_52))? 
// synthesis translate_on
// synopsys translate_on
((((exer&_net_45)&_net_52))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_54 = 
// synthesis translate_off
// synopsys translate_off
(((exer&_net_45)&_net_52))? 
// synthesis translate_on
// synopsys translate_on
((((exer&_net_45)&_net_52))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_55 = 
// synthesis translate_off
// synopsys translate_off
(exer)? 
// synthesis translate_on
// synopsys translate_on
((exer)?(order==8'b01101110):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_56 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_55))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_55))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_57 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_55))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_55))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_58 = 
// synthesis translate_off
// synopsys translate_off
(exer)? 
// synthesis translate_on
// synopsys translate_on
((exer)?(order==8'b01101011):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_59 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_58))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_58))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_60 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_58))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_58))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_61 = (_net_59 < _net_60);
   assign  _net_62 = 
// synthesis translate_off
// synopsys translate_off
(exer)? 
// synthesis translate_on
// synopsys translate_on
((exer)?(order==8'b01101000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_63 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_62))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_62))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_64 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_62))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_62))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_65 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_62))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_62))?((_net_63[31])&(~(_net_64[31]))):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_66 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_62))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_62))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_67 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_62))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_62))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_68 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_62))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_62))?((~(_net_66[31]))&(_net_67[31])):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_69 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_62))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_62))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_70 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_62))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_62))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_71 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_62))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_62))?((_net_69[31])==(_net_70[31])):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_72 = 
// synthesis translate_off
// synopsys translate_off
(((exer&_net_62)&_net_71))? 
// synthesis translate_on
// synopsys translate_on
((((exer&_net_62)&_net_71))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_73 = 
// synthesis translate_off
// synopsys translate_off
(((exer&_net_62)&_net_71))? 
// synthesis translate_on
// synopsys translate_on
((((exer&_net_62)&_net_71))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_74 = (_net_72 < _net_73);
   assign  _net_75 = 
// synthesis translate_off
// synopsys translate_off
(exer)? 
// synthesis translate_on
// synopsys translate_on
((exer)?(order==8'b01100110):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_76 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_75))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_75))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_77 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_75))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_75))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_78 = 
// synthesis translate_off
// synopsys translate_off
(exer)? 
// synthesis translate_on
// synopsys translate_on
((exer)?(order==8'b01110010):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_79 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_78))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_78))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_80 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_78))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_78))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_81 = 
// synthesis translate_off
// synopsys translate_off
(exer)? 
// synthesis translate_on
// synopsys translate_on
((exer)?(order==8'b01011111):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_82 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_81))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_81))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_83 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_81))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_81))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_84 = 
// synthesis translate_off
// synopsys translate_off
(exer)? 
// synthesis translate_on
// synopsys translate_on
((exer)?(order==8'b00001011):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_85 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_84))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_84))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_86 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_84))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_84))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_87 = 
// synthesis translate_off
// synopsys translate_off
(exer)? 
// synthesis translate_on
// synopsys translate_on
((exer)?(order==8'b01110000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_88 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_87))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_87))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_89 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_87))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_87))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_90 = 
// synthesis translate_off
// synopsys translate_off
(exer)? 
// synthesis translate_on
// synopsys translate_on
((exer)?(order==8'b00000000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_91 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_90))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_90))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_92 = 
// synthesis translate_off
// synopsys translate_off
((exer&_net_90))? 
// synthesis translate_on
// synopsys translate_on
(((exer&_net_90))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_95 = 
// synthesis translate_off
// synopsys translate_off
((exei_1&_reg_94))? 
// synthesis translate_on
// synopsys translate_on
(((exei_1&_reg_94))?(order==8'b01010011):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_96 = 
// synthesis translate_off
// synopsys translate_off
(((exei_1&_reg_94)&_net_95))? 
// synthesis translate_on
// synopsys translate_on
((((exei_1&_reg_94)&_net_95))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_97 = (_net_96+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12}));
   assign  _net_98 = 
// synthesis translate_off
// synopsys translate_off
((exei_1&_reg_94))? 
// synthesis translate_on
// synopsys translate_on
(((exei_1&_reg_94))?(order==8'b00001100):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_99 = 
// synthesis translate_off
// synopsys translate_off
(((exei_1&_reg_94)&_net_98))? 
// synthesis translate_on
// synopsys translate_on
((((exei_1&_reg_94)&_net_98))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_100 = 
// synthesis translate_off
// synopsys translate_off
((exei_1&_reg_94))? 
// synthesis translate_on
// synopsys translate_on
(((exei_1&_reg_94))?(order==8'b01100000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_101 = 
// synthesis translate_off
// synopsys translate_off
(((exei_1&_reg_94)&_net_100))? 
// synthesis translate_on
// synopsys translate_on
((((exei_1&_reg_94)&_net_100))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_102 = 
// synthesis translate_off
// synopsys translate_off
((exei_1&_reg_94))? 
// synthesis translate_on
// synopsys translate_on
(((exei_1&_reg_94))?(order==8'b01110011):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_103 = 
// synthesis translate_off
// synopsys translate_off
(((exei_1&_reg_94)&_net_102))? 
// synthesis translate_on
// synopsys translate_on
((((exei_1&_reg_94)&_net_102))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_104 = 
// synthesis translate_off
// synopsys translate_off
((exei_1&_reg_94))? 
// synthesis translate_on
// synopsys translate_on
(((exei_1&_reg_94))?(order==8'b01101010):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_105 = 
// synthesis translate_off
// synopsys translate_off
(((exei_1&_reg_94)&_net_104))? 
// synthesis translate_on
// synopsys translate_on
((((exei_1&_reg_94)&_net_104))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_106 = imm12;
   assign  _net_107 = (_net_105 < ({20'b00000000000000000000,_net_106}));
   assign  _net_108 = 
// synthesis translate_off
// synopsys translate_off
((exei_1&_reg_94))? 
// synthesis translate_on
// synopsys translate_on
(((exei_1&_reg_94))?(order==8'b01101001):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_109 = 
// synthesis translate_off
// synopsys translate_off
(((exei_1&_reg_94)&_net_108))? 
// synthesis translate_on
// synopsys translate_on
((((exei_1&_reg_94)&_net_108))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_110 = (_net_109 < ({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12}));
   assign  _net_111 = 
// synthesis translate_off
// synopsys translate_off
((exei_1&_reg_94))? 
// synthesis translate_on
// synopsys translate_on
(((exei_1&_reg_94))?(order==8'b00000001):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_112 = 
// synthesis translate_off
// synopsys translate_off
(((exei_1&_reg_94)&_net_111))? 
// synthesis translate_on
// synopsys translate_on
((((exei_1&_reg_94)&_net_111))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_113 = (_net_112+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12}));
   assign  _net_116 = 
// synthesis translate_off
// synopsys translate_off
((exei_2&_reg_115))? 
// synthesis translate_on
// synopsys translate_on
(((exei_2&_reg_115))?(order==8'b01010111):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_117 = 
// synthesis translate_off
// synopsys translate_off
(((exei_2&_reg_115)&_net_116))? 
// synthesis translate_on
// synopsys translate_on
((((exei_2&_reg_115)&_net_116))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_118 = imm12;
   assign  _net_119 = 
// synthesis translate_off
// synopsys translate_off
((exei_2&_reg_115))? 
// synthesis translate_on
// synopsys translate_on
(((exei_2&_reg_115))?(order==8'b01010101):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_120 = 
// synthesis translate_off
// synopsys translate_off
(((exei_2&_reg_115)&_net_119))? 
// synthesis translate_on
// synopsys translate_on
((((exei_2&_reg_115)&_net_119))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_121 = imm12;
   assign  _net_122 = 
// synthesis translate_off
// synopsys translate_off
((exei_2&_reg_115))? 
// synthesis translate_on
// synopsys translate_on
(((exei_2&_reg_115))?(order==8'b01011010):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_123 = 
// synthesis translate_off
// synopsys translate_off
(((exei_2&_reg_115)&_net_122))? 
// synthesis translate_on
// synopsys translate_on
((((exei_2&_reg_115)&_net_122))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_124 = 
// synthesis translate_off
// synopsys translate_off
((exei_2&_reg_115))? 
// synthesis translate_on
// synopsys translate_on
(((exei_2&_reg_115))?(order==8'b01010110):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_125 = 
// synthesis translate_off
// synopsys translate_off
(((exei_2&_reg_115)&_net_124))? 
// synthesis translate_on
// synopsys translate_on
((((exei_2&_reg_115)&_net_124))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_126 = 
// synthesis translate_off
// synopsys translate_off
((exei_2&_reg_115))? 
// synthesis translate_on
// synopsys translate_on
(((exei_2&_reg_115))?(order==8'b01010100):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_127 = 
// synthesis translate_off
// synopsys translate_off
(((exei_2&_reg_115)&_net_126))? 
// synthesis translate_on
// synopsys translate_on
((((exei_2&_reg_115)&_net_126))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_130 = 
// synthesis translate_off
// synopsys translate_off
((exes&_reg_129))? 
// synthesis translate_on
// synopsys translate_on
(((exes&_reg_129))?(order==8'b01110001):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_131 = 
// synthesis translate_off
// synopsys translate_off
(((exes&_reg_129)&_net_130))? 
// synthesis translate_on
// synopsys translate_on
((((exes&_reg_129)&_net_130))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_132 = 
// synthesis translate_off
// synopsys translate_off
(((exes&_reg_129)&_net_130))? 
// synthesis translate_on
// synopsys translate_on
((((exes&_reg_129)&_net_130))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_133 = 
// synthesis translate_off
// synopsys translate_off
((exes&_reg_129))? 
// synthesis translate_on
// synopsys translate_on
(((exes&_reg_129))?(order==8'b01100101):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_134 = 
// synthesis translate_off
// synopsys translate_off
(((exes&_reg_129)&_net_133))? 
// synthesis translate_on
// synopsys translate_on
((((exes&_reg_129)&_net_133))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_135 = 
// synthesis translate_off
// synopsys translate_off
(((exes&_reg_129)&_net_133))? 
// synthesis translate_on
// synopsys translate_on
((((exes&_reg_129)&_net_133))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_136 = 
// synthesis translate_off
// synopsys translate_off
((exes&_reg_129))? 
// synthesis translate_on
// synopsys translate_on
(((exes&_reg_129))?(order==8'b01100011):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_137 = 
// synthesis translate_off
// synopsys translate_off
(((exes&_reg_129)&_net_136))? 
// synthesis translate_on
// synopsys translate_on
((((exes&_reg_129)&_net_136))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_138 = 
// synthesis translate_off
// synopsys translate_off
(((exes&_reg_129)&_net_136))? 
// synthesis translate_on
// synopsys translate_on
((((exes&_reg_129)&_net_136))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_139 = 
// synthesis translate_off
// synopsys translate_off
(exeb)? 
// synthesis translate_on
// synopsys translate_on
((exeb)?(order==8'b00001111):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_140 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_139))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_139))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_141 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_139))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_139))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_142 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_139))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_139))?((_net_140[31])&(~(_net_141[31]))):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_143 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_139))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_139))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_144 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_139))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_139))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_145 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_139))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_139))?((~(_net_143[31]))&(_net_144[31])):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_146 = ({imm12,1'b0});
   assign  _net_147 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_139))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_139))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_148 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_139))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_139))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_149 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_139))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_139))?((_net_147[31])==(_net_148[31])):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_150 = 
// synthesis translate_off
// synopsys translate_off
(((exeb&_net_139)&_net_149))? 
// synthesis translate_on
// synopsys translate_on
((((exeb&_net_139)&_net_149))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_151 = 
// synthesis translate_off
// synopsys translate_off
(((exeb&_net_139)&_net_149))? 
// synthesis translate_on
// synopsys translate_on
((((exeb&_net_139)&_net_149))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_152 = 
// synthesis translate_off
// synopsys translate_off
(((exeb&_net_139)&_net_149))? 
// synthesis translate_on
// synopsys translate_on
((((exeb&_net_139)&_net_149))?((_net_150[30:0]) <= (_net_151[30:0])):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_153 = 
// synthesis translate_off
// synopsys translate_off
(((exeb&_net_139)&_net_149))? 
// synthesis translate_on
// synopsys translate_on
((((exeb&_net_139)&_net_149))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_154 = 
// synthesis translate_off
// synopsys translate_off
(((exeb&_net_139)&_net_149))? 
// synthesis translate_on
// synopsys translate_on
((((exeb&_net_139)&_net_149))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_155 = 
// synthesis translate_off
// synopsys translate_off
(((exeb&_net_139)&_net_149))? 
// synthesis translate_on
// synopsys translate_on
((((exeb&_net_139)&_net_149))?((_net_153[30:0]) > (_net_154[30:0])):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_156 = ({imm12,1'b0});
   assign  _net_157 = 
// synthesis translate_off
// synopsys translate_off
(exeb)? 
// synthesis translate_on
// synopsys translate_on
((exeb)?(order==8'b00010001):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_158 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_157))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_157))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_159 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_157))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_157))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_160 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_157))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_157))?((_net_158[31])&(~(_net_159[31]))):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_161 = ({imm12,1'b0});
   assign  _net_162 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_157))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_157))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_163 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_157))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_157))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_164 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_157))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_157))?((~(_net_162[31]))&(_net_163[31])):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_165 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_157))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_157))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_166 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_157))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_157))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_167 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_157))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_157))?((_net_165[31])==(_net_166[31])):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_168 = 
// synthesis translate_off
// synopsys translate_off
(((exeb&_net_157)&_net_167))? 
// synthesis translate_on
// synopsys translate_on
((((exeb&_net_157)&_net_167))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_169 = 
// synthesis translate_off
// synopsys translate_off
(((exeb&_net_157)&_net_167))? 
// synthesis translate_on
// synopsys translate_on
((((exeb&_net_157)&_net_167))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_170 = 
// synthesis translate_off
// synopsys translate_off
(((exeb&_net_157)&_net_167))? 
// synthesis translate_on
// synopsys translate_on
((((exeb&_net_157)&_net_167))?((_net_168[30:0]) >= (_net_169[30:0])):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_171 = 
// synthesis translate_off
// synopsys translate_off
(((exeb&_net_157)&_net_167))? 
// synthesis translate_on
// synopsys translate_on
((((exeb&_net_157)&_net_167))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_172 = 
// synthesis translate_off
// synopsys translate_off
(((exeb&_net_157)&_net_167))? 
// synthesis translate_on
// synopsys translate_on
((((exeb&_net_157)&_net_167))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_173 = 
// synthesis translate_off
// synopsys translate_off
(((exeb&_net_157)&_net_167))? 
// synthesis translate_on
// synopsys translate_on
((((exeb&_net_157)&_net_167))?((_net_171[30:0]) < (_net_172[30:0])):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_174 = ({imm12,1'b0});
   assign  _net_175 = 
// synthesis translate_off
// synopsys translate_off
(exeb)? 
// synthesis translate_on
// synopsys translate_on
((exeb)?(order==8'b00010000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_176 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_175))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_175))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_177 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_175))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_175))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_178 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_175))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_175))?(_net_176 <= _net_177):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_179 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_175))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_175))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_180 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_175))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_175))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_181 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_175))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_175))?(_net_179 > _net_180):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_182 = ({imm12,1'b0});
   assign  _net_183 = 
// synthesis translate_off
// synopsys translate_off
(exeb)? 
// synthesis translate_on
// synopsys translate_on
((exeb)?(order==8'b00010010):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_184 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_183))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_183))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_185 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_183))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_183))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_186 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_183))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_183))?(_net_184 >= _net_185):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_187 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_183))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_183))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_188 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_183))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_183))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_189 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_183))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_183))?(_net_187 < _net_188):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_190 = ({imm12,1'b0});
   assign  _net_191 = 
// synthesis translate_off
// synopsys translate_off
(exeb)? 
// synthesis translate_on
// synopsys translate_on
((exeb)?(order==8'b00010011):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_192 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_191))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_191))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_193 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_191))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_191))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_194 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_191))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_191))?(_net_192==_net_193):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_195 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_191))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_191))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_196 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_191))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_191))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_197 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_191))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_191))?(_net_195 != _net_196):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_198 = ({imm12,1'b0});
   assign  _net_199 = 
// synthesis translate_off
// synopsys translate_off
(exeb)? 
// synthesis translate_on
// synopsys translate_on
((exeb)?(order==8'b00001110):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_200 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_199))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_199))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_201 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_199))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_199))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_202 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_199))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_199))?(_net_200 != _net_201):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_203 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_199))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_199))?(gr[rs1]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_204 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_199))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_199))?(gr[rs2]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_205 = 
// synthesis translate_off
// synopsys translate_off
((exeb&_net_199))? 
// synthesis translate_on
// synopsys translate_on
(((exeb&_net_199))?(_net_203==_net_204):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_206 = ({imm12,1'b0});
   assign  _net_207 = 
// synthesis translate_off
// synopsys translate_off
(exeu)? 
// synthesis translate_on
// synopsys translate_on
((exeu)?(order==8'b01011001):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_208 = 
// synthesis translate_off
// synopsys translate_off
(exeu)? 
// synthesis translate_on
// synopsys translate_on
((exeu)?(order==8'b00001101):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_209 = 
// synthesis translate_off
// synopsys translate_off
(exej)? 
// synthesis translate_on
// synopsys translate_on
((exej)?(order==8'b01010010):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_210 = ({imm,1'b0});
   assign  iaddr = 
// synthesis translate_off
// synopsys translate_off
((ift&_reg_2))? 
// synthesis translate_on
// synopsys translate_on
(((ift&_reg_2))?pc:32'b0)
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
if ((((((((((exes&_reg_129)&_net_136)&((exes&_reg_129)&_net_133))|((((exes&_reg_129)&_net_136)|((exes&_reg_129)&_net_133))&((exes&_reg_129)&_net_130)))|(((((exes&_reg_129)&_net_136)|((exes&_reg_129)&_net_133))|((exes&_reg_129)&_net_130))&((exei_2&_reg_115)&_net_126)))|((((((exes&_reg_129)&_net_136)|((exes&_reg_129)&_net_133))|((exes&_reg_129)&_net_130))|((exei_2&_reg_115)&_net_126))&((exei_2&_reg_115)&_net_124)))|(((((((exes&_reg_129)&_net_136)|((exes&_reg_129)&_net_133))|((exes&_reg_129)&_net_130))|((exei_2&_reg_115)&_net_126))|((exei_2&_reg_115)&_net_124))&((exei_2&_reg_115)&_net_122)))|((((((((exes&_reg_129)&_net_136)|((exes&_reg_129)&_net_133))|((exes&_reg_129)&_net_130))|((exei_2&_reg_115)&_net_126))|((exei_2&_reg_115)&_net_124))|((exei_2&_reg_115)&_net_122))&((exei_2&_reg_115)&_net_119)))|(((((((((exes&_reg_129)&_net_136)|((exes&_reg_129)&_net_133))|((exes&_reg_129)&_net_130))|((exei_2&_reg_115)&_net_126))|((exei_2&_reg_115)&_net_124))|((exei_2&_reg_115)&_net_122))|((exei_2&_reg_115)&_net_119))&((exei_2&_reg_115)&_net_116))))
 begin $display("Warning: assign collision(riscv_core:daddr) at %d",$time);
if (((exes&_reg_129)&_net_136)) $display("assert (((exes&_reg_129)&_net_136)) line 200 at %d\n",$time);
if (((exes&_reg_129)&_net_133)) $display("assert (((exes&_reg_129)&_net_133)) line 205 at %d\n",$time);
if (((exes&_reg_129)&_net_130)) $display("assert (((exes&_reg_129)&_net_130)) line 210 at %d\n",$time);
if (((exei_2&_reg_115)&_net_126)) $display("assert (((exei_2&_reg_115)&_net_126)) line 166 at %d\n",$time);
if (((exei_2&_reg_115)&_net_124)) $display("assert (((exei_2&_reg_115)&_net_124)) line 171 at %d\n",$time);
if (((exei_2&_reg_115)&_net_122)) $display("assert (((exei_2&_reg_115)&_net_122)) line 176 at %d\n",$time);
if (((exei_2&_reg_115)&_net_119)) $display("assert (((exei_2&_reg_115)&_net_119)) line 181 at %d\n",$time);
if (((exei_2&_reg_115)&_net_116)) $display("assert (((exei_2&_reg_115)&_net_116)) line 186 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  daddr = 
// synthesis translate_off
// synopsys translate_off
((((((((((exes&_reg_129)&_net_136)&((exes&_reg_129)&_net_133))|((((exes&_reg_129)&_net_136)|((exes&_reg_129)&_net_133))&((exes&_reg_129)&_net_130)))|(((((exes&_reg_129)&_net_136)|((exes&_reg_129)&_net_133))|((exes&_reg_129)&_net_130))&((exei_2&_reg_115)&_net_126)))|((((((exes&_reg_129)&_net_136)|((exes&_reg_129)&_net_133))|((exes&_reg_129)&_net_130))|((exei_2&_reg_115)&_net_126))&((exei_2&_reg_115)&_net_124)))|(((((((exes&_reg_129)&_net_136)|((exes&_reg_129)&_net_133))|((exes&_reg_129)&_net_130))|((exei_2&_reg_115)&_net_126))|((exei_2&_reg_115)&_net_124))&((exei_2&_reg_115)&_net_122)))|((((((((exes&_reg_129)&_net_136)|((exes&_reg_129)&_net_133))|((exes&_reg_129)&_net_130))|((exei_2&_reg_115)&_net_126))|((exei_2&_reg_115)&_net_124))|((exei_2&_reg_115)&_net_122))&((exei_2&_reg_115)&_net_119)))|(((((((((exes&_reg_129)&_net_136)|((exes&_reg_129)&_net_133))|((exes&_reg_129)&_net_130))|((exei_2&_reg_115)&_net_126))|((exei_2&_reg_115)&_net_124))|((exei_2&_reg_115)&_net_122))|((exei_2&_reg_115)&_net_119))&((exei_2&_reg_115)&_net_116))))? 32'bx :((((((((((exes&_reg_129)&_net_136)|((exes&_reg_129)&_net_133))|((exes&_reg_129)&_net_130))|((exei_2&_reg_115)&_net_126))|((exei_2&_reg_115)&_net_124))|((exei_2&_reg_115)&_net_122))|((exei_2&_reg_115)&_net_119))|((exei_2&_reg_115)&_net_116)))? 
// synthesis translate_on
// synopsys translate_on
((((exes&_reg_129)&_net_136))?(_net_137+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    ((((exes&_reg_129)&_net_133))?(_net_134+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    ((((exes&_reg_129)&_net_130))?(_net_131+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    ((((exei_2&_reg_115)&_net_126))?(_net_127+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    ((((exei_2&_reg_115)&_net_124))?(_net_125+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    ((((exei_2&_reg_115)&_net_122))?(_net_123+({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12})):32'b0)|
    ((((exei_2&_reg_115)&_net_119))?(_net_120+({20'b00000000000000000000,_net_121})):32'b0)|
    ((((exei_2&_reg_115)&_net_116))?(_net_117+({20'b00000000000000000000,_net_118})):32'b0)
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
if (((((exes&_reg_129)&_net_136)&((exes&_reg_129)&_net_133))|((((exes&_reg_129)&_net_136)|((exes&_reg_129)&_net_133))&((exes&_reg_129)&_net_130))))
 begin $display("Warning: assign collision(riscv_core:wdata) at %d",$time);
if (((exes&_reg_129)&_net_136)) $display("assert (((exes&_reg_129)&_net_136)) line 201 at %d\n",$time);
if (((exes&_reg_129)&_net_133)) $display("assert (((exes&_reg_129)&_net_133)) line 206 at %d\n",$time);
if (((exes&_reg_129)&_net_130)) $display("assert (((exes&_reg_129)&_net_130)) line 211 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  wdata = 
// synthesis translate_off
// synopsys translate_off
(((((exes&_reg_129)&_net_136)&((exes&_reg_129)&_net_133))|((((exes&_reg_129)&_net_136)|((exes&_reg_129)&_net_133))&((exes&_reg_129)&_net_130))))? 32'bx :(((((exes&_reg_129)&_net_136)|((exes&_reg_129)&_net_133))|((exes&_reg_129)&_net_130)))? 
// synthesis translate_on
// synopsys translate_on
((((exes&_reg_129)&_net_136))?({24'b000000000000000000000000,(_net_138[7:0])}):32'b0)|
    ((((exes&_reg_129)&_net_133))?({16'b0000000000000000,(_net_135[15:0])}):32'b0)|
    ((((exes&_reg_129)&_net_130))?(_net_132[31:0]):32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge dmem_read)
  begin
#1 if (dmem_read===1'bx)
 begin
$display("Warning: control hazard(riscv_core:dmem_read) at %d",$time);
 end
#1 if (((((exei_2&_reg_115)&_net_126))===1'bx) || (1'b1)===1'bx) $display("hazard (((exei_2&_reg_115)&_net_126) || 1'b1) line 165 at %d\n",$time);
#1 if (((((exei_2&_reg_115)&_net_124))===1'bx) || (1'b1)===1'bx) $display("hazard (((exei_2&_reg_115)&_net_124) || 1'b1) line 170 at %d\n",$time);
#1 if (((((exei_2&_reg_115)&_net_122))===1'bx) || (1'b1)===1'bx) $display("hazard (((exei_2&_reg_115)&_net_122) || 1'b1) line 175 at %d\n",$time);
#1 if (((((exei_2&_reg_115)&_net_119))===1'bx) || (1'b1)===1'bx) $display("hazard (((exei_2&_reg_115)&_net_119) || 1'b1) line 180 at %d\n",$time);
#1 if (((((exei_2&_reg_115)&_net_116))===1'bx) || (1'b1)===1'bx) $display("hazard (((exei_2&_reg_115)&_net_116) || 1'b1) line 185 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  dmem_read = ((exei_2&_reg_115)&_net_126)|
    ((exei_2&_reg_115)&_net_124)|
    ((exei_2&_reg_115)&_net_122)|
    ((exei_2&_reg_115)&_net_119)|
    ((exei_2&_reg_115)&_net_116);

// synthesis translate_off
// synopsys translate_off
always @(posedge dmem_write)
  begin
#1 if (dmem_write===1'bx)
 begin
$display("Warning: control hazard(riscv_core:dmem_write) at %d",$time);
 end
#1 if (((((exes&_reg_129)&_net_136))===1'bx) || (1'b1)===1'bx) $display("hazard (((exes&_reg_129)&_net_136) || 1'b1) line 199 at %d\n",$time);
#1 if (((((exes&_reg_129)&_net_133))===1'bx) || (1'b1)===1'bx) $display("hazard (((exes&_reg_129)&_net_133) || 1'b1) line 204 at %d\n",$time);
#1 if (((((exes&_reg_129)&_net_130))===1'bx) || (1'b1)===1'bx) $display("hazard (((exes&_reg_129)&_net_130) || 1'b1) line 209 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  dmem_write = ((exes&_reg_129)&_net_136)|
    ((exes&_reg_129)&_net_133)|
    ((exes&_reg_129)&_net_130);
always @(posedge m_clock)
  begin
   if ((exej&_net_209) )
     gr[rd] <= (pc+32'b00000000000000000000000000000100);
   if ((exeu&_net_208) )
     gr[rd] <= (pc+({imm,12'b000000000000}));
   if ((exeu&_net_207) )
     gr[rd] <= ({imm,12'b000000000000});
   if ((_reg_114&exei_2) )
     gr[rd] <= rd_wire;
   if (((exei_1&_reg_94)&_net_111) )
     gr[rd] <= (_net_113[31:0]);
   if (((exei_1&_reg_94)&_net_108) )
     gr[rd] <= ({31'b0000000000000000000000000000000,_net_110});
   if (((exei_1&_reg_94)&_net_104) )
     gr[rd] <= ({31'b0000000000000000000000000000000,_net_107});
   if (((exei_1&_reg_94)&_net_102) )
     gr[rd] <= (_net_103^({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12}));
   if (((exei_1&_reg_94)&_net_100) )
     gr[rd] <= (_net_101|({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12}));
   if (((exei_1&_reg_94)&_net_98) )
     gr[rd] <= (_net_99&({({(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11]),(imm12[11])}),imm12}));
   if (((exei_1&_reg_94)&_net_95) )
     gr[rd] <= (pc+32'b00000000000000000000000000000100);
   if ((exer&_net_90) )
     gr[rd] <= (_net_91+_net_92);
   if ((exer&_net_87) )
     gr[rd] <= (_net_88-_net_89);
   if ((exer&_net_84) )
     gr[rd] <= (_net_85&_net_86);
   if ((exer&_net_81) )
     gr[rd] <= (_net_82|_net_83);
   if ((exer&_net_78) )
     gr[rd] <= (_net_79^_net_80);
   if ((exer&_net_75) )
     gr[rd] <= (_net_76<<_net_77);
   if (((exer&_net_62)&_net_71) )
     gr[rd] <= ({31'b0000000000000000000000000000000,_net_74});
   if (((exer&_net_62)&_net_68) )
     gr[rd] <= 32'b00000000000000000000000000000001;
   if (((exer&_net_62)&_net_65) )
     gr[rd] <= 32'b00000000000000000000000000000000;
   if ((exer&_net_58) )
     gr[rd] <= ({31'b0000000000000000000000000000000,_net_61});
   if ((exer&_net_55) )
     gr[rd] <= (_net_56>>_net_57);
   if (((exer&_net_45)&_net_52) )
     gr[rd] <= (_net_53>>_net_54);
   if (((exer&_net_45)&_net_47) )
     gr[rd] <= ({1'b1,_net_50});
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     pc <= 32'b00000000000000000000000000000000;
else 
// synthesis translate_off
// synopsys translate_off
if ((((((((((((((((((((((((((exej&_net_209)&exeu)|(((exej&_net_209)|exeu)&((exeb&_net_199)&_net_205)))|((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))&((exeb&_net_199)&_net_202)))|(((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))&((exeb&_net_191)&_net_197)))|((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))&((exeb&_net_191)&_net_194)))|(((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))&((exeb&_net_183)&_net_189)))|((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))&((exeb&_net_183)&_net_186)))|(((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))&((exeb&_net_175)&_net_181)))|((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))&((exeb&_net_175)&_net_178)))|(((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))&(((exeb&_net_157)&_net_167)&_net_173)))|((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))&(((exeb&_net_157)&_net_167)&_net_170)))|(((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))&((exeb&_net_157)&_net_164)))|((((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))|((exeb&_net_157)&_net_164))&((exeb&_net_157)&_net_160)))|(((((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))|((exeb&_net_157)&_net_164))|((exeb&_net_157)&_net_160))&(((exeb&_net_139)&_net_149)&_net_155)))|((((((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))|((exeb&_net_157)&_net_164))|((exeb&_net_157)&_net_160))|(((exeb&_net_139)&_net_149)&_net_155))&(((exeb&_net_139)&_net_149)&_net_152)))|(((((((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))|((exeb&_net_157)&_net_164))|((exeb&_net_157)&_net_160))|(((exeb&_net_139)&_net_149)&_net_155))|(((exeb&_net_139)&_net_149)&_net_152))&((exeb&_net_139)&_net_145)))|((((((((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))|((exeb&_net_157)&_net_164))|((exeb&_net_157)&_net_160))|(((exeb&_net_139)&_net_149)&_net_155))|(((exeb&_net_139)&_net_149)&_net_152))|((exeb&_net_139)&_net_145))&((exeb&_net_139)&_net_142)))|(((((((((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))|((exeb&_net_157)&_net_164))|((exeb&_net_157)&_net_160))|(((exeb&_net_139)&_net_149)&_net_155))|(((exeb&_net_139)&_net_149)&_net_152))|((exeb&_net_139)&_net_145))|((exeb&_net_139)&_net_142))&(_reg_128&exes)))|((((((((((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))|((exeb&_net_157)&_net_164))|((exeb&_net_157)&_net_160))|(((exeb&_net_139)&_net_149)&_net_155))|(((exeb&_net_139)&_net_149)&_net_152))|((exeb&_net_139)&_net_145))|((exeb&_net_139)&_net_142))|(_reg_128&exes))&(_reg_114&exei_2)))|(((((((((((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))|((exeb&_net_157)&_net_164))|((exeb&_net_157)&_net_160))|(((exeb&_net_139)&_net_149)&_net_155))|(((exeb&_net_139)&_net_149)&_net_152))|((exeb&_net_139)&_net_145))|((exeb&_net_139)&_net_142))|(_reg_128&exes))|(_reg_114&exei_2))&((exei_1&_reg_94)&_net_95)))|((((((((((((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))|((exeb&_net_157)&_net_164))|((exeb&_net_157)&_net_160))|(((exeb&_net_139)&_net_149)&_net_155))|(((exeb&_net_139)&_net_149)&_net_152))|((exeb&_net_139)&_net_145))|((exeb&_net_139)&_net_142))|(_reg_128&exes))|(_reg_114&exei_2))|((exei_1&_reg_94)&_net_95))&(_reg_93&exei_1)))|(((((((((((((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))|((exeb&_net_157)&_net_164))|((exeb&_net_157)&_net_160))|(((exeb&_net_139)&_net_149)&_net_155))|(((exeb&_net_139)&_net_149)&_net_152))|((exeb&_net_139)&_net_145))|((exeb&_net_139)&_net_142))|(_reg_128&exes))|(_reg_114&exei_2))|((exei_1&_reg_94)&_net_95))|(_reg_93&exei_1))&exer))|((((((((((((((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))|((exeb&_net_157)&_net_164))|((exeb&_net_157)&_net_160))|(((exeb&_net_139)&_net_149)&_net_155))|(((exeb&_net_139)&_net_149)&_net_152))|((exeb&_net_139)&_net_145))|((exeb&_net_139)&_net_142))|(_reg_128&exes))|(_reg_114&exei_2))|((exei_1&_reg_94)&_net_95))|(_reg_93&exei_1))|exer)&(ift&_reg_2)))|(((((((((((((((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))|((exeb&_net_157)&_net_164))|((exeb&_net_157)&_net_160))|(((exeb&_net_139)&_net_149)&_net_155))|(((exeb&_net_139)&_net_149)&_net_152))|((exeb&_net_139)&_net_145))|((exeb&_net_139)&_net_142))|(_reg_128&exes))|(_reg_114&exei_2))|((exei_1&_reg_94)&_net_95))|(_reg_93&exei_1))|exer)|(ift&_reg_2))&_net_0)))   pc <= 32'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((exej&_net_209))
      pc <= (pc+({11'b00000000000,_net_210}));
else if (exeu)
      pc <= pc;
else if (((exeb&_net_199)&_net_205))
      pc <= (pc+({({(_net_206[12]),(_net_206[12]),(_net_206[12]),(_net_206[12]),(_net_206[12]),(_net_206[12]),(_net_206[12]),(_net_206[12]),(_net_206[12]),(_net_206[12]),(_net_206[12]),(_net_206[12]),(_net_206[12]),(_net_206[12]),(_net_206[12]),(_net_206[12]),(_net_206[12]),(_net_206[12]),(_net_206[12])}),_net_206}));
else if (((exeb&_net_199)&_net_202))
      pc <= pc;
else if (((exeb&_net_191)&_net_197))
      pc <= (pc+({({(_net_198[12]),(_net_198[12]),(_net_198[12]),(_net_198[12]),(_net_198[12]),(_net_198[12]),(_net_198[12]),(_net_198[12]),(_net_198[12]),(_net_198[12]),(_net_198[12]),(_net_198[12]),(_net_198[12]),(_net_198[12]),(_net_198[12]),(_net_198[12]),(_net_198[12]),(_net_198[12]),(_net_198[12])}),_net_198}));
else if (((exeb&_net_191)&_net_194))
      pc <= pc;
else if (((exeb&_net_183)&_net_189))
      pc <= (pc+({({(_net_190[12]),(_net_190[12]),(_net_190[12]),(_net_190[12]),(_net_190[12]),(_net_190[12]),(_net_190[12]),(_net_190[12]),(_net_190[12]),(_net_190[12]),(_net_190[12]),(_net_190[12]),(_net_190[12]),(_net_190[12]),(_net_190[12]),(_net_190[12]),(_net_190[12]),(_net_190[12]),(_net_190[12])}),_net_190}));
else if (((exeb&_net_183)&_net_186))
      pc <= pc;
else if (((exeb&_net_175)&_net_181))
      pc <= (pc+({({(_net_182[12]),(_net_182[12]),(_net_182[12]),(_net_182[12]),(_net_182[12]),(_net_182[12]),(_net_182[12]),(_net_182[12]),(_net_182[12]),(_net_182[12]),(_net_182[12]),(_net_182[12]),(_net_182[12]),(_net_182[12]),(_net_182[12]),(_net_182[12]),(_net_182[12]),(_net_182[12]),(_net_182[12])}),_net_182}));
else if (((exeb&_net_175)&_net_178))
      pc <= pc;
else if ((((exeb&_net_157)&_net_167)&_net_173))
      pc <= (pc+({({(_net_174[12]),(_net_174[12]),(_net_174[12]),(_net_174[12]),(_net_174[12]),(_net_174[12]),(_net_174[12]),(_net_174[12]),(_net_174[12]),(_net_174[12]),(_net_174[12]),(_net_174[12]),(_net_174[12]),(_net_174[12]),(_net_174[12]),(_net_174[12]),(_net_174[12]),(_net_174[12]),(_net_174[12])}),_net_174}));
else if ((((exeb&_net_157)&_net_167)&_net_170))
      pc <= pc;
else if (((exeb&_net_157)&_net_164))
      pc <= pc;
else if (((exeb&_net_157)&_net_160))
      pc <= (pc+({({(_net_161[12]),(_net_161[12]),(_net_161[12]),(_net_161[12]),(_net_161[12]),(_net_161[12]),(_net_161[12]),(_net_161[12]),(_net_161[12]),(_net_161[12]),(_net_161[12]),(_net_161[12]),(_net_161[12]),(_net_161[12]),(_net_161[12]),(_net_161[12]),(_net_161[12]),(_net_161[12]),(_net_161[12])}),_net_161}));
else if ((((exeb&_net_139)&_net_149)&_net_155))
      pc <= (pc+({({(_net_156[12]),(_net_156[12]),(_net_156[12]),(_net_156[12]),(_net_156[12]),(_net_156[12]),(_net_156[12]),(_net_156[12]),(_net_156[12]),(_net_156[12]),(_net_156[12]),(_net_156[12]),(_net_156[12]),(_net_156[12]),(_net_156[12]),(_net_156[12]),(_net_156[12]),(_net_156[12]),(_net_156[12])}),_net_156}));
else if ((((exeb&_net_139)&_net_149)&_net_152))
      pc <= pc;
else if (((exeb&_net_139)&_net_145))
      pc <= (pc+({({(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12]),(_net_146[12])}),_net_146}));
else if (((exeb&_net_139)&_net_142))
      pc <= pc;
else if ((_reg_128&exes))
      pc <= pc;
else if ((_reg_114&exei_2))
      pc <= pc;
else if (((exei_1&_reg_94)&_net_95))
      pc <= ({(_net_97[31:1]),1'b0});
else if ((_reg_93&exei_1))
      pc <= pc;
else if (exer)
      pc <= pc;
else if ((ift&_reg_2))
      pc <= (pc+32'b00000000000000000000000000000001);
else if (_net_0)
      pc <= 32'b00000000000000000000000000000000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((((((((((((((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))|((exeb&_net_157)&_net_164))|((exeb&_net_157)&_net_160))|(((exeb&_net_139)&_net_149)&_net_155))|(((exeb&_net_139)&_net_149)&_net_152))|((exeb&_net_139)&_net_145))|((exeb&_net_139)&_net_142))|(_reg_128&exes))|(_reg_114&exei_2))|((exei_1&_reg_94)&_net_95))|(_reg_93&exei_1))|exer)|(ift&_reg_2))|_net_0)==1'b1) ||
 ((((((((((((((((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))|((exeb&_net_157)&_net_164))|((exeb&_net_157)&_net_160))|(((exeb&_net_139)&_net_149)&_net_155))|(((exeb&_net_139)&_net_149)&_net_152))|((exeb&_net_139)&_net_145))|((exeb&_net_139)&_net_142))|(_reg_128&exes))|(_reg_114&exei_2))|((exei_1&_reg_94)&_net_95))|(_reg_93&exei_1))|exer)|(ift&_reg_2))|_net_0)==1'b0) ) begin
 if ((((((((((((((((((((((((((exej&_net_209)&exeu)|(((exej&_net_209)|exeu)&((exeb&_net_199)&_net_205)))|((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))&((exeb&_net_199)&_net_202)))|(((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))&((exeb&_net_191)&_net_197)))|((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))&((exeb&_net_191)&_net_194)))|(((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))&((exeb&_net_183)&_net_189)))|((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))&((exeb&_net_183)&_net_186)))|(((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))&((exeb&_net_175)&_net_181)))|((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))&((exeb&_net_175)&_net_178)))|(((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))&(((exeb&_net_157)&_net_167)&_net_173)))|((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))&(((exeb&_net_157)&_net_167)&_net_170)))|(((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))&((exeb&_net_157)&_net_164)))|((((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))|((exeb&_net_157)&_net_164))&((exeb&_net_157)&_net_160)))|(((((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))|((exeb&_net_157)&_net_164))|((exeb&_net_157)&_net_160))&(((exeb&_net_139)&_net_149)&_net_155)))|((((((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))|((exeb&_net_157)&_net_164))|((exeb&_net_157)&_net_160))|(((exeb&_net_139)&_net_149)&_net_155))&(((exeb&_net_139)&_net_149)&_net_152)))|(((((((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))|((exeb&_net_157)&_net_164))|((exeb&_net_157)&_net_160))|(((exeb&_net_139)&_net_149)&_net_155))|(((exeb&_net_139)&_net_149)&_net_152))&((exeb&_net_139)&_net_145)))|((((((((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))|((exeb&_net_157)&_net_164))|((exeb&_net_157)&_net_160))|(((exeb&_net_139)&_net_149)&_net_155))|(((exeb&_net_139)&_net_149)&_net_152))|((exeb&_net_139)&_net_145))&((exeb&_net_139)&_net_142)))|(((((((((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))|((exeb&_net_157)&_net_164))|((exeb&_net_157)&_net_160))|(((exeb&_net_139)&_net_149)&_net_155))|(((exeb&_net_139)&_net_149)&_net_152))|((exeb&_net_139)&_net_145))|((exeb&_net_139)&_net_142))&(_reg_128&exes)))|((((((((((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))|((exeb&_net_157)&_net_164))|((exeb&_net_157)&_net_160))|(((exeb&_net_139)&_net_149)&_net_155))|(((exeb&_net_139)&_net_149)&_net_152))|((exeb&_net_139)&_net_145))|((exeb&_net_139)&_net_142))|(_reg_128&exes))&(_reg_114&exei_2)))|(((((((((((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))|((exeb&_net_157)&_net_164))|((exeb&_net_157)&_net_160))|(((exeb&_net_139)&_net_149)&_net_155))|(((exeb&_net_139)&_net_149)&_net_152))|((exeb&_net_139)&_net_145))|((exeb&_net_139)&_net_142))|(_reg_128&exes))|(_reg_114&exei_2))&((exei_1&_reg_94)&_net_95)))|((((((((((((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))|((exeb&_net_157)&_net_164))|((exeb&_net_157)&_net_160))|(((exeb&_net_139)&_net_149)&_net_155))|(((exeb&_net_139)&_net_149)&_net_152))|((exeb&_net_139)&_net_145))|((exeb&_net_139)&_net_142))|(_reg_128&exes))|(_reg_114&exei_2))|((exei_1&_reg_94)&_net_95))&(_reg_93&exei_1)))|(((((((((((((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))|((exeb&_net_157)&_net_164))|((exeb&_net_157)&_net_160))|(((exeb&_net_139)&_net_149)&_net_155))|(((exeb&_net_139)&_net_149)&_net_152))|((exeb&_net_139)&_net_145))|((exeb&_net_139)&_net_142))|(_reg_128&exes))|(_reg_114&exei_2))|((exei_1&_reg_94)&_net_95))|(_reg_93&exei_1))&exer))|((((((((((((((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))|((exeb&_net_157)&_net_164))|((exeb&_net_157)&_net_160))|(((exeb&_net_139)&_net_149)&_net_155))|(((exeb&_net_139)&_net_149)&_net_152))|((exeb&_net_139)&_net_145))|((exeb&_net_139)&_net_142))|(_reg_128&exes))|(_reg_114&exei_2))|((exei_1&_reg_94)&_net_95))|(_reg_93&exei_1))|exer)&(ift&_reg_2)))|(((((((((((((((((((((((((exej&_net_209)|exeu)|((exeb&_net_199)&_net_205))|((exeb&_net_199)&_net_202))|((exeb&_net_191)&_net_197))|((exeb&_net_191)&_net_194))|((exeb&_net_183)&_net_189))|((exeb&_net_183)&_net_186))|((exeb&_net_175)&_net_181))|((exeb&_net_175)&_net_178))|(((exeb&_net_157)&_net_167)&_net_173))|(((exeb&_net_157)&_net_167)&_net_170))|((exeb&_net_157)&_net_164))|((exeb&_net_157)&_net_160))|(((exeb&_net_139)&_net_149)&_net_155))|(((exeb&_net_139)&_net_149)&_net_152))|((exeb&_net_139)&_net_145))|((exeb&_net_139)&_net_142))|(_reg_128&exes))|(_reg_114&exei_2))|((exei_1&_reg_94)&_net_95))|(_reg_93&exei_1))|exer)|(ift&_reg_2))&_net_0)))
 begin $display("Warning: assign collision(riscv_core:pc) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(riscv_core:pc) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock)
  begin
  rst_d <= p_reset;
end
always @(posedge m_clock)
  begin
if ((_reg_1&ift))
      inst <= idata;
end
always @(posedge m_clock)
  begin

// synthesis translate_off
// synopsys translate_off
if (((((((((((((((((((((((((((((((((dec&_net_39)&_net_44)&((dec&_net_39)&_net_43))|((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))&((dec&_net_39)&_net_42)))|(((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))&((dec&_net_39)&_net_41)))|((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))&((dec&_net_39)&_net_40)))|(((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))&((dec&_net_32)&_net_38)))|((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))&((dec&_net_32)&_net_37)))|(((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))&((dec&_net_32)&_net_36)))|((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))&((dec&_net_32)&_net_35)))|(((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))&((dec&_net_32)&_net_34)))|((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))&((dec&_net_32)&_net_33)))|(((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))&((dec&_net_27)&_net_30)))|((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))&((dec&_net_27)&_net_29)))|(((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))&((dec&_net_27)&_net_28)))|((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))&((((dec&_net_13)&_net_14)&_net_24)&_net_26)))|(((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))&((((dec&_net_13)&_net_14)&_net_24)&_net_25)))|((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))&(((dec&_net_13)&_net_14)&_net_23)))|(((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))&(((dec&_net_13)&_net_14)&_net_22)))|((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))&(((dec&_net_13)&_net_14)&_net_21)))|(((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))&(((dec&_net_13)&_net_14)&_net_20)))|((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))&((((dec&_net_13)&_net_14)&_net_17)&_net_19)))|(((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))&((((dec&_net_13)&_net_14)&_net_17)&_net_18)))|((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))&(((dec&_net_13)&_net_14)&_net_16)))|(((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))&(((dec&_net_13)&_net_14)&_net_15)))|((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))&((dec&_net_5)&_net_11)))|(((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|((dec&_net_5)&_net_11))&((dec&_net_5)&_net_10)))|((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))&((dec&_net_5)&_net_9)))|(((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))&((dec&_net_5)&_net_8)))|((((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))&((dec&_net_5)&_net_7)))|(((((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))|((dec&_net_5)&_net_7))&((dec&_net_5)&_net_6)))|((((((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))|((dec&_net_5)&_net_7))|((dec&_net_5)&_net_6))&(dec&_net_4))))   rs1 <= 5'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (((dec&_net_39)&_net_44))
      rs1 <= (inst[19:15]);
else if (((dec&_net_39)&_net_43))
      rs1 <= (inst[19:15]);
else if (((dec&_net_39)&_net_42))
      rs1 <= (inst[19:15]);
else if (((dec&_net_39)&_net_41))
      rs1 <= (inst[19:15]);
else if (((dec&_net_39)&_net_40))
      rs1 <= (inst[19:15]);
else if (((dec&_net_32)&_net_38))
      rs1 <= (inst[19:15]);
else if (((dec&_net_32)&_net_37))
      rs1 <= (inst[19:15]);
else if (((dec&_net_32)&_net_36))
      rs1 <= (inst[19:15]);
else if (((dec&_net_32)&_net_35))
      rs1 <= (inst[19:15]);
else if (((dec&_net_32)&_net_34))
      rs1 <= (inst[19:15]);
else if (((dec&_net_32)&_net_33))
      rs1 <= (inst[19:15]);
else if (((dec&_net_27)&_net_30))
      rs1 <= (inst[19:15]);
else if (((dec&_net_27)&_net_29))
      rs1 <= (inst[19:15]);
else if (((dec&_net_27)&_net_28))
      rs1 <= (inst[19:15]);
else if (((((dec&_net_13)&_net_14)&_net_24)&_net_26))
      rs1 <= (inst[19:15]);
else if (((((dec&_net_13)&_net_14)&_net_24)&_net_25))
      rs1 <= (inst[19:15]);
else if ((((dec&_net_13)&_net_14)&_net_23))
      rs1 <= (inst[19:15]);
else if ((((dec&_net_13)&_net_14)&_net_22))
      rs1 <= (inst[19:15]);
else if ((((dec&_net_13)&_net_14)&_net_21))
      rs1 <= (inst[19:15]);
else if ((((dec&_net_13)&_net_14)&_net_20))
      rs1 <= (inst[19:15]);
else if (((((dec&_net_13)&_net_14)&_net_17)&_net_19))
      rs1 <= (inst[19:15]);
else if (((((dec&_net_13)&_net_14)&_net_17)&_net_18))
      rs1 <= (inst[19:15]);
else if ((((dec&_net_13)&_net_14)&_net_16))
      rs1 <= (inst[19:15]);
else if ((((dec&_net_13)&_net_14)&_net_15))
      rs1 <= (inst[19:15]);
else if (((dec&_net_5)&_net_11))
      rs1 <= (inst[19:15]);
else if (((dec&_net_5)&_net_10))
      rs1 <= (inst[19:15]);
else if (((dec&_net_5)&_net_9))
      rs1 <= (inst[19:15]);
else if (((dec&_net_5)&_net_8))
      rs1 <= (inst[19:15]);
else if (((dec&_net_5)&_net_7))
      rs1 <= (inst[19:15]);
else if (((dec&_net_5)&_net_6))
      rs1 <= (inst[19:15]);
else if ((dec&_net_4))
      rs1 <= (inst[19:15]);
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((((((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))|((dec&_net_5)&_net_7))|((dec&_net_5)&_net_6))|(dec&_net_4))==1'b1) ||
 (((((((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))|((dec&_net_5)&_net_7))|((dec&_net_5)&_net_6))|(dec&_net_4))==1'b0) ) begin
 if (((((((((((((((((((((((((((((((((dec&_net_39)&_net_44)&((dec&_net_39)&_net_43))|((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))&((dec&_net_39)&_net_42)))|(((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))&((dec&_net_39)&_net_41)))|((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))&((dec&_net_39)&_net_40)))|(((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))&((dec&_net_32)&_net_38)))|((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))&((dec&_net_32)&_net_37)))|(((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))&((dec&_net_32)&_net_36)))|((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))&((dec&_net_32)&_net_35)))|(((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))&((dec&_net_32)&_net_34)))|((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))&((dec&_net_32)&_net_33)))|(((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))&((dec&_net_27)&_net_30)))|((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))&((dec&_net_27)&_net_29)))|(((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))&((dec&_net_27)&_net_28)))|((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))&((((dec&_net_13)&_net_14)&_net_24)&_net_26)))|(((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))&((((dec&_net_13)&_net_14)&_net_24)&_net_25)))|((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))&(((dec&_net_13)&_net_14)&_net_23)))|(((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))&(((dec&_net_13)&_net_14)&_net_22)))|((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))&(((dec&_net_13)&_net_14)&_net_21)))|(((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))&(((dec&_net_13)&_net_14)&_net_20)))|((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))&((((dec&_net_13)&_net_14)&_net_17)&_net_19)))|(((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))&((((dec&_net_13)&_net_14)&_net_17)&_net_18)))|((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))&(((dec&_net_13)&_net_14)&_net_16)))|(((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))&(((dec&_net_13)&_net_14)&_net_15)))|((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))&((dec&_net_5)&_net_11)))|(((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|((dec&_net_5)&_net_11))&((dec&_net_5)&_net_10)))|((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))&((dec&_net_5)&_net_9)))|(((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))&((dec&_net_5)&_net_8)))|((((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))&((dec&_net_5)&_net_7)))|(((((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))|((dec&_net_5)&_net_7))&((dec&_net_5)&_net_6)))|((((((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))|((dec&_net_5)&_net_7))|((dec&_net_5)&_net_6))&(dec&_net_4))))
 begin $display("Warning: assign collision(riscv_core:rs1) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(riscv_core:rs1) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock)
  begin

// synthesis translate_off
// synopsys translate_off
if (((((((((((((((((((((dec&_net_27)&_net_30)&((dec&_net_27)&_net_29))|((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))&((dec&_net_27)&_net_28)))|(((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))&((((dec&_net_13)&_net_14)&_net_24)&_net_26)))|((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))&((((dec&_net_13)&_net_14)&_net_24)&_net_25)))|(((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))&(((dec&_net_13)&_net_14)&_net_23)))|((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))&(((dec&_net_13)&_net_14)&_net_22)))|(((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))&(((dec&_net_13)&_net_14)&_net_21)))|((((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))&(((dec&_net_13)&_net_14)&_net_20)))|(((((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))&((((dec&_net_13)&_net_14)&_net_17)&_net_19)))|((((((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))&((((dec&_net_13)&_net_14)&_net_17)&_net_18)))|(((((((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))&(((dec&_net_13)&_net_14)&_net_16)))|((((((((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))&(((dec&_net_13)&_net_14)&_net_15)))|(((((((((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))&((dec&_net_5)&_net_11)))|((((((((((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|((dec&_net_5)&_net_11))&((dec&_net_5)&_net_10)))|(((((((((((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))&((dec&_net_5)&_net_9)))|((((((((((((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))&((dec&_net_5)&_net_8)))|(((((((((((((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))&((dec&_net_5)&_net_7)))|((((((((((((((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))|((dec&_net_5)&_net_7))&((dec&_net_5)&_net_6))))   rs2 <= 5'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (((dec&_net_27)&_net_30))
      rs2 <= (inst[24:20]);
else if (((dec&_net_27)&_net_29))
      rs2 <= (inst[24:20]);
else if (((dec&_net_27)&_net_28))
      rs2 <= (inst[24:20]);
else if (((((dec&_net_13)&_net_14)&_net_24)&_net_26))
      rs2 <= (inst[24:20]);
else if (((((dec&_net_13)&_net_14)&_net_24)&_net_25))
      rs2 <= (inst[24:20]);
else if ((((dec&_net_13)&_net_14)&_net_23))
      rs2 <= (inst[24:20]);
else if ((((dec&_net_13)&_net_14)&_net_22))
      rs2 <= (inst[24:20]);
else if ((((dec&_net_13)&_net_14)&_net_21))
      rs2 <= (inst[24:20]);
else if ((((dec&_net_13)&_net_14)&_net_20))
      rs2 <= (inst[24:20]);
else if (((((dec&_net_13)&_net_14)&_net_17)&_net_19))
      rs2 <= (inst[24:20]);
else if (((((dec&_net_13)&_net_14)&_net_17)&_net_18))
      rs2 <= (inst[24:20]);
else if ((((dec&_net_13)&_net_14)&_net_16))
      rs2 <= (inst[24:20]);
else if ((((dec&_net_13)&_net_14)&_net_15))
      rs2 <= (inst[24:20]);
else if (((dec&_net_5)&_net_11))
      rs2 <= (inst[24:20]);
else if (((dec&_net_5)&_net_10))
      rs2 <= (inst[24:20]);
else if (((dec&_net_5)&_net_9))
      rs2 <= (inst[24:20]);
else if (((dec&_net_5)&_net_8))
      rs2 <= (inst[24:20]);
else if (((dec&_net_5)&_net_7))
      rs2 <= (inst[24:20]);
else if (((dec&_net_5)&_net_6))
      rs2 <= (inst[24:20]);
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((((((((((((((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))|((dec&_net_5)&_net_7))|((dec&_net_5)&_net_6))==1'b1) ||
 (((((((((((((((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))|((dec&_net_5)&_net_7))|((dec&_net_5)&_net_6))==1'b0) ) begin
 if (((((((((((((((((((((dec&_net_27)&_net_30)&((dec&_net_27)&_net_29))|((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))&((dec&_net_27)&_net_28)))|(((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))&((((dec&_net_13)&_net_14)&_net_24)&_net_26)))|((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))&((((dec&_net_13)&_net_14)&_net_24)&_net_25)))|(((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))&(((dec&_net_13)&_net_14)&_net_23)))|((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))&(((dec&_net_13)&_net_14)&_net_22)))|(((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))&(((dec&_net_13)&_net_14)&_net_21)))|((((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))&(((dec&_net_13)&_net_14)&_net_20)))|(((((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))&((((dec&_net_13)&_net_14)&_net_17)&_net_19)))|((((((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))&((((dec&_net_13)&_net_14)&_net_17)&_net_18)))|(((((((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))&(((dec&_net_13)&_net_14)&_net_16)))|((((((((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))&(((dec&_net_13)&_net_14)&_net_15)))|(((((((((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))&((dec&_net_5)&_net_11)))|((((((((((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|((dec&_net_5)&_net_11))&((dec&_net_5)&_net_10)))|(((((((((((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))&((dec&_net_5)&_net_9)))|((((((((((((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))&((dec&_net_5)&_net_8)))|(((((((((((((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))&((dec&_net_5)&_net_7)))|((((((((((((((((((((dec&_net_27)&_net_30)|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))|((dec&_net_5)&_net_7))&((dec&_net_5)&_net_6))))
 begin $display("Warning: assign collision(riscv_core:rs2) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(riscv_core:rs2) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock)
  begin

// synthesis translate_off
// synopsys translate_off
if (((((((((((((((((((((((((((dec&_net_39)&_net_44)&((dec&_net_39)&_net_43))|((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))&((dec&_net_39)&_net_42)))|(((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))&((dec&_net_39)&_net_41)))|((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))&((dec&_net_39)&_net_40)))|(((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))&((dec&_net_32)&_net_38)))|((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))&((dec&_net_32)&_net_37)))|(((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))&((dec&_net_32)&_net_36)))|((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))&((dec&_net_32)&_net_35)))|(((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))&((dec&_net_32)&_net_34)))|((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))&((dec&_net_32)&_net_33)))|(((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))&(dec&_net_31)))|((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))&((((dec&_net_13)&_net_14)&_net_24)&_net_26)))|(((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))&((((dec&_net_13)&_net_14)&_net_24)&_net_25)))|((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))&(((dec&_net_13)&_net_14)&_net_23)))|(((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))&(((dec&_net_13)&_net_14)&_net_22)))|((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))&(((dec&_net_13)&_net_14)&_net_21)))|(((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))&(((dec&_net_13)&_net_14)&_net_20)))|((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))&((((dec&_net_13)&_net_14)&_net_17)&_net_19)))|(((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))&((((dec&_net_13)&_net_14)&_net_17)&_net_18)))|((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))&(((dec&_net_13)&_net_14)&_net_16)))|(((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))&(((dec&_net_13)&_net_14)&_net_15)))|((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))&(dec&_net_12)))|(((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|(dec&_net_12))&(dec&_net_4)))|((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|(dec&_net_12))|(dec&_net_4))&(dec&_net_3))))   rd <= 5'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (((dec&_net_39)&_net_44))
      rd <= (inst[11:7]);
else if (((dec&_net_39)&_net_43))
      rd <= (inst[11:7]);
else if (((dec&_net_39)&_net_42))
      rd <= (inst[11:7]);
else if (((dec&_net_39)&_net_41))
      rd <= (inst[11:7]);
else if (((dec&_net_39)&_net_40))
      rd <= (inst[11:7]);
else if (((dec&_net_32)&_net_38))
      rd <= (inst[11:7]);
else if (((dec&_net_32)&_net_37))
      rd <= (inst[11:7]);
else if (((dec&_net_32)&_net_36))
      rd <= (inst[11:7]);
else if (((dec&_net_32)&_net_35))
      rd <= (inst[11:7]);
else if (((dec&_net_32)&_net_34))
      rd <= (inst[11:7]);
else if (((dec&_net_32)&_net_33))
      rd <= (inst[11:7]);
else if ((dec&_net_31))
      rd <= (inst[11:7]);
else if (((((dec&_net_13)&_net_14)&_net_24)&_net_26))
      rd <= (inst[11:7]);
else if (((((dec&_net_13)&_net_14)&_net_24)&_net_25))
      rd <= (inst[11:7]);
else if ((((dec&_net_13)&_net_14)&_net_23))
      rd <= (inst[11:7]);
else if ((((dec&_net_13)&_net_14)&_net_22))
      rd <= (inst[11:7]);
else if ((((dec&_net_13)&_net_14)&_net_21))
      rd <= (inst[11:7]);
else if ((((dec&_net_13)&_net_14)&_net_20))
      rd <= (inst[11:7]);
else if (((((dec&_net_13)&_net_14)&_net_17)&_net_19))
      rd <= (inst[11:7]);
else if (((((dec&_net_13)&_net_14)&_net_17)&_net_18))
      rd <= (inst[11:7]);
else if ((((dec&_net_13)&_net_14)&_net_16))
      rd <= (inst[11:7]);
else if ((((dec&_net_13)&_net_14)&_net_15))
      rd <= (inst[11:7]);
else if ((dec&_net_12))
      rd <= (inst[11:7]);
else if ((dec&_net_4))
      rd <= (inst[11:7]);
else if ((dec&_net_3))
      rd <= (inst[11:7]);
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|(dec&_net_12))|(dec&_net_4))|(dec&_net_3))==1'b1) ||
 (((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|(dec&_net_12))|(dec&_net_4))|(dec&_net_3))==1'b0) ) begin
 if (((((((((((((((((((((((((((dec&_net_39)&_net_44)&((dec&_net_39)&_net_43))|((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))&((dec&_net_39)&_net_42)))|(((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))&((dec&_net_39)&_net_41)))|((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))&((dec&_net_39)&_net_40)))|(((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))&((dec&_net_32)&_net_38)))|((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))&((dec&_net_32)&_net_37)))|(((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))&((dec&_net_32)&_net_36)))|((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))&((dec&_net_32)&_net_35)))|(((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))&((dec&_net_32)&_net_34)))|((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))&((dec&_net_32)&_net_33)))|(((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))&(dec&_net_31)))|((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))&((((dec&_net_13)&_net_14)&_net_24)&_net_26)))|(((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))&((((dec&_net_13)&_net_14)&_net_24)&_net_25)))|((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))&(((dec&_net_13)&_net_14)&_net_23)))|(((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))&(((dec&_net_13)&_net_14)&_net_22)))|((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))&(((dec&_net_13)&_net_14)&_net_21)))|(((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))&(((dec&_net_13)&_net_14)&_net_20)))|((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))&((((dec&_net_13)&_net_14)&_net_17)&_net_19)))|(((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))&((((dec&_net_13)&_net_14)&_net_17)&_net_18)))|((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))&(((dec&_net_13)&_net_14)&_net_16)))|(((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))&(((dec&_net_13)&_net_14)&_net_15)))|((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))&(dec&_net_12)))|(((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|(dec&_net_12))&(dec&_net_4)))|((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|(dec&_net_12))|(dec&_net_4))&(dec&_net_3))))
 begin $display("Warning: assign collision(riscv_core:rd) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(riscv_core:rd) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock)
  begin

// synthesis translate_off
// synopsys translate_off
if (((((((((((((((((((((((dec&_net_39)&_net_44)&((dec&_net_39)&_net_43))|((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))&((dec&_net_39)&_net_42)))|(((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))&((dec&_net_39)&_net_41)))|((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))&((dec&_net_39)&_net_40)))|(((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))&((dec&_net_32)&_net_38)))|((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))&((dec&_net_32)&_net_37)))|(((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))&((dec&_net_32)&_net_36)))|((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))&((dec&_net_32)&_net_35)))|(((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))&((dec&_net_32)&_net_34)))|((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))&((dec&_net_32)&_net_33)))|(((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))&((dec&_net_27)&_net_30)))|((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))&((dec&_net_27)&_net_29)))|(((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))&((dec&_net_27)&_net_28)))|((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))&((dec&_net_5)&_net_11)))|(((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((dec&_net_5)&_net_11))&((dec&_net_5)&_net_10)))|((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))&((dec&_net_5)&_net_9)))|(((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))&((dec&_net_5)&_net_8)))|((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))&((dec&_net_5)&_net_7)))|(((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))|((dec&_net_5)&_net_7))&((dec&_net_5)&_net_6)))|((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))|((dec&_net_5)&_net_7))|((dec&_net_5)&_net_6))&(dec&_net_4))))   imm12 <= 12'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (((dec&_net_39)&_net_44))
      imm12 <= (inst[31:20]);
else if (((dec&_net_39)&_net_43))
      imm12 <= (inst[31:20]);
else if (((dec&_net_39)&_net_42))
      imm12 <= (inst[31:20]);
else if (((dec&_net_39)&_net_41))
      imm12 <= (inst[31:20]);
else if (((dec&_net_39)&_net_40))
      imm12 <= (inst[31:20]);
else if (((dec&_net_32)&_net_38))
      imm12 <= (inst[31:20]);
else if (((dec&_net_32)&_net_37))
      imm12 <= (inst[31:20]);
else if (((dec&_net_32)&_net_36))
      imm12 <= (inst[31:20]);
else if (((dec&_net_32)&_net_35))
      imm12 <= (inst[31:20]);
else if (((dec&_net_32)&_net_34))
      imm12 <= (inst[31:20]);
else if (((dec&_net_32)&_net_33))
      imm12 <= (inst[31:20]);
else if (((dec&_net_27)&_net_30))
      imm12 <= ({(inst[31:25]),(inst[11:7])});
else if (((dec&_net_27)&_net_29))
      imm12 <= ({(inst[31:25]),(inst[11:7])});
else if (((dec&_net_27)&_net_28))
      imm12 <= ({(inst[31:25]),(inst[11:7])});
else if (((dec&_net_5)&_net_11))
      imm12 <= ({(inst[31]),(inst[7]),(inst[30:25]),(inst[11:8])});
else if (((dec&_net_5)&_net_10))
      imm12 <= ({(inst[31]),(inst[7]),(inst[30:25]),(inst[11:8])});
else if (((dec&_net_5)&_net_9))
      imm12 <= ({(inst[31]),(inst[7]),(inst[30:25]),(inst[11:8])});
else if (((dec&_net_5)&_net_8))
      imm12 <= ({(inst[31]),(inst[7]),(inst[30:25]),(inst[11:8])});
else if (((dec&_net_5)&_net_7))
      imm12 <= ({(inst[31]),(inst[7]),(inst[30:25]),(inst[11:8])});
else if (((dec&_net_5)&_net_6))
      imm12 <= ({(inst[31]),(inst[7]),(inst[30:25]),(inst[11:8])});
else if ((dec&_net_4))
      imm12 <= (inst[31:20]);
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))|((dec&_net_5)&_net_7))|((dec&_net_5)&_net_6))|(dec&_net_4))==1'b1) ||
 (((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))|((dec&_net_5)&_net_7))|((dec&_net_5)&_net_6))|(dec&_net_4))==1'b0) ) begin
 if (((((((((((((((((((((((dec&_net_39)&_net_44)&((dec&_net_39)&_net_43))|((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))&((dec&_net_39)&_net_42)))|(((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))&((dec&_net_39)&_net_41)))|((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))&((dec&_net_39)&_net_40)))|(((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))&((dec&_net_32)&_net_38)))|((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))&((dec&_net_32)&_net_37)))|(((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))&((dec&_net_32)&_net_36)))|((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))&((dec&_net_32)&_net_35)))|(((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))&((dec&_net_32)&_net_34)))|((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))&((dec&_net_32)&_net_33)))|(((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))&((dec&_net_27)&_net_30)))|((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))&((dec&_net_27)&_net_29)))|(((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))&((dec&_net_27)&_net_28)))|((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))&((dec&_net_5)&_net_11)))|(((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((dec&_net_5)&_net_11))&((dec&_net_5)&_net_10)))|((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))&((dec&_net_5)&_net_9)))|(((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))&((dec&_net_5)&_net_8)))|((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))&((dec&_net_5)&_net_7)))|(((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))|((dec&_net_5)&_net_7))&((dec&_net_5)&_net_6)))|((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))|((dec&_net_5)&_net_7))|((dec&_net_5)&_net_6))&(dec&_net_4))))
 begin $display("Warning: assign collision(riscv_core:imm12) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(riscv_core:imm12) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock)
  begin

// synthesis translate_off
// synopsys translate_off
if ((((dec&_net_31)&(dec&_net_12))|(((dec&_net_31)|(dec&_net_12))&(dec&_net_3))))   imm <= 20'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((dec&_net_31))
      imm <= (inst[31:12]);
else if ((dec&_net_12))
      imm <= (inst[31:12]);
else if ((dec&_net_3))
      imm <= ({(inst[31]),(inst[19:12]),(inst[20]),(inst[30:21])});
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((dec&_net_31)|(dec&_net_12))|(dec&_net_3))==1'b1) ||
 ((((dec&_net_31)|(dec&_net_12))|(dec&_net_3))==1'b0) ) begin
 if ((((dec&_net_31)&(dec&_net_12))|(((dec&_net_31)|(dec&_net_12))&(dec&_net_3))))
 begin $display("Warning: assign collision(riscv_core:imm) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(riscv_core:imm) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock)
  begin

// synthesis translate_off
// synopsys translate_off
if ((((((((((((((((((((((((((((((((((((dec&_net_39)&_net_44)&((dec&_net_39)&_net_43))|((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))&((dec&_net_39)&_net_42)))|(((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))&((dec&_net_39)&_net_41)))|((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))&((dec&_net_39)&_net_40)))|(((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))&((dec&_net_32)&_net_38)))|((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))&((dec&_net_32)&_net_37)))|(((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))&((dec&_net_32)&_net_36)))|((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))&((dec&_net_32)&_net_35)))|(((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))&((dec&_net_32)&_net_34)))|((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))&((dec&_net_32)&_net_33)))|(((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))&(dec&_net_31)))|((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))&((dec&_net_27)&_net_30)))|(((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))&((dec&_net_27)&_net_29)))|((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))&((dec&_net_27)&_net_28)))|(((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))&((((dec&_net_13)&_net_14)&_net_24)&_net_26)))|((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))&((((dec&_net_13)&_net_14)&_net_24)&_net_25)))|(((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))&(((dec&_net_13)&_net_14)&_net_23)))|((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))&(((dec&_net_13)&_net_14)&_net_22)))|(((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))&(((dec&_net_13)&_net_14)&_net_21)))|((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))&(((dec&_net_13)&_net_14)&_net_20)))|(((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))&((((dec&_net_13)&_net_14)&_net_17)&_net_19)))|((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))&((((dec&_net_13)&_net_14)&_net_17)&_net_18)))|(((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))&(((dec&_net_13)&_net_14)&_net_16)))|((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))&(((dec&_net_13)&_net_14)&_net_15)))|(((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))&(dec&_net_12)))|((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|(dec&_net_12))&((dec&_net_5)&_net_11)))|(((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|(dec&_net_12))|((dec&_net_5)&_net_11))&((dec&_net_5)&_net_10)))|((((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|(dec&_net_12))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))&((dec&_net_5)&_net_9)))|(((((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|(dec&_net_12))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))&((dec&_net_5)&_net_8)))|((((((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|(dec&_net_12))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))&((dec&_net_5)&_net_7)))|(((((((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|(dec&_net_12))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))|((dec&_net_5)&_net_7))&((dec&_net_5)&_net_6)))|((((((((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|(dec&_net_12))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))|((dec&_net_5)&_net_7))|((dec&_net_5)&_net_6))&(dec&_net_4)))|(((((((((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|(dec&_net_12))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))|((dec&_net_5)&_net_7))|((dec&_net_5)&_net_6))|(dec&_net_4))&(dec&_net_3))))   order <= 8'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (((dec&_net_39)&_net_44))
      order <= 8'b01010100;
else if (((dec&_net_39)&_net_43))
      order <= 8'b01010110;
else if (((dec&_net_39)&_net_42))
      order <= 8'b01011010;
else if (((dec&_net_39)&_net_41))
      order <= 8'b01010101;
else if (((dec&_net_39)&_net_40))
      order <= 8'b01010111;
else if (((dec&_net_32)&_net_38))
      order <= 8'b00000001;
else if (((dec&_net_32)&_net_37))
      order <= 8'b01101001;
else if (((dec&_net_32)&_net_36))
      order <= 8'b01101010;
else if (((dec&_net_32)&_net_35))
      order <= 8'b01110011;
else if (((dec&_net_32)&_net_34))
      order <= 8'b01100000;
else if (((dec&_net_32)&_net_33))
      order <= 8'b00001100;
else if ((dec&_net_31))
      order <= 8'b00001101;
else if (((dec&_net_27)&_net_30))
      order <= 8'b01100011;
else if (((dec&_net_27)&_net_29))
      order <= 8'b01100101;
else if (((dec&_net_27)&_net_28))
      order <= 8'b01110001;
else if (((((dec&_net_13)&_net_14)&_net_24)&_net_26))
      order <= 8'b00000000;
else if (((((dec&_net_13)&_net_14)&_net_24)&_net_25))
      order <= 8'b01110000;
else if ((((dec&_net_13)&_net_14)&_net_23))
      order <= 8'b01100110;
else if ((((dec&_net_13)&_net_14)&_net_22))
      order <= 8'b01101000;
else if ((((dec&_net_13)&_net_14)&_net_21))
      order <= 8'b01101011;
else if ((((dec&_net_13)&_net_14)&_net_20))
      order <= 8'b01110010;
else if (((((dec&_net_13)&_net_14)&_net_17)&_net_19))
      order <= 8'b01101110;
else if (((((dec&_net_13)&_net_14)&_net_17)&_net_18))
      order <= 8'b01101100;
else if ((((dec&_net_13)&_net_14)&_net_16))
      order <= 8'b01011111;
else if ((((dec&_net_13)&_net_14)&_net_15))
      order <= 8'b00001011;
else if ((dec&_net_12))
      order <= 8'b01011001;
else if (((dec&_net_5)&_net_11))
      order <= 8'b00001110;
else if (((dec&_net_5)&_net_10))
      order <= 8'b00010011;
else if (((dec&_net_5)&_net_9))
      order <= 8'b00010001;
else if (((dec&_net_5)&_net_8))
      order <= 8'b00001111;
else if (((dec&_net_5)&_net_7))
      order <= 8'b00010010;
else if (((dec&_net_5)&_net_6))
      order <= 8'b00010000;
else if ((dec&_net_4))
      order <= 8'b01010011;
else if ((dec&_net_3))
      order <= 8'b01010010;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((((((((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|(dec&_net_12))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))|((dec&_net_5)&_net_7))|((dec&_net_5)&_net_6))|(dec&_net_4))|(dec&_net_3))==1'b1) ||
 ((((((((((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|(dec&_net_12))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))|((dec&_net_5)&_net_7))|((dec&_net_5)&_net_6))|(dec&_net_4))|(dec&_net_3))==1'b0) ) begin
 if ((((((((((((((((((((((((((((((((((((dec&_net_39)&_net_44)&((dec&_net_39)&_net_43))|((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))&((dec&_net_39)&_net_42)))|(((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))&((dec&_net_39)&_net_41)))|((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))&((dec&_net_39)&_net_40)))|(((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))&((dec&_net_32)&_net_38)))|((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))&((dec&_net_32)&_net_37)))|(((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))&((dec&_net_32)&_net_36)))|((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))&((dec&_net_32)&_net_35)))|(((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))&((dec&_net_32)&_net_34)))|((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))&((dec&_net_32)&_net_33)))|(((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))&(dec&_net_31)))|((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))&((dec&_net_27)&_net_30)))|(((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))&((dec&_net_27)&_net_29)))|((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))&((dec&_net_27)&_net_28)))|(((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))&((((dec&_net_13)&_net_14)&_net_24)&_net_26)))|((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))&((((dec&_net_13)&_net_14)&_net_24)&_net_25)))|(((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))&(((dec&_net_13)&_net_14)&_net_23)))|((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))&(((dec&_net_13)&_net_14)&_net_22)))|(((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))&(((dec&_net_13)&_net_14)&_net_21)))|((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))&(((dec&_net_13)&_net_14)&_net_20)))|(((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))&((((dec&_net_13)&_net_14)&_net_17)&_net_19)))|((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))&((((dec&_net_13)&_net_14)&_net_17)&_net_18)))|(((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))&(((dec&_net_13)&_net_14)&_net_16)))|((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))&(((dec&_net_13)&_net_14)&_net_15)))|(((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))&(dec&_net_12)))|((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|(dec&_net_12))&((dec&_net_5)&_net_11)))|(((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|(dec&_net_12))|((dec&_net_5)&_net_11))&((dec&_net_5)&_net_10)))|((((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|(dec&_net_12))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))&((dec&_net_5)&_net_9)))|(((((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|(dec&_net_12))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))&((dec&_net_5)&_net_8)))|((((((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|(dec&_net_12))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))&((dec&_net_5)&_net_7)))|(((((((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|(dec&_net_12))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))|((dec&_net_5)&_net_7))&((dec&_net_5)&_net_6)))|((((((((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|(dec&_net_12))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))|((dec&_net_5)&_net_7))|((dec&_net_5)&_net_6))&(dec&_net_4)))|(((((((((((((((((((((((((((((((((((dec&_net_39)&_net_44)|((dec&_net_39)&_net_43))|((dec&_net_39)&_net_42))|((dec&_net_39)&_net_41))|((dec&_net_39)&_net_40))|((dec&_net_32)&_net_38))|((dec&_net_32)&_net_37))|((dec&_net_32)&_net_36))|((dec&_net_32)&_net_35))|((dec&_net_32)&_net_34))|((dec&_net_32)&_net_33))|(dec&_net_31))|((dec&_net_27)&_net_30))|((dec&_net_27)&_net_29))|((dec&_net_27)&_net_28))|((((dec&_net_13)&_net_14)&_net_24)&_net_26))|((((dec&_net_13)&_net_14)&_net_24)&_net_25))|(((dec&_net_13)&_net_14)&_net_23))|(((dec&_net_13)&_net_14)&_net_22))|(((dec&_net_13)&_net_14)&_net_21))|(((dec&_net_13)&_net_14)&_net_20))|((((dec&_net_13)&_net_14)&_net_17)&_net_19))|((((dec&_net_13)&_net_14)&_net_17)&_net_18))|(((dec&_net_13)&_net_14)&_net_16))|(((dec&_net_13)&_net_14)&_net_15))|(dec&_net_12))|((dec&_net_5)&_net_11))|((dec&_net_5)&_net_10))|((dec&_net_5)&_net_9))|((dec&_net_5)&_net_8))|((dec&_net_5)&_net_7))|((dec&_net_5)&_net_6))|(dec&_net_4))&(dec&_net_3))))
 begin $display("Warning: assign collision(riscv_core:order) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(riscv_core:order) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     ift <= 1'b0;
else if ((_proc_ift_set|_proc_ift_reset))
      ift <= _proc_ift_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     dec <= 1'b0;
else if ((_proc_dec_set|_proc_dec_reset))
      dec <= _proc_dec_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     exer <= 1'b0;
else if ((_proc_exer_set|_proc_exer_reset))
      exer <= _proc_exer_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     exei_1 <= 1'b0;
else if ((_proc_exei_1_set|_proc_exei_1_reset))
      exei_1 <= _proc_exei_1_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     exei_2 <= 1'b0;
else if ((_proc_exei_2_set|_proc_exei_2_reset))
      exei_2 <= _proc_exei_2_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     exes <= 1'b0;
else if ((_proc_exes_set|_proc_exes_reset))
      exes <= _proc_exes_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     exeb <= 1'b0;
else if ((_proc_exeb_set|_proc_exeb_reset))
      exeb <= _proc_exeb_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     exeu <= 1'b0;
else if ((_proc_exeu_set|_proc_exeu_reset))
      exeu <= _proc_exeu_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     exej <= 1'b0;
else if ((_proc_exej_set|_proc_exej_reset))
      exej <= _proc_exej_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_1 <= 1'b0;
else if ((_proc_ift_reset|(_reg_2|(_reg_1|_reg_2))))
      _reg_1 <= (_reg_2&(~_proc_ift_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_2 <= 1'b0;
else if (((_proc_ift_set|_proc_ift_reset)|_reg_2))
      _reg_2 <= _proc_ift_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_93 <= 1'b0;
else if ((_proc_exei_1_reset|(_reg_94|(_reg_93|_reg_94))))
      _reg_93 <= (_reg_94&(~_proc_exei_1_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_94 <= 1'b0;
else if (((_proc_exei_1_set|_proc_exei_1_reset)|_reg_94))
      _reg_94 <= _proc_exei_1_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_114 <= 1'b0;
else if ((_proc_exei_2_reset|(_reg_115|(_reg_114|_reg_115))))
      _reg_114 <= (_reg_115&(~_proc_exei_2_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_115 <= 1'b0;
else if (((_proc_exei_2_set|_proc_exei_2_reset)|_reg_115))
      _reg_115 <= _proc_exei_2_set;
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_128 <= 1'b0;
else if ((_proc_exes_reset|(_reg_129|(_reg_128|_reg_129))))
      _reg_128 <= (_reg_129&(~_proc_exes_reset));
end
always @(posedge m_clock or posedge p_reset)
  begin
if (p_reset)
     _reg_129 <= 1'b0;
else if (((_proc_exes_set|_proc_exes_reset)|_reg_129))
      _reg_129 <= _proc_exes_set;
end
endmodule
/*
 Produced by NSL Core(version=20151214), IP ARCH, Inc. Thu Jan 25 12:01:44 2018
 Licensed to :EVALUATION USER
*/
