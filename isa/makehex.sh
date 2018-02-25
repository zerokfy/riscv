#!/bin/bash

riscv32-unknown-elf-objcopy -O binary ${1} ${1}.bin
hexdump -v -e '1/4 "%08X" "\n"' ${1}.bin > ${1}.hex

cat template.mif > ${1}.mif
n=0
for i in `cat ${1}.hex`
do
    NUM=`printf %X ${n}`
    echo -n "    " >> ${1}.mif
    echo "${NUM} : ${i};" >> ${1}.mif
    n=`expr ${n} + 1`
done

STR=`printf %X ${n}`
echo -n "[" >> ${1}.mif
echo -n ${STR} >> ${1}.mif
echo -n "..3FF" >> ${1}.mif
echo    "] : 0000000;" >> ${1}.mif
echo    "END;" >> ${1}.mif

cat ${1}.mif > ../ip/CodeROM/riscv_top.mif
