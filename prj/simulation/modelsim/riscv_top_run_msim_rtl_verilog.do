transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/zerokfy/work/repo/riscv/src/rtl {/home/zerokfy/work/repo/riscv/src/rtl/rv32i_core.v}
vlog -vlog01compat -work work +incdir+/home/zerokfy/work/repo/riscv/src/rtl {/home/zerokfy/work/repo/riscv/src/rtl/rom_wrap.v}
vlog -vlog01compat -work work +incdir+/home/zerokfy/work/repo/riscv/src/rtl {/home/zerokfy/work/repo/riscv/src/rtl/riscv_top.v}
vlog -vlog01compat -work work +incdir+/home/zerokfy/work/repo/riscv/src/rtl {/home/zerokfy/work/repo/riscv/src/rtl/ram_wrap.v}
vlog -vlog01compat -work work +incdir+/home/zerokfy/work/repo/riscv/src/rtl {/home/zerokfy/work/repo/riscv/src/rtl/gen_gr.v}
vlog -vlog01compat -work work +incdir+/home/zerokfy/work/repo/riscv/ip/RAM {/home/zerokfy/work/repo/riscv/ip/RAM/data_ram.v}
vlog -vlog01compat -work work +incdir+/home/zerokfy/work/repo/riscv/ip/ROM {/home/zerokfy/work/repo/riscv/ip/ROM/code_rom.v}

