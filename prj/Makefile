SRC=$(shell find ../src/rtl -iname '*.v')

all :
	vmap riscv_top .
	vlog ../ip/CodeROM/CodeROM.v ../ip/OnChipRAM/OnChipRAM.v \
     -f ${SRC} \
     -work riscv_top \
     -incr \
     +incdir+include_dir \
     -v altera_mf altera_mf_ver \
     -libext+.v \
     -y /opt/intelFPGA_lite/17.1/modelsim_ase/altera/verilog/altera_mf /opt/intelFPGA_lite/17.1/modelsim_ase/altera/vhdl/altera_mf/

