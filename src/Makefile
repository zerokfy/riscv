NSLS := $(wildcard ./*.nsl)
VERI := $(NSLS:%.nsl=%.v)

all : $(VERI)


sim_top.v : sim_top.nsl
	nsl2vl -verisim2 -target sim_top -default_nettype wire -f $< -o rtl/$@

%.v : %.nsl
	nsl2vl -O0 -f $< -o rtl/$@

clean :
	rm -f *.v rtl/*.v
