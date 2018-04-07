NSLS := $(wildcard ./*.nsl)
VERI := $(NSLS:%.nsl=%.v)

all : $(VERI)


sim_top.v : sim_top.nsl
	nsl2vl -verisim2 -target sim_top -default_nettype wire -reset_name rst_n -neg_res -f $< -o rtl/$@

riscv_top.v : riscv_top.nsl
	nsl2vl -O0 -canreadoutput -clock_name clk_50M -reset_name sysrst_n -neg_res -f $< -o rtl/$@

%.v : %.nsl
	nsl2vl -O0 -canreadoutput -clock_name clk_20M -reset_name rst_n -neg_res -f $< -o rtl/$@

clean :
	rm -f *.v rtl/*.v
