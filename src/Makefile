NSLS := $(wildcard ./*.nsl)
VERI := $(NSLS:%.nsl=%.v)

.SUFFIXES: .v .nsl

all : $(VERI)

%.v : %.nsl
	nsl2vl $<

clean :
	rm -f *.v
