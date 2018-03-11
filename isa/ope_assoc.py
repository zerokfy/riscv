l_ope = {
    '00000':    'LOAD',
    '00011':    'MISC-MEM',
    '00100':    'OP-IMM',
    '00101':    'AUIPC',
    '01000':    'STORE',
    '01100':    'OP',
    '01101':    'LUI',
    '11000':    'BRANCH',
    '11001':    'JALR',
    '11011':    'JAL',
    '11100':    'SYSTEM'
}

l_type = {
    'LOAD':     'I',
    'MISC-MEM': 'FENCE',
    'OP-IMM':   'I',
    'AUIPC':    'U',
    'STORE':    'S',
    'OP':       'R',
    'LUI':      'U',
    'BRANCH':   'B',
    'JALR':     'R',
    'JAL':      'J',
    'SYSTEM':   'I'
}

b_assoc = {
      '000':    'BEQ'
    , '001':    'BNE'
    , '100':    'BLT'
    , '101':    'BGE'
    , '110':    'BLTU'
    , '111':    'BGEU'
}

l_assoc = {
      '000':    'LB'
    , '001':    'LH'
    , '010':    'LW'
    , '100':    'LBU'
    , '101':    'LHU'
}

s_assoc = {
      '000':    'SB'
    , '001':    'SH'
    , '010':    'SW'
}

sh_assoc = {
      '0000000' 'SRLI'
    , '0100000' 'SRAI'
}

ari_assoc = {
      '0000000':    'ADD'
    , '0100000':    'SUB'
}

rsh_assoc = {
      '0000000':    'SRL'
    , '0100000':    'SRA'
}

f_assoc = {
      '000':    'FENCE'
    , '001':    'FENCE_I'
}

e_assoc = {
      '0':  'ECALL'
    , '1':  'EBREAK'
}

sys_assoc = {
      '000':    e_assoc
    , '001':    'CSRRW'
    , '010':    'CSRRS'
    , '011':    'CSRRC'
    , '101':    'CSRRWI'
    , '110':    'CSRRSI'
    , '111':    'CSRRCI'
}

r_assoc = {
      '000':    ari_assoc
    , '001':    'SLL'
    , '010':    'SLT'
    , '011':    'SLTU'
    , '100':    'XOR'
    , '101':    rsh_assoc
    , '110':    'OR'
    , '111':    'AND'
}

i_assoc = {
      '000':    'ADDI'
    , '010':    'SLTI'
    , '011':    'SLTIU'
    , '100':    'XORI'
    , '110':    'ORI'
    , '111':    'ANDI'
    , '001':    'SLLI'
    , '101':    sh_assoc
}

ope_assoc = {
      '01101':  'LUI'
    , '00101':  'AUIPC'
    , '11011':  'JAL'
    , '11001':  'JALR'
    , '11000':  b_assoc
    , '00000':  l_assoc
    , '01000':  s_assoc
    , '00100':  i_assoc
    , '01100':  r_assoc
    , '00011':  f_assoc
    , '11100':  sys_assoc
}

