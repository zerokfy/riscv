#!/bin/python3

import sys
import ope_assoc
import pdb

def read_hex(line):

    l_bin = format(int(line.strip(),16), 'b').zfill(32)
    l_str = list(l_bin)
    l_str.reverse()

    op_bin = ''.join(l_str[6:1:-1])
    group  = ope_assoc.l_ope[op_bin]
    typ    = ope_assoc.l_type[group]
    l_dec  = ope_assoc.make_assoc(l_str)
    deced  = l_dec[typ]
    order  = seek_op(ope_assoc.ope_assoc, [op_bin, deced['f3'], deced['f7'], l_str[20]])

    if(typ == 'FENCE'):
        l_ret = [order, '{:X}'.format((lambda x: int(x, 2))(deced['rd']  )) if deced['rd']   != '' else '',
                        '{:X}'.format((lambda x: int(x, 2))(deced['rs1'] )) if deced['rs1']  != '' else '',
                        '{:X}'.format((lambda x: int(x, 2))(deced['rs2'] )) if deced['rs2']  != '' else '',
                        '{:X}'.format((lambda x: int(x, 2))(deced['succ'])) if deced['succ'] != '' else '',
                        '{:X}'.format((lambda x: int(x, 2))(deced['pred'])) if deced['pred'] != '' else '']
        l_ret.remove('')
        l_ret.append('\n')
        return ' '.join(l_ret)
    else:
        l_ret = [order, '{:X}'.format((lambda x: int(x, 2))(deced['rd']  )) if deced['rd']   != '' else '',
                        '{:X}'.format((lambda x: int(x, 2))(deced['rs1'] )) if deced['rs1']  != '' else '',
                        '{:X}'.format((lambda x: int(x, 2))(deced['rs2'] )) if deced['rs2']  != '' else '',
                        '{:X}'.format((lambda x: int(x, 2))(deced['imm'] )) if deced['imm']  != '' else '']
        l_ret.remove('')
        l_ret.append('\n')
        return ' '.join(l_ret)

def seek_op(dic, key_lst):
    if(key_lst[0] == ''):
        return seek_op(dic, key_lst[1:])
    else:
        val = dic[key_lst[0]]
    if(isinstance(val, dict)):
        return seek_op(val, key_lst[1:])
    else:
        return val

r_fp  = open(sys.argv[1],  'r')
fout  = sys.argv[1].split('.')
w_fp  = open(fout[0]+'.dump', 'w')

l_hex = r_fp.readlines()
ret_map = list(map(read_hex, l_hex))
#print(ret_map)
#pdb.set_trace()
w_fp.writelines(ret_map)
w_fp.close()

