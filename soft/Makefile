PATH=/opt/riscv/bin
CC=${PATH}/riscv32-unknown-elf-gcc
OBJCOPY=${PATH}/riscv32-unknown-elf-objcopy
OBJDUMP=${PATH}/riscv32-unknown-elf-objdump

CCOPT=-O0
ASOPT=
LDOPT=-Wl,--script=link.ld

SRC=main.c

all:
	${CC} 		${CCOPT} ${ASOPT} ${LDOPT} ${SRC}
	${OBJCOPY} 	-O binary a.out a.bin
	${OBJCOPY} 	-d a.out > a.dump
	hexdump -v -e '1/4 "%08X" "\n"' a.bin > a.hex

