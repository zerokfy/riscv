#!/bin/python3

import sys
import ope_assoc
import pdb


def read_hex(line):

    l_bin = format(int(line.strip(),16), 'b').zfill(32)
    l_str = list(l_bin)
    l_str.reverse()

    #pdb.set_trace()
    op    = ope_assoc.l_ope[''.join(l_str[6:1:-1])]
    typ   = ope_assoc.l_type[op]
    deced = ope_assoc.l_dec[typ]
    order = seek_op(ope_assoc, [op, deced[3], deced[4], l_str[20]])

    if(typ == 'FENCE'):
        return [order, deced[2], deced[0], deced[1], deced[5], deced[6]]
    else:
        return [order, deced[2], deced[0], deced[1], deced[5]]

def seek_op(dic, key_lst):
    val = dic(key_lst[0])
    if(type(val) == 'dict'):
        seek_op(val, key_lst[1:])
    else:
        return val

r_fp  = open(sys.argv[1], 'r')
w_fp  = open(sys.argv[1]+'.dump', 'w')

l_hex = r_fp.readlines()
ret_map = list(map(read_hex, l_hex))
print(ret_map)
w_fp.write(str(ret_map))
w_fp.close()

l_dec = {
    'R': [
          str(l_str[19:15])     #rs1
        , str(l_str[24:20])     #rs2
        , str(l_str[11:7])      #rd
        , str(l_str[14:12])     #f3
        , str(l_str[31:25])     #f7
        , ''                    #imm
    ],
    'I': [
          str(l_str[19:15])     #rs1
        , ''                    #rs2
        , str(l_str[11:7])      #rd
        , str(l_str[14:12])     #f3
        , ''                    #f7
        , str(l_str[31:20])     #imm
    ],
    'S': [
          str(l_str[19:15])     #rs1
        , str(l_str[24:20])     #rs2
        , ''                    #rd
        , str(l_str[14:12])     #f3
        , ''                    #f7
        , str(l_str[31:25]) +
          str(l_str[11:7])      #imm
    ],
    'B': [
          str(l_str[19:15])     #rs1
        , str(l_str[24:20])     #rs2
        , ''                    #rd
        , str(l_str[14:12])     #f3
        , ''                    #f7
        , str(l_str[31])    +
          str(l_str[7])     +
          str(l_str[30:25]) +
          str(l_str[11:8])      #imm
    ],
    'U': [
          ''                    #rs1
        , ''                    #rs2
        , str(l_str[11:7])      #rd
        , ''                    #f3
        , ''                    #f7
        , str(l_str[31:12])     #imm
    ],
    'J': [
          ''                    #rs1
        , ''                    #rs2
        , str(l_str[11:7])      #rd
        , ''                    #f3
        , ''                    #f7
        , str(l_str[31])    +
          str(l_str[19:12]) +
          str(l_str[20])    +
          str(l_str[30:21])     #imm
    ],
    'FENCE': [
          ''                    #rs1
        , ''                    #rs2
        , ''                    #rd
        , str(l_str[14:12])     #f3
        , ''                    #f7
        , str(l_str[23:20])     #succ
        , str(l_str[27:24])     #pred
    ]
}

