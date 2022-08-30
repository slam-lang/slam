BITS 64
segment .text
print:
    mov r10, rsp
    sub rsp, 8
    mov [rsp], al
    mov edi, 1
    mov rsi, rsp
    mov edx, 1
    mov eax, 1
    syscall
    mov rsp, r10
    ret
addr_0: ;const
addr_1: ;proc
    ; - proc tmpidx 0 1
addr_2: ;var
    mov rax, mem
    add rax, 0
    push rax
addr_3: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_4: ;end
addr_5: ;proc
    ; - proc inctmpidx 0 0
addr_6: ;(tmpidx)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_7
    jmp addr_2
addr_7: ;(tmpidx)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_8
    jmp addr_2
addr_8: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_9: ;1
    mov qword rax, 1
    push rax
addr_10: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_11: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_12: ;disc
    pop rax
addr_13: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_14: ;end
addr_15: ;proc
    ; - proc gettmp 0 1
addr_16: ;var
    mov rax, mem
    add rax, 8
    push rax
addr_17: ;30
    mov qword rax, 30
    push rax
addr_18: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_19: ;(tmpidx)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_20
    jmp addr_2
addr_20: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_21: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_22: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_23: ;end
addr_24: ;proc
    ; - proc strint 1 1
addr_25: ;do
addr_26: ;10
    mov qword rax, 10
    push rax
addr_27: ;/
    xor rdx, rdx
    pop rbx
    pop rax
    idiv rbx
    push rax
    push rdx
addr_28: ;48
    mov qword rax, 48
    push rax
addr_29: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_30: ;(gettmp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_31
    jmp addr_16
addr_31: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_32: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_33: ;disc
    pop rax
addr_34: ;(inctmpidx)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_35
    jmp addr_6
addr_35: ;copy
    pop rax
    push rax
    push rax
addr_36: ;0
    mov qword rax, 0
    push rax
addr_37: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_38: ;end
    pop rbx
    test rbx, rbx
    jnz addr_25
addr_39: ;disc
    pop rax
addr_40: ;(gettmp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_41
    jmp addr_16
addr_41: ;1
    mov qword rax, 1
    push rax
addr_42: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_43: ;(tmpidx)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_44
    jmp addr_2
addr_44: ;0
    mov qword rax, 0
    push rax
addr_45: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_46: ;disc
    pop rax
addr_47: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_48: ;end
addr_49: ;proc
    ; - proc print 1 0
addr_50: ;copy
    pop rax
    push rax
    push rax
addr_51: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_52: ;0
    mov qword rax, 0
    push rax
addr_53: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_54: ;if
    pop rbx
    test rbx, rbx
    jz addr_56
addr_55: ;[disc ret]
addr_55_0: ;disc
    pop rax
addr_55_1: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_55_2: ; 
addr_56: ;do
addr_57: ;copy
    pop rax
    push rax
    push rax
addr_58: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_59: ;dump
    pop rax
    call print
addr_60: ;1
    mov qword rax, 1
    push rax
addr_61: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_62: ;copy
    pop rax
    push rax
    push rax
addr_63: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_64: ;255
    mov qword rax, 255
    push rax
addr_65: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_66: ;0
    mov qword rax, 0
    push rax
addr_67: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_68: ;end
    pop rbx
    test rbx, rbx
    jnz addr_56
addr_69: ;disc
    pop rax
addr_70: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_71: ;end
addr_72: ;proc
    ; - proc endl 0 0
addr_73: ;10
    mov qword rax, 10
    push rax
addr_74: ;dump
    pop rax
    call print
addr_75: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_76: ;end
addr_77: ;proc
    ; - proc println 1 0
addr_78: ;(print)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_79
    jmp addr_50
addr_79: ;(endl)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_80
    jmp addr_73
addr_80: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_81: ;end
addr_82: ;proc
    ; - proc printint 1 0
addr_83: ;do
addr_84: ;10
    mov qword rax, 10
    push rax
addr_85: ;/
    xor rdx, rdx
    pop rbx
    pop rax
    idiv rbx
    push rax
    push rdx
addr_86: ;48
    mov qword rax, 48
    push rax
addr_87: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_88: ;(gettmp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_89
    jmp addr_16
addr_89: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_90: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_91: ;disc
    pop rax
addr_92: ;(inctmpidx)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_93
    jmp addr_6
addr_93: ;copy
    pop rax
    push rax
    push rax
addr_94: ;0
    mov qword rax, 0
    push rax
addr_95: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_96: ;end
    pop rbx
    test rbx, rbx
    jnz addr_83
addr_97: ;disc
    pop rax
addr_98: ;(gettmp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_99
    jmp addr_16
addr_99: ;1
    mov qword rax, 1
    push rax
addr_100: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_101: ;(print)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_102
    jmp addr_50
addr_102: ;(endl)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_103
    jmp addr_73
addr_103: ;(tmpidx)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_104
    jmp addr_2
addr_104: ;0
    mov qword rax, 0
    push rax
addr_105: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_106: ;disc
    pop rax
addr_107: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_108: ;end
addr_109: ;proc
    ; - proc assert 2 0
addr_110: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_111: ;if
    pop rbx
    test rbx, rbx
    jz addr_113
addr_112: ;[disc ret]
addr_112_0: ;disc
    pop rax
addr_112_1: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_112_2: ; 
addr_113: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_114
    jmp addr_78
addr_114: ;quit
    jmp quit
addr_115: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_116: ;end
addr_117: ;proc
    ; - proc args 1 1
addr_118: ;copy
    pop rax
    push rax
    push rax
addr_119: ;argc
    mov rax, [args_ptr]
    mov rax, [rax]
    push rax
addr_120: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_121: ;0
    mov qword rax, 0
    push rax
addr_122: ;<
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_123: ;0
    mov qword rax, 0
    push rax
addr_124: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_125: ;if
    pop rbx
    test rbx, rbx
    jz addr_127
addr_126: ;[copy (strint) (print)]
addr_126_0: ;copy
    pop rax
    push rax
    push rax
addr_126_1: ;(strint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_127
    jmp addr_25
addr_126_2: ;(print)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_127
    jmp addr_50
addr_126_3: ; 
addr_127: ;copy
    pop rax
    push rax
    push rax
addr_128: ;argc
    mov rax, [args_ptr]
    mov rax, [rax]
    push rax
addr_129: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_130: ;0
    mov qword rax, 0
    push rax
addr_131: ;<
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_132: ;"Bad arg"
    push str_0
addr_133: ;(assert)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_134
    jmp addr_110
addr_134: ;8
    mov qword rax, 8
    push rax
addr_135: ;*
    pop rax
    pop rbx
    imul rax, rbx
    push rax
addr_136: ;argv
    mov rax, [args_ptr]
    add rax, 8
    push rax
addr_137: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_138: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_139: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_140: ;end
addr_141: ;proc
    ; - proc strcpy 2 2
addr_142: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_143: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_144: ;do
addr_145: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_146: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_147: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_148: ;255
    mov qword rax, 255
    push rax
addr_149: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_150: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_151: ;disc
    pop rax
addr_152: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_153: ;1
    mov qword rax, 1
    push rax
addr_154: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_155: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_156: ;1
    mov qword rax, 1
    push rax
addr_157: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_158: ;copy
    pop rax
    push rax
    push rax
addr_159: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_160: ;255
    mov qword rax, 255
    push rax
addr_161: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_162: ;0
    mov qword rax, 0
    push rax
addr_163: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_164: ;end
    pop rbx
    test rbx, rbx
    jnz addr_144
addr_165: ;0
    mov qword rax, 0
    push rax
addr_166: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_167: ;disc
    pop rax
addr_168: ;disc
    pop rax
addr_169: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_170: ;end
addr_171: ;proc
    ; - proc streq 2 1
addr_172: ;1
    mov qword rax, 1
    push rax
addr_173: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_174: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_175: ;1
    mov qword rax, 1
    push rax
addr_176: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_177: ;do
addr_178: ;1
    mov qword rax, 1
    push rax
addr_179: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_180: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_181: ;1
    mov qword rax, 1
    push rax
addr_182: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_183: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_184: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_185: ;255
    mov qword rax, 255
    push rax
addr_186: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_187: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_188: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_189: ;255
    mov qword rax, 255
    push rax
addr_190: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_191: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_192: ;0
    mov qword rax, 0
    push rax
addr_193: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_194: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_195: ;0
    mov qword rax, 0
    push rax
addr_196: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_197: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_198: ;if
    pop rbx
    test rbx, rbx
    jz addr_200
addr_199: ;[       disc       disc       disc       disc       1       ret       ]
addr_199_0: ;disc
    pop rax
addr_199_1: ;disc
    pop rax
addr_199_2: ;disc
    pop rax
addr_199_3: ;disc
    pop rax
addr_199_4: ;1
    mov qword rax, 1
    push rax
addr_199_5: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_199_6: ; 
addr_200: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_201: ;0
    mov qword rax, 0
    push rax
addr_202: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_203: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_204: ;0
    mov qword rax, 0
    push rax
addr_205: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_206: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_207: ;if
    pop rbx
    test rbx, rbx
    jz addr_209
addr_208: ;[       disc       disc       disc       disc       0       ret     ]
addr_208_0: ;disc
    pop rax
addr_208_1: ;disc
    pop rax
addr_208_2: ;disc
    pop rax
addr_208_3: ;disc
    pop rax
addr_208_4: ;0
    mov qword rax, 0
    push rax
addr_208_5: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_208_6: ; 
addr_209: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_210: ;end
    pop rbx
    test rbx, rbx
    jnz addr_177
addr_211: ;disc
    pop rax
addr_212: ;disc
    pop rax
addr_213: ;0
    mov qword rax, 0
    push rax
addr_214: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_215: ;end
addr_216: ;proc
    ; - proc open 4 1
addr_217: ;257
    mov qword rax, 257
    push rax
addr_218: ;sys4
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    syscall
    push rax
addr_219: ;copy
    pop rax
    push rax
    push rax
addr_220: ;0
    mov qword rax, 0
    push rax
addr_221: ;<
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_222: ;1
    mov qword rax, 1
    push rax
addr_223: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_224: ;"Error opening file"
    push str_1
addr_225: ;(assert)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_226
    jmp addr_110
addr_226: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_227: ;end
addr_228: ;proc
    ; - proc close 1 0
addr_229: ;3
    mov qword rax, 3
    push rax
addr_230: ;sys1
    pop rax
    pop rdi
    syscall
    push rax
addr_231: ;0
    mov qword rax, 0
    push rax
addr_232: ;<
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_233: ;1
    mov qword rax, 1
    push rax
addr_234: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_235: ;"Error closing file"
    push str_2
addr_236: ;(assert)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_237
    jmp addr_110
addr_237: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_238: ;end
addr_239: ;proc
    ; - proc write 3 0
addr_240: ;1
    mov qword rax, 1
    push rax
addr_241: ;sys3
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_242: ;0
    mov qword rax, 0
    push rax
addr_243: ;<
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_244: ;1
    mov qword rax, 1
    push rax
addr_245: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_246: ;"Error writing file"
    push str_3
addr_247: ;(assert)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_248
    jmp addr_110
addr_248: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_249: ;end
addr_250: ;proc
    ; - proc read 3 1
addr_251: ;0
    mov qword rax, 0
    push rax
addr_252: ;sys3
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_253: ;copy
    pop rax
    push rax
    push rax
addr_254: ;0
    mov qword rax, 0
    push rax
addr_255: ;<
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_256: ;1
    mov qword rax, 1
    push rax
addr_257: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_258: ;"Error reading file"
    push str_4
addr_259: ;(assert)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_260
    jmp addr_110
addr_260: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_261: ;end
addr_262: ;proc
    ; - proc printinthex 1 0
addr_263: ;do
addr_264: ;16
    mov qword rax, 16
    push rax
addr_265: ;/
    xor rdx, rdx
    pop rbx
    pop rax
    idiv rbx
    push rax
    push rdx
addr_266: ;copy
    pop rax
    push rax
    push rax
addr_267: ;9
    mov qword rax, 9
    push rax
addr_268: ;>
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_269: ;if
    pop rbx
    test rbx, rbx
    jz addr_271
addr_270: ;[64 +]
addr_270_0: ;64
    mov qword rax, 64
    push rax
addr_270_1: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_270_2: ; 
addr_271: ;copy
    pop rax
    push rax
    push rax
addr_272: ;10
    mov qword rax, 10
    push rax
addr_273: ;<
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_274: ;if
    pop rbx
    test rbx, rbx
    jz addr_276
addr_275: ;[48 +]
addr_275_0: ;48
    mov qword rax, 48
    push rax
addr_275_1: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_275_2: ; 
addr_276: ;(gettmp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_277
    jmp addr_16
addr_277: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_278: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_279: ;disc
    pop rax
addr_280: ;(inctmpidx)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_281
    jmp addr_6
addr_281: ;copy
    pop rax
    push rax
    push rax
addr_282: ;0
    mov qword rax, 0
    push rax
addr_283: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_284: ;end
    pop rbx
    test rbx, rbx
    jnz addr_7
addr_285: ;disc
    pop rax
addr_286: ;(gettmp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_287
    jmp addr_16
addr_287: ;120
    mov qword rax, 120
    push rax
addr_288: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_289: ;disc
    pop rax
addr_290: ;(inctmpidx)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_291
    jmp addr_6
addr_291: ;(gettmp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_292
    jmp addr_16
addr_292: ;48
    mov qword rax, 48
    push rax
addr_293: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_294: ;disc
    pop rax
addr_295: ;(inctmpidx)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_296
    jmp addr_6
addr_296: ;(gettmp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_297
    jmp addr_16
addr_297: ;1
    mov qword rax, 1
    push rax
addr_298: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_299: ;(print)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_300
    jmp addr_50
addr_300: ;(tmpidx)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_301
    jmp addr_2
addr_301: ;0
    mov qword rax, 0
    push rax
addr_302: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_303: ;disc
    pop rax
addr_304: ;(endl)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_305
    jmp addr_73
addr_305: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_306: ;end
addr_307: ;proc
    ; - proc strlen 1 1
addr_308: ;0
    mov qword rax, 0
    push rax
addr_309: ;do
addr_310: ;1
    mov qword rax, 1
    push rax
addr_311: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_312: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_313: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_314: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_315: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_316: ;255
    mov qword rax, 255
    push rax
addr_317: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_318: ;0
    mov qword rax, 0
    push rax
addr_319: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_320: ;end
    pop rbx
    test rbx, rbx
    jnz addr_53
addr_321: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_322: ;disc
    pop rax
addr_323: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_324: ;end
addr_325: ;proc
    ; - proc last 1 1
addr_326: ;1
    mov qword rax, 1
    push rax
addr_327: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_328: ;do
addr_329: ;1
    mov qword rax, 1
    push rax
addr_330: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_331: ;copy
    pop rax
    push rax
    push rax
addr_332: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_333: ;255
    mov qword rax, 255
    push rax
addr_334: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_335: ;0
    mov qword rax, 0
    push rax
addr_336: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_337: ;end
    pop rbx
    test rbx, rbx
    jnz addr_72
addr_338: ;1
    mov qword rax, 1
    push rax
addr_339: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_340: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_341: ;255
    mov qword rax, 255
    push rax
addr_342: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_343: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_344: ;end
addr_345: ;proc
    ; - proc clearbuf 1 1
addr_346: ;copy
    pop rax
    push rax
    push rax
addr_347: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_348: ;255
    mov qword rax, 255
    push rax
addr_349: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_350: ;0
    mov qword rax, 0
    push rax
addr_351: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_352: ;if
    pop rbx
    test rbx, rbx
    jz addr_354
addr_353: ;[ret]
addr_353_0: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_353_1: ; 
addr_354: ;copy
    pop rax
    push rax
    push rax
addr_355: ;do
addr_356: ;copy
    pop rax
    push rax
    push rax
addr_357: ;0
    mov qword rax, 0
    push rax
addr_358: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_359: ;disc
    pop rax
addr_360: ;1
    mov qword rax, 1
    push rax
addr_361: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_362: ;copy
    pop rax
    push rax
    push rax
addr_363: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_364: ;255
    mov qword rax, 255
    push rax
addr_365: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_366: ;end
    pop rbx
    test rbx, rbx
    jnz addr_99
addr_367: ;disc
    pop rax
addr_368: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_369: ;end
addr_370: ;proc
    ; - proc alphanum 1 1
addr_371: ;do
addr_372: ;copy
    pop rax
    push rax
    push rax
addr_373: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_374: ;255
    mov qword rax, 255
    push rax
addr_375: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_376: ;copy
    pop rax
    push rax
    push rax
addr_377: ;48
    mov qword rax, 48
    push rax
addr_378: ;<
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_379: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_380: ;58
    mov qword rax, 58
    push rax
addr_381: ;>
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_382: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_383: ;0
    mov qword rax, 0
    push rax
addr_384: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_385: ;if
    pop rbx
    test rbx, rbx
    jz addr_387
addr_386: ;[disc disc 0 ret]
addr_386_0: ;disc
    pop rax
addr_386_1: ;disc
    pop rax
addr_386_2: ;0
    mov qword rax, 0
    push rax
addr_386_3: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_386_4: ; 
addr_387: ;disc
    pop rax
addr_388: ;1
    mov qword rax, 1
    push rax
addr_389: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_390: ;copy
    pop rax
    push rax
    push rax
addr_391: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_392: ;255
    mov qword rax, 255
    push rax
addr_393: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_394: ;0
    mov qword rax, 0
    push rax
addr_395: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_396: ;end
    pop rbx
    test rbx, rbx
    jnz addr_115
addr_397: ;disc
    pop rax
addr_398: ;1
    mov qword rax, 1
    push rax
addr_399: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_400: ;end
addr_401: ;proc
    ; - proc tonum 1 1
addr_402: ;copy
    pop rax
    push rax
    push rax
addr_403: ;(alphanum)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_404
    jmp addr_371
addr_404: ;0
    mov qword rax, 0
    push rax
addr_405: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_406: ;if
    pop rbx
    test rbx, rbx
    jz addr_408
addr_407: ;[copy (println)]
addr_407_0: ;copy
    pop rax
    push rax
    push rax
addr_407_1: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_408
    jmp addr_78
addr_407_2: ; 
addr_408: ;copy
    pop rax
    push rax
    push rax
addr_409: ;(alphanum)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_410
    jmp addr_371
addr_410: ;"String is not a number"
    push str_5
addr_411: ;(assert)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_412
    jmp addr_110
addr_412: ;0
    mov qword rax, 0
    push rax
addr_413: ;do
addr_414: ;10
    mov qword rax, 10
    push rax
addr_415: ;*
    pop rax
    pop rbx
    imul rax, rbx
    push rax
addr_416: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_417: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_418: ;255
    mov qword rax, 255
    push rax
addr_419: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_420: ;48
    mov qword rax, 48
    push rax
addr_421: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_422: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_423: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_424: ;1
    mov qword rax, 1
    push rax
addr_425: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_426: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_427: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_428: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_429: ;255
    mov qword rax, 255
    push rax
addr_430: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_431: ;end
    pop rbx
    test rbx, rbx
    jnz addr_157
addr_432: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_433: ;disc
    pop rax
addr_434: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_435: ;end
addr_436: ;proc
    ; - proc fork 0 1
addr_437: ;57
    mov qword rax, 57
    push rax
addr_438: ;sys0
    pop rax
    syscall
    push rax
addr_439: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_440: ;end
addr_441: ;proc
    ; - proc deverr 0 0
addr_442: ;"ERROR: cant open /dev/null"
    push str_6
addr_443: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_444
    jmp addr_78
addr_444: ;quit
    jmp quit
addr_445: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_446: ;end
addr_447: ;proc
    ; - proc waitsig 0 1
addr_448: ;var
    mov rax, mem
    add rax, 40
    push rax
addr_449: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_450: ;end
addr_451: ;proc
    ; - proc execcmd 1 0
addr_452: ;(fork)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_453
    jmp addr_437
addr_453: ;copy
    pop rax
    push rax
    push rax
addr_454: ;0
    mov qword rax, 0
    push rax
addr_455: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_456: ;if
    pop rbx
    test rbx, rbx
    jz addr_458
addr_457: ;[     {child}      1      0     0     "/dev/null"     0 100 -     257 sys4          copy 0 < if (deverr)         33 sys2 0 < if (deverr)      covr envp swap copy read        59 sys3 disc     disc disc     quit   ]
addr_457_0: ;1
    mov qword rax, 1
    push rax
addr_457_1: ;0
    mov qword rax, 0
    push rax
addr_457_2: ;0
    mov qword rax, 0
    push rax
addr_457_3: ;"/dev/null"
    push str_7
addr_457_4: ;0
    mov qword rax, 0
    push rax
addr_457_5: ;100
    mov qword rax, 100
    push rax
addr_457_6: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_457_7: ;257
    mov qword rax, 257
    push rax
addr_457_8: ;sys4
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    syscall
    push rax
addr_457_9: ;copy
    pop rax
    push rax
    push rax
addr_457_10: ;0
    mov qword rax, 0
    push rax
addr_457_11: ;<
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_457_12: ;if
    pop rbx
    test rbx, rbx
    jz addr_457_14
addr_457_13: ;(deverr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_458
    jmp addr_442
addr_457_14: ;33
    mov qword rax, 33
    push rax
addr_457_15: ;sys2
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
addr_457_16: ;0
    mov qword rax, 0
    push rax
addr_457_17: ;<
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_457_18: ;if
    pop rbx
    test rbx, rbx
    jz addr_457_20
addr_457_19: ;(deverr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_458
    jmp addr_442
addr_457_20: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_457_21: ;envp
; unimp bad      {child}      1      0     0     "/dev/null"     0 100 -     257 sys4          copy 0 < if (deverr)         33 sys2 0 < if (deverr)      covr envp swap copy read        59 sys3 disc     disc disc     quit   
addr_457_22: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_457_23: ;copy
    pop rax
    push rax
    push rax
addr_457_24: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_457_25: ;59
    mov qword rax, 59
    push rax
addr_457_26: ;sys3
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_457_27: ;disc
    pop rax
addr_457_28: ;disc
    pop rax
addr_457_29: ;disc
    pop rax
addr_457_30: ;quit
    jmp quit
addr_457_31: ; 
addr_458: ;copy
    pop rax
    push rax
    push rax
addr_459: ;0
    mov qword rax, 0
    push rax
addr_460: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_461: ;if
    pop rbx
    test rbx, rbx
    jz addr_463
addr_462: ;[     {parent}      NULL     0      (waitsig)      0 1 -     61     sys4 disc   ]
addr_462_0: ;NULL
    mov qword rax, 1
    push rax
addr_462_1: ;0
    mov qword rax, 0
    push rax
addr_462_2: ;(waitsig)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_463
    jmp addr_448
addr_462_3: ;0
    mov qword rax, 0
    push rax
addr_462_4: ;1
    mov qword rax, 1
    push rax
addr_462_5: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_462_6: ;61
    mov qword rax, 61
    push rax
addr_462_7: ;sys4
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    syscall
    push rax
addr_462_8: ;disc
    pop rax
addr_462_9: ; 
addr_463: ;disc
    pop rax
addr_464: ;disc
    pop rax
addr_465: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_466: ;end
addr_467: ;proc
    ; - proc execcmdecho 1 0
addr_468: ;"[CMD] "
    push str_8
addr_469: ;(print)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_470
    jmp addr_50
addr_470: ;copy
    pop rax
    push rax
    push rax
addr_471: ;do
addr_472: ;copy
    pop rax
    push rax
    push rax
addr_473: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_474: ;(print)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_475
    jmp addr_50
addr_475: ;8
    mov qword rax, 8
    push rax
addr_476: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_477: ;copy
    pop rax
    push rax
    push rax
addr_478: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_479: ;NULL
    mov qword rax, 1
    push rax
addr_480: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_481: ;copy
    pop rax
    push rax
    push rax
addr_482: ;if
    pop rbx
    test rbx, rbx
    jz addr_484
addr_483: ;[" " (print)]
addr_483_0: ;" "
    push str_9
addr_483_1: ;(print)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_484
    jmp addr_50
addr_483_2: ; 
addr_484: ;end
    pop rbx
    test rbx, rbx
    jnz addr_215
addr_485: ;disc
    pop rax
addr_486: ;(endl)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_487
    jmp addr_73
addr_487: ;(execcmd)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_488
    jmp addr_452
addr_488: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_489: ;end
addr_490: ;const
addr_491: ;const
addr_492: ;proc
    ; - proc gettabetemp 0 1
addr_493: ;var
    mov rax, mem
    add rax, 48
    push rax
addr_494: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_495: ;end
addr_496: ;proc
    ; - proc gettabtemp 0 1
addr_497: ;var
    mov rax, mem
    add rax, 56
    push rax
addr_498: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_499: ;end
addr_500: ;proc
    ; - proc putTab 3 1
addr_501: ;(gettabtemp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_502
    jmp addr_497
addr_502: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_503: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_504: ;disc
    pop rax
addr_505: ;copy
    pop rax
    push rax
    push rax
addr_506: ;(strlen)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_507
    jmp addr_308
addr_507: ;TABENTRYLEN
    mov qword rax, 491
    push rax
addr_508: ;>
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_509: ;if
    pop rbx
    test rbx, rbx
    jz addr_511
addr_510: ;[     "STRING TOO LONG FOR TABLE" (println)     copy (println)     disc disc     quit   ]
addr_510_0: ;"STRING TOO LONG FOR TABLE"
    push str_10
addr_510_1: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_511
    jmp addr_78
addr_510_2: ;copy
    pop rax
    push rax
    push rax
addr_510_3: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_511
    jmp addr_78
addr_510_4: ;disc
    pop rax
addr_510_5: ;disc
    pop rax
addr_510_6: ;quit
    jmp quit
addr_510_7: ; 
addr_511: ;(gettabetemp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_512
    jmp addr_493
addr_512: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_513: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_514: ;disc
    pop rax
addr_515: ;0
    mov qword rax, 0
    push rax
addr_516: ;1
    mov qword rax, 1
    push rax
addr_517: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_518: ;do
addr_519: ;1
    mov qword rax, 1
    push rax
addr_520: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_521: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_522: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_523: ;TABENTRYLEN
    mov qword rax, 491
    push rax
addr_524: ;8
    mov qword rax, 8
    push rax
addr_525: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_526: ;*
    pop rax
    pop rbx
    imul rax, rbx
    push rax
addr_527: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_528: ;copy
    pop rax
    push rax
    push rax
addr_529: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_530: ;0
    mov qword rax, 0
    push rax
addr_531: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_532: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_533: ;(gettabetemp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_534
    jmp addr_493
addr_534: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_535: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_536
    jmp addr_172
addr_536: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_537: ;0
    mov qword rax, 0
    push rax
addr_538: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_539: ;end
    pop rbx
    test rbx, rbx
    jnz addr_6
addr_540: ;TABENTRYLEN
    mov qword rax, 491
    push rax
addr_541: ;8
    mov qword rax, 8
    push rax
addr_542: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_543: ;*
    pop rax
    pop rbx
    imul rax, rbx
    push rax
addr_544: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_545: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_546: ;(gettabetemp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_547
    jmp addr_493
addr_547: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_548: ;(strcpy)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_549
    jmp addr_142
addr_549: ;disc
    pop rax
addr_550: ;TABENTRYLEN
    mov qword rax, 491
    push rax
addr_551: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_552: ;(gettabtemp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_553
    jmp addr_497
addr_553: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_554: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_555: ;disc
    pop rax
addr_556: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_557: ;end
addr_558: ;proc
    ; - proc printTab 1 0
addr_559: ;0
    mov qword rax, 0
    push rax
addr_560: ;do
addr_561: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_562: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_563: ;TABENTRYLEN
    mov qword rax, 491
    push rax
addr_564: ;8
    mov qword rax, 8
    push rax
addr_565: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_566: ;*
    pop rax
    pop rbx
    imul rax, rbx
    push rax
addr_567: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_568: ;copy
    pop rax
    push rax
    push rax
addr_569: ;(print)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_570
    jmp addr_50
addr_570: ;":"
    push str_11
addr_571: ;(print)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_572
    jmp addr_50
addr_572: ;TABENTRYLEN
    mov qword rax, 491
    push rax
addr_573: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_574: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_575: ;(printint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_576
    jmp addr_83
addr_576: ;1
    mov qword rax, 1
    push rax
addr_577: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_578: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_579: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_580: ;TABENTRYLEN
    mov qword rax, 491
    push rax
addr_581: ;8
    mov qword rax, 8
    push rax
addr_582: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_583: ;*
    pop rax
    pop rbx
    imul rax, rbx
    push rax
addr_584: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_585: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_586: ;end
    pop rbx
    test rbx, rbx
    jnz addr_48
addr_587: ;disc
    pop rax
addr_588: ;disc
    pop rax
addr_589: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_590: ;end
addr_591: ;proc
    ; - proc getTab 2 2
addr_592: ;copy
    pop rax
    push rax
    push rax
addr_593: ;(strlen)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_594
    jmp addr_308
addr_594: ;TABENTRYLEN
    mov qword rax, 491
    push rax
addr_595: ;>
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_596: ;if
    pop rbx
    test rbx, rbx
    jz addr_598
addr_597: ;[     "STRING TOO LONG FOR TABLE" (println)     copy (println)     disc disc     quit   ]
addr_597_0: ;"STRING TOO LONG FOR TABLE"
    push str_12
addr_597_1: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_598
    jmp addr_78
addr_597_2: ;copy
    pop rax
    push rax
    push rax
addr_597_3: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_598
    jmp addr_78
addr_597_4: ;disc
    pop rax
addr_597_5: ;disc
    pop rax
addr_597_6: ;quit
    jmp quit
addr_597_7: ; 
addr_598: ;(gettabetemp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_599
    jmp addr_493
addr_599: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_600: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_601: ;disc
    pop rax
addr_602: ;0
    mov qword rax, 0
    push rax
addr_603: ;1
    mov qword rax, 1
    push rax
addr_604: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_605: ;do
addr_606: ;1
    mov qword rax, 1
    push rax
addr_607: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_608: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_609: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_610: ;TABENTRYLEN
    mov qword rax, 491
    push rax
addr_611: ;8
    mov qword rax, 8
    push rax
addr_612: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_613: ;*
    pop rax
    pop rbx
    imul rax, rbx
    push rax
addr_614: ;copy
    pop rax
    push rax
    push rax
addr_615: ;TAB_SIZE
    mov qword rax, 492
    push rax
addr_616: ;<
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_617: ;"TABLE_OVERFLOW"
    push str_13
addr_618: ;(assert)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_619
    jmp addr_110
addr_619: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_620: ;(gettabetemp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_621
    jmp addr_493
addr_621: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_622: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_623
    jmp addr_172
addr_623: ;0
    mov qword rax, 0
    push rax
addr_624: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_625: ;end
    pop rbx
    test rbx, rbx
    jnz addr_93
addr_626: ;TABENTRYLEN
    mov qword rax, 491
    push rax
addr_627: ;8
    mov qword rax, 8
    push rax
addr_628: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_629: ;*
    pop rax
    pop rbx
    imul rax, rbx
    push rax
addr_630: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_631: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_632: ;TABENTRYLEN
    mov qword rax, 491
    push rax
addr_633: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_634: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_635: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_636: ;end
addr_637: ;proc
    ; - proc inTab 2 2
addr_638: ;copy
    pop rax
    push rax
    push rax
addr_639: ;(strlen)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_640
    jmp addr_308
addr_640: ;TABENTRYLEN
    mov qword rax, 491
    push rax
addr_641: ;>
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_642: ;if
    pop rbx
    test rbx, rbx
    jz addr_644
addr_643: ;[     disc     0     ret   ]
addr_643_0: ;disc
    pop rax
addr_643_1: ;0
    mov qword rax, 0
    push rax
addr_643_2: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_643_3: ; 
addr_644: ;(gettabetemp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_645
    jmp addr_493
addr_645: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_646: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_647: ;disc
    pop rax
addr_648: ;0
    mov qword rax, 0
    push rax
addr_649: ;1
    mov qword rax, 1
    push rax
addr_650: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_651: ;do
addr_652: ;1
    mov qword rax, 1
    push rax
addr_653: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_654: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_655: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_656: ;TABENTRYLEN
    mov qword rax, 491
    push rax
addr_657: ;8
    mov qword rax, 8
    push rax
addr_658: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_659: ;*
    pop rax
    pop rbx
    imul rax, rbx
    push rax
addr_660: ;copy
    pop rax
    push rax
    push rax
addr_661: ;TAB_SIZE
    mov qword rax, 492
    push rax
addr_662: ;>
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_663: ;if
    pop rbx
    test rbx, rbx
    jz addr_665
addr_664: ;[disc disc disc 0 ret]
addr_664_0: ;disc
    pop rax
addr_664_1: ;disc
    pop rax
addr_664_2: ;disc
    pop rax
addr_664_3: ;0
    mov qword rax, 0
    push rax
addr_664_4: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_664_5: ; 
addr_665: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_666: ;(gettabetemp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_667
    jmp addr_493
addr_667: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_668: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_669
    jmp addr_172
addr_669: ;0
    mov qword rax, 0
    push rax
addr_670: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_671: ;end
    pop rbx
    test rbx, rbx
    jnz addr_139
addr_672: ;disc
    pop rax
addr_673: ;1
    mov qword rax, 1
    push rax
addr_674: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_675: ;end
addr_676: ;inc
addr_677: ;inc
addr_678: ;const
addr_679: ;const
addr_680: ;const
addr_681: ;const
addr_682: ;const
addr_683: ;const
addr_684: ;const
addr_685: ;const
addr_686: ;const
addr_687: ;const
addr_688: ;const
addr_689: ;const
addr_690: ;const
addr_691: ;const
addr_692: ;const
addr_693: ;const
addr_694: ;const
addr_695: ;const
addr_696: ;const
addr_697: ;const
addr_698: ;const
addr_699: ;const
addr_700: ;const
addr_701: ;const
addr_702: ;const
addr_703: ;const
addr_704: ;const
addr_705: ;const
addr_706: ;const
addr_707: ;const
addr_708: ;const
addr_709: ;const
addr_710: ;const
addr_711: ;const
addr_712: ;const
addr_713: ;const
addr_714: ;const
addr_715: ;const
addr_716: ;const
addr_717: ;const
addr_718: ;const
addr_719: ;const
addr_720: ;const
addr_721: ;const
addr_722: ;const
addr_723: ;const
addr_724: ;const
addr_725: ;const
addr_726: ;const
addr_727: ;const
addr_728: ;proc
    ; - proc getconstTab 0 1
addr_729: ;var
    mov rax, mem
    add rax, 64
    push rax
addr_730: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_731: ;end
addr_732: ;proc
    ; - proc getprocTab 0 1
addr_733: ;var
    mov rax, mem
    add rax, 300064
    push rax
addr_734: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_735: ;end
addr_736: ;proc
    ; - proc getcmdbuffer 0 1
addr_737: ;var
    mov rax, mem
    add rax, 600064
    push rax
addr_738: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_739: ;end
addr_740: ;proc
    ; - proc getblockbuffer 0 1
addr_741: ;var
    mov rax, mem
    add rax, 601088
    push rax
addr_742: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_743: ;end
addr_744: ;proc
    ; - proc getreadbuffer 0 1
addr_745: ;var
    mov rax, mem
    add rax, 602112
    push rax
addr_746: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_747: ;end
addr_748: ;proc
    ; - proc getstringbuffer 0 1
addr_749: ;var
    mov rax, mem
    add rax, 603136
    push rax
addr_750: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_751: ;end
addr_752: ;const
addr_753: ;proc
    ; - proc getnameop 1 1
addr_754: ;OP_BAD
    mov qword rax, 679
    push rax
addr_755: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_756: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_757: ;255
    mov qword rax, 255
    push rax
addr_758: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_759: ;123
    mov qword rax, 123
    push rax
addr_760: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_761: ;if
    pop rbx
    test rbx, rbx
    jz addr_763
addr_762: ;[disc OP_NOP]
addr_762_0: ;disc
    pop rax
addr_762_1: ;OP_NOP
    mov qword rax, 680
    push rax
addr_762_2: ; 
addr_763: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_764: ;"do"
    push str_14
addr_765: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_766
    jmp addr_172
addr_766: ;if
    pop rbx
    test rbx, rbx
    jz addr_768
addr_767: ;[disc IDENT_DO]
addr_767_0: ;disc
    pop rax
addr_767_1: ;IDENT_DO
    mov qword rax, 727
    push rax
addr_767_2: ; 
addr_768: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_769: ;"end"
    push str_15
addr_770: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_771
    jmp addr_172
addr_771: ;if
    pop rbx
    test rbx, rbx
    jz addr_773
addr_772: ;[disc IDENT_END]
addr_772_0: ;disc
    pop rax
addr_772_1: ;IDENT_END
    mov qword rax, 728
    push rax
addr_772_2: ; 
addr_773: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_774: ;"inc"
    push str_16
addr_775: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_776
    jmp addr_172
addr_776: ;if
    pop rbx
    test rbx, rbx
    jz addr_778
addr_777: ;[disc IDENT_INC]
addr_777_0: ;disc
    pop rax
addr_777_1: ;IDENT_INC
    mov qword rax, 725
    push rax
addr_777_2: ; 
addr_778: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_779: ;"nop"
    push str_17
addr_780: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_781
    jmp addr_172
addr_781: ;if
    pop rbx
    test rbx, rbx
    jz addr_783
addr_782: ;[disc OP_NOP]
addr_782_0: ;disc
    pop rax
addr_782_1: ;OP_NOP
    mov qword rax, 680
    push rax
addr_782_2: ; 
addr_783: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_784: ;"}"
    push str_18
addr_785: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_786
    jmp addr_172
addr_786: ;if
    pop rbx
    test rbx, rbx
    jz addr_788
addr_787: ;[disc OP_NOP]
addr_787_0: ;disc
    pop rax
addr_787_1: ;OP_NOP
    mov qword rax, 680
    push rax
addr_787_2: ; 
addr_788: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_789: ;"-"
    push str_19
addr_790: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_791
    jmp addr_172
addr_791: ;if
    pop rbx
    test rbx, rbx
    jz addr_793
addr_792: ;[disc OP_SUB]
addr_792_0: ;disc
    pop rax
addr_792_1: ;OP_SUB
    mov qword rax, 682
    push rax
addr_792_2: ; 
addr_793: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_794: ;"*"
    push str_20
addr_795: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_796
    jmp addr_172
addr_796: ;if
    pop rbx
    test rbx, rbx
    jz addr_798
addr_797: ;[disc OP_MUL]
addr_797_0: ;disc
    pop rax
addr_797_1: ;OP_MUL
    mov qword rax, 683
    push rax
addr_797_2: ; 
addr_798: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_799: ;"/"
    push str_21
addr_800: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_801
    jmp addr_172
addr_801: ;if
    pop rbx
    test rbx, rbx
    jz addr_803
addr_802: ;[disc OP_DIV]
addr_802_0: ;disc
    pop rax
addr_802_1: ;OP_DIV
    mov qword rax, 723
    push rax
addr_802_2: ; 
addr_803: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_804: ;"+"
    push str_22
addr_805: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_806
    jmp addr_172
addr_806: ;if
    pop rbx
    test rbx, rbx
    jz addr_808
addr_807: ;[disc OP_PLUS]
addr_807_0: ;disc
    pop rax
addr_807_1: ;OP_PLUS
    mov qword rax, 684
    push rax
addr_807_2: ; 
addr_808: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_809: ;"swap"
    push str_23
addr_810: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_811
    jmp addr_172
addr_811: ;if
    pop rbx
    test rbx, rbx
    jz addr_813
addr_812: ;[disc OP_SWAP]
addr_812_0: ;disc
    pop rax
addr_812_1: ;OP_SWAP
    mov qword rax, 685
    push rax
addr_812_2: ; 
addr_813: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_814: ;"dump"
    push str_24
addr_815: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_816
    jmp addr_172
addr_816: ;if
    pop rbx
    test rbx, rbx
    jz addr_818
addr_817: ;[disc OP_DUMP]
addr_817_0: ;disc
    pop rax
addr_817_1: ;OP_DUMP
    mov qword rax, 686
    push rax
addr_817_2: ; 
addr_818: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_819: ;"copy"
    push str_25
addr_820: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_821
    jmp addr_172
addr_821: ;if
    pop rbx
    test rbx, rbx
    jz addr_823
addr_822: ;[disc OP_COPY]
addr_822_0: ;disc
    pop rax
addr_822_1: ;OP_COPY
    mov qword rax, 687
    push rax
addr_822_2: ; 
addr_823: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_824: ;"covr"
    push str_26
addr_825: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_826
    jmp addr_172
addr_826: ;if
    pop rbx
    test rbx, rbx
    jz addr_828
addr_827: ;[disc OP_COVR]
addr_827_0: ;disc
    pop rax
addr_827_1: ;OP_COVR
    mov qword rax, 688
    push rax
addr_827_2: ; 
addr_828: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_829: ;"var"
    push str_27
addr_830: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_831
    jmp addr_172
addr_831: ;if
    pop rbx
    test rbx, rbx
    jz addr_833
addr_832: ;[disc OP_GPTR]
addr_832_0: ;disc
    pop rax
addr_832_1: ;OP_GPTR
    mov qword rax, 689
    push rax
addr_832_2: ; 
addr_833: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_834: ;"read"
    push str_28
addr_835: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_836
    jmp addr_172
addr_836: ;if
    pop rbx
    test rbx, rbx
    jz addr_838
addr_837: ;[disc OP_READ]
addr_837_0: ;disc
    pop rax
addr_837_1: ;OP_READ
    mov qword rax, 690
    push rax
addr_837_2: ; 
addr_838: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_839: ;"putc"
    push str_29
addr_840: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_841
    jmp addr_172
addr_841: ;if
    pop rbx
    test rbx, rbx
    jz addr_843
addr_842: ;[disc OP_PUTC]
addr_842_0: ;disc
    pop rax
addr_842_1: ;OP_PUTC
    mov qword rax, 691
    push rax
addr_842_2: ; 
addr_843: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_844: ;"put"
    push str_30
addr_845: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_846
    jmp addr_172
addr_846: ;if
    pop rbx
    test rbx, rbx
    jz addr_848
addr_847: ;[disc OP_PUT]
addr_847_0: ;disc
    pop rax
addr_847_1: ;OP_PUT
    mov qword rax, 722
    push rax
addr_847_2: ; 
addr_848: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_849: ;"disc"
    push str_31
addr_850: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_851
    jmp addr_172
addr_851: ;if
    pop rbx
    test rbx, rbx
    jz addr_853
addr_852: ;[disc OP_DISC]
addr_852_0: ;disc
    pop rax
addr_852_1: ;OP_DISC
    mov qword rax, 692
    push rax
addr_852_2: ; 
addr_853: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_854: ;"argv"
    push str_32
addr_855: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_856
    jmp addr_172
addr_856: ;if
    pop rbx
    test rbx, rbx
    jz addr_858
addr_857: ;[disc OP_ARGV]
addr_857_0: ;disc
    pop rax
addr_857_1: ;OP_ARGV
    mov qword rax, 693
    push rax
addr_857_2: ; 
addr_858: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_859: ;"argc"
    push str_33
addr_860: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_861
    jmp addr_172
addr_861: ;if
    pop rbx
    test rbx, rbx
    jz addr_863
addr_862: ;[disc OP_ARGC]
addr_862_0: ;disc
    pop rax
addr_862_1: ;OP_ARGC
    mov qword rax, 694
    push rax
addr_862_2: ; 
addr_863: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_864: ;"envp"
    push str_34
addr_865: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_866
    jmp addr_172
addr_866: ;if
    pop rbx
    test rbx, rbx
    jz addr_868
addr_867: ;[disc OP_ENVP]
addr_867_0: ;disc
    pop rax
addr_867_1: ;OP_ENVP
    mov qword rax, 724
    push rax
addr_867_2: ; 
addr_868: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_869: ;"()"
    push str_35
addr_870: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_871
    jmp addr_172
addr_871: ;if
    pop rbx
    test rbx, rbx
    jz addr_873
addr_872: ;[disc OP_CALLS]
addr_872_0: ;disc
    pop rax
addr_872_1: ;OP_CALLS
    mov qword rax, 696
    push rax
addr_872_2: ; 
addr_873: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_874: ;"const"
    push str_36
addr_875: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_876
    jmp addr_172
addr_876: ;if
    pop rbx
    test rbx, rbx
    jz addr_878
addr_877: ;[disc OP_CONST]
addr_877_0: ;disc
    pop rax
addr_877_1: ;OP_CONST
    mov qword rax, 698
    push rax
addr_877_2: ; 
addr_878: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_879: ;"proc"
    push str_37
addr_880: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_881
    jmp addr_172
addr_881: ;if
    pop rbx
    test rbx, rbx
    jz addr_883
addr_882: ;[disc OP_PROC]
addr_882_0: ;disc
    pop rax
addr_882_1: ;OP_PROC
    mov qword rax, 700
    push rax
addr_882_2: ; 
addr_883: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_884: ;"ret"
    push str_38
addr_885: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_886
    jmp addr_172
addr_886: ;if
    pop rbx
    test rbx, rbx
    jz addr_888
addr_887: ;[disc OP_RET]
addr_887_0: ;disc
    pop rax
addr_887_1: ;OP_RET
    mov qword rax, 701
    push rax
addr_887_2: ; 
addr_888: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_889: ;"quit"
    push str_39
addr_890: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_891
    jmp addr_172
addr_891: ;if
    pop rbx
    test rbx, rbx
    jz addr_893
addr_892: ;[disc OP_QUIT]
addr_892_0: ;disc
    pop rax
addr_892_1: ;OP_QUIT
    mov qword rax, 702
    push rax
addr_892_2: ; 
addr_893: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_894: ;"if"
    push str_40
addr_895: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_896
    jmp addr_172
addr_896: ;if
    pop rbx
    test rbx, rbx
    jz addr_898
addr_897: ;[disc OP_IF]
addr_897_0: ;disc
    pop rax
addr_897_1: ;OP_IF
    mov qword rax, 706
    push rax
addr_897_2: ; 
addr_898: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_899: ;"cycl"
    push str_41
addr_900: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_901
    jmp addr_172
addr_901: ;if
    pop rbx
    test rbx, rbx
    jz addr_903
addr_902: ;[disc OP_CYCL]
addr_902_0: ;disc
    pop rax
addr_902_1: ;OP_CYCL
    mov qword rax, 709
    push rax
addr_902_2: ; 
addr_903: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_904: ;"!="
    push str_42
addr_905: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_906
    jmp addr_172
addr_906: ;if
    pop rbx
    test rbx, rbx
    jz addr_908
addr_907: ;[disc OP_NQ]
addr_907_0: ;disc
    pop rax
addr_907_1: ;OP_NQ
    mov qword rax, 710
    push rax
addr_907_2: ; 
addr_908: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_909: ;"=="
    push str_43
addr_910: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_911
    jmp addr_172
addr_911: ;if
    pop rbx
    test rbx, rbx
    jz addr_913
addr_912: ;[disc OP_EQ]
addr_912_0: ;disc
    pop rax
addr_912_1: ;OP_EQ
    mov qword rax, 711
    push rax
addr_912_2: ; 
addr_913: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_914: ;"<"
    push str_44
addr_915: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_916
    jmp addr_172
addr_916: ;if
    pop rbx
    test rbx, rbx
    jz addr_918
addr_917: ;[disc OP_LT]
addr_917_0: ;disc
    pop rax
addr_917_1: ;OP_LT
    mov qword rax, 712
    push rax
addr_917_2: ; 
addr_918: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_919: ;">"
    push str_45
addr_920: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_921
    jmp addr_172
addr_921: ;if
    pop rbx
    test rbx, rbx
    jz addr_923
addr_922: ;[disc OP_GT]
addr_922_0: ;disc
    pop rax
addr_922_1: ;OP_GT
    mov qword rax, 713
    push rax
addr_922_2: ; 
addr_923: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_924: ;"&&"
    push str_46
addr_925: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_926
    jmp addr_172
addr_926: ;if
    pop rbx
    test rbx, rbx
    jz addr_928
addr_927: ;[disc OP_AND]
addr_927_0: ;disc
    pop rax
addr_927_1: ;OP_AND
    mov qword rax, 714
    push rax
addr_927_2: ; 
addr_928: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_929: ;"sys0"
    push str_47
addr_930: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_931
    jmp addr_172
addr_931: ;if
    pop rbx
    test rbx, rbx
    jz addr_933
addr_932: ;[disc OP_SYS0]
addr_932_0: ;disc
    pop rax
addr_932_1: ;OP_SYS0
    mov qword rax, 715
    push rax
addr_932_2: ; 
addr_933: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_934: ;"sys1"
    push str_48
addr_935: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_936
    jmp addr_172
addr_936: ;if
    pop rbx
    test rbx, rbx
    jz addr_938
addr_937: ;[disc OP_SYS1]
addr_937_0: ;disc
    pop rax
addr_937_1: ;OP_SYS1
    mov qword rax, 716
    push rax
addr_937_2: ; 
addr_938: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_939: ;"sys2"
    push str_49
addr_940: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_941
    jmp addr_172
addr_941: ;if
    pop rbx
    test rbx, rbx
    jz addr_943
addr_942: ;[disc OP_SYS2]
addr_942_0: ;disc
    pop rax
addr_942_1: ;OP_SYS2
    mov qword rax, 717
    push rax
addr_942_2: ; 
addr_943: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_944: ;"sys3"
    push str_50
addr_945: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_946
    jmp addr_172
addr_946: ;if
    pop rbx
    test rbx, rbx
    jz addr_948
addr_947: ;[disc OP_SYS3]
addr_947_0: ;disc
    pop rax
addr_947_1: ;OP_SYS3
    mov qword rax, 718
    push rax
addr_947_2: ; 
addr_948: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_949: ;"sys4"
    push str_51
addr_950: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_951
    jmp addr_172
addr_951: ;if
    pop rbx
    test rbx, rbx
    jz addr_953
addr_952: ;[disc OP_SYS4]
addr_952_0: ;disc
    pop rax
addr_952_1: ;OP_SYS4
    mov qword rax, 719
    push rax
addr_952_2: ; 
addr_953: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_954: ;"sys5"
    push str_52
addr_955: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_956
    jmp addr_172
addr_956: ;if
    pop rbx
    test rbx, rbx
    jz addr_958
addr_957: ;[disc OP_SYS5]
addr_957_0: ;disc
    pop rax
addr_957_1: ;OP_SYS5
    mov qword rax, 720
    push rax
addr_957_2: ; 
addr_958: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_959: ;"sys6"
    push str_53
addr_960: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_961
    jmp addr_172
addr_961: ;if
    pop rbx
    test rbx, rbx
    jz addr_963
addr_962: ;[disc OP_SYS6]
addr_962_0: ;disc
    pop rax
addr_962_1: ;OP_SYS6
    mov qword rax, 721
    push rax
addr_962_2: ; 
addr_963: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_964: ;disc
    pop rax
addr_965: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_966: ;end
addr_967: ;proc
    ; - proc getopname 1 1
addr_968: ;"bad"
    push str_54
addr_969: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_970: ;OP_NOP
    mov qword rax, 680
    push rax
addr_971: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_972: ;if
    pop rbx
    test rbx, rbx
    jz addr_974
addr_973: ;[disc "nop"]
addr_973_0: ;disc
    pop rax
addr_973_1: ;"nop"
    push str_55
addr_973_2: ; 
addr_974: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_975: ;OP_PUSH
    mov qword rax, 681
    push rax
addr_976: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_977: ;if
    pop rbx
    test rbx, rbx
    jz addr_979
addr_978: ;[disc "push"]
addr_978_0: ;disc
    pop rax
addr_978_1: ;"push"
    push str_56
addr_978_2: ; 
addr_979: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_980: ;OP_SUB
    mov qword rax, 682
    push rax
addr_981: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_982: ;if
    pop rbx
    test rbx, rbx
    jz addr_984
addr_983: ;[disc "sub"]
addr_983_0: ;disc
    pop rax
addr_983_1: ;"sub"
    push str_57
addr_983_2: ; 
addr_984: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_985: ;OP_MUL
    mov qword rax, 683
    push rax
addr_986: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_987: ;if
    pop rbx
    test rbx, rbx
    jz addr_989
addr_988: ;[disc "mul"]
addr_988_0: ;disc
    pop rax
addr_988_1: ;"mul"
    push str_58
addr_988_2: ; 
addr_989: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_990: ;OP_PLUS
    mov qword rax, 684
    push rax
addr_991: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_992: ;if
    pop rbx
    test rbx, rbx
    jz addr_994
addr_993: ;[disc "plus"]
addr_993_0: ;disc
    pop rax
addr_993_1: ;"plus"
    push str_59
addr_993_2: ; 
addr_994: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_995: ;OP_SWAP
    mov qword rax, 685
    push rax
addr_996: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_997: ;if
    pop rbx
    test rbx, rbx
    jz addr_999
addr_998: ;[disc "swap"]
addr_998_0: ;disc
    pop rax
addr_998_1: ;"swap"
    push str_60
addr_998_2: ; 
addr_999: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1000: ;OP_DUMP
    mov qword rax, 686
    push rax
addr_1001: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1002: ;if
    pop rbx
    test rbx, rbx
    jz addr_1004
addr_1003: ;[disc "dump"]
addr_1003_0: ;disc
    pop rax
addr_1003_1: ;"dump"
    push str_61
addr_1003_2: ; 
addr_1004: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1005: ;OP_COPY
    mov qword rax, 687
    push rax
addr_1006: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1007: ;if
    pop rbx
    test rbx, rbx
    jz addr_1009
addr_1008: ;[disc "copy"]
addr_1008_0: ;disc
    pop rax
addr_1008_1: ;"copy"
    push str_62
addr_1008_2: ; 
addr_1009: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1010: ;OP_COVR
    mov qword rax, 688
    push rax
addr_1011: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1012: ;if
    pop rbx
    test rbx, rbx
    jz addr_1014
addr_1013: ;[disc "covr"]
addr_1013_0: ;disc
    pop rax
addr_1013_1: ;"covr"
    push str_63
addr_1013_2: ; 
addr_1014: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1015: ;OP_GPTR
    mov qword rax, 689
    push rax
addr_1016: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1017: ;if
    pop rbx
    test rbx, rbx
    jz addr_1019
addr_1018: ;[disc "gptr"]
addr_1018_0: ;disc
    pop rax
addr_1018_1: ;"gptr"
    push str_64
addr_1018_2: ; 
addr_1019: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1020: ;OP_READ
    mov qword rax, 690
    push rax
addr_1021: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1022: ;if
    pop rbx
    test rbx, rbx
    jz addr_1024
addr_1023: ;[disc "read"]
addr_1023_0: ;disc
    pop rax
addr_1023_1: ;"read"
    push str_65
addr_1023_2: ; 
addr_1024: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1025: ;OP_PUTC
    mov qword rax, 691
    push rax
addr_1026: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1027: ;if
    pop rbx
    test rbx, rbx
    jz addr_1029
addr_1028: ;[disc "putc"]
addr_1028_0: ;disc
    pop rax
addr_1028_1: ;"putc"
    push str_66
addr_1028_2: ; 
addr_1029: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1030: ;OP_PUT
    mov qword rax, 722
    push rax
addr_1031: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1032: ;if
    pop rbx
    test rbx, rbx
    jz addr_1034
addr_1033: ;[disc "put"]
addr_1033_0: ;disc
    pop rax
addr_1033_1: ;"put"
    push str_67
addr_1033_2: ; 
addr_1034: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1035: ;OP_DISC
    mov qword rax, 692
    push rax
addr_1036: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1037: ;if
    pop rbx
    test rbx, rbx
    jz addr_1039
addr_1038: ;[disc "disc"]
addr_1038_0: ;disc
    pop rax
addr_1038_1: ;"disc"
    push str_68
addr_1038_2: ; 
addr_1039: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1040: ;OP_ARGV
    mov qword rax, 693
    push rax
addr_1041: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1042: ;if
    pop rbx
    test rbx, rbx
    jz addr_1044
addr_1043: ;[disc "argv"]
addr_1043_0: ;disc
    pop rax
addr_1043_1: ;"argv"
    push str_69
addr_1043_2: ; 
addr_1044: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1045: ;OP_ARGC
    mov qword rax, 694
    push rax
addr_1046: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1047: ;if
    pop rbx
    test rbx, rbx
    jz addr_1049
addr_1048: ;[disc "argc"]
addr_1048_0: ;disc
    pop rax
addr_1048_1: ;"argc"
    push str_70
addr_1048_2: ; 
addr_1049: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1050: ;OP_PUSHP
    mov qword rax, 695
    push rax
addr_1051: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1052: ;if
    pop rbx
    test rbx, rbx
    jz addr_1054
addr_1053: ;[disc "push"]
addr_1053_0: ;disc
    pop rax
addr_1053_1: ;"push"
    push str_71
addr_1053_2: ; 
addr_1054: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1055: ;OP_CALLS
    mov qword rax, 696
    push rax
addr_1056: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1057: ;if
    pop rbx
    test rbx, rbx
    jz addr_1059
addr_1058: ;[disc "call"]
addr_1058_0: ;disc
    pop rax
addr_1058_1: ;"call"
    push str_72
addr_1058_2: ; 
addr_1059: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1060: ;OP_MULTI
    mov qword rax, 697
    push rax
addr_1061: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1062: ;if
    pop rbx
    test rbx, rbx
    jz addr_1064
addr_1063: ;[disc "[]"]
addr_1063_0: ;disc
    pop rax
addr_1063_1: ;"[]"
    push str_73
addr_1063_2: ; 
addr_1064: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1065: ;OP_CONST
    mov qword rax, 698
    push rax
addr_1066: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1067: ;if
    pop rbx
    test rbx, rbx
    jz addr_1069
addr_1068: ;[disc "const"]
addr_1068_0: ;disc
    pop rax
addr_1068_1: ;"const"
    push str_74
addr_1068_2: ; 
addr_1069: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1070: ;OP_CALL
    mov qword rax, 699
    push rax
addr_1071: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1072: ;if
    pop rbx
    test rbx, rbx
    jz addr_1074
addr_1073: ;[disc "call"]
addr_1073_0: ;disc
    pop rax
addr_1073_1: ;"call"
    push str_75
addr_1073_2: ; 
addr_1074: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1075: ;OP_PROC
    mov qword rax, 700
    push rax
addr_1076: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1077: ;if
    pop rbx
    test rbx, rbx
    jz addr_1079
addr_1078: ;[disc "proc"]
addr_1078_0: ;disc
    pop rax
addr_1078_1: ;"proc"
    push str_76
addr_1078_2: ; 
addr_1079: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1080: ;OP_RET
    mov qword rax, 701
    push rax
addr_1081: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1082: ;if
    pop rbx
    test rbx, rbx
    jz addr_1084
addr_1083: ;[disc "ret"]
addr_1083_0: ;disc
    pop rax
addr_1083_1: ;"ret"
    push str_77
addr_1083_2: ; 
addr_1084: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1085: ;OP_QUIT
    mov qword rax, 702
    push rax
addr_1086: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1087: ;if
    pop rbx
    test rbx, rbx
    jz addr_1089
addr_1088: ;[disc "quit"]
addr_1088_0: ;disc
    pop rax
addr_1088_1: ;"quit"
    push str_78
addr_1088_2: ; 
addr_1089: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1090: ;OP_LOCX
    mov qword rax, 703
    push rax
addr_1091: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1092: ;if
    pop rbx
    test rbx, rbx
    jz addr_1094
addr_1093: ;[disc "location"]
addr_1093_0: ;disc
    pop rax
addr_1093_1: ;"location"
    push str_79
addr_1093_2: ; 
addr_1094: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1095: ;OP_JUMPX
    mov qword rax, 704
    push rax
addr_1096: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1097: ;if
    pop rbx
    test rbx, rbx
    jz addr_1099
addr_1098: ;[disc "jump"]
addr_1098_0: ;disc
    pop rax
addr_1098_1: ;"jump"
    push str_80
addr_1098_2: ; 
addr_1099: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1100: ;OP_JUMP
    mov qword rax, 705
    push rax
addr_1101: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1102: ;if
    pop rbx
    test rbx, rbx
    jz addr_1104
addr_1103: ;[disc "jump"]
addr_1103_0: ;disc
    pop rax
addr_1103_1: ;"jump"
    push str_81
addr_1103_2: ; 
addr_1104: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1105: ;OP_IF
    mov qword rax, 706
    push rax
addr_1106: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1107: ;if
    pop rbx
    test rbx, rbx
    jz addr_1109
addr_1108: ;[disc "if"]
addr_1108_0: ;disc
    pop rax
addr_1108_1: ;"if"
    push str_82
addr_1108_2: ; 
addr_1109: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1110: ;OP_JNZ
    mov qword rax, 707
    push rax
addr_1111: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1112: ;if
    pop rbx
    test rbx, rbx
    jz addr_1114
addr_1113: ;[disc "jnz"]
addr_1113_0: ;disc
    pop rax
addr_1113_1: ;"jnz"
    push str_83
addr_1113_2: ; 
addr_1114: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1115: ;OP_GETP
    mov qword rax, 708
    push rax
addr_1116: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1117: ;if
    pop rbx
    test rbx, rbx
    jz addr_1119
addr_1118: ;[disc "getp"]
addr_1118_0: ;disc
    pop rax
addr_1118_1: ;"getp"
    push str_84
addr_1118_2: ; 
addr_1119: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1120: ;OP_CYCL
    mov qword rax, 709
    push rax
addr_1121: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1122: ;if
    pop rbx
    test rbx, rbx
    jz addr_1124
addr_1123: ;[disc "cycl"]
addr_1123_0: ;disc
    pop rax
addr_1123_1: ;"cycl"
    push str_85
addr_1123_2: ; 
addr_1124: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1125: ;OP_NQ
    mov qword rax, 710
    push rax
addr_1126: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1127: ;if
    pop rbx
    test rbx, rbx
    jz addr_1129
addr_1128: ;[disc "!="]
addr_1128_0: ;disc
    pop rax
addr_1128_1: ;"!="
    push str_86
addr_1128_2: ; 
addr_1129: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1130: ;OP_EQ
    mov qword rax, 711
    push rax
addr_1131: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1132: ;if
    pop rbx
    test rbx, rbx
    jz addr_1134
addr_1133: ;[disc "=="]
addr_1133_0: ;disc
    pop rax
addr_1133_1: ;"=="
    push str_87
addr_1133_2: ; 
addr_1134: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1135: ;OP_LT
    mov qword rax, 712
    push rax
addr_1136: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1137: ;if
    pop rbx
    test rbx, rbx
    jz addr_1139
addr_1138: ;[disc "<"]
addr_1138_0: ;disc
    pop rax
addr_1138_1: ;"<"
    push str_88
addr_1138_2: ; 
addr_1139: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1140: ;OP_GT
    mov qword rax, 713
    push rax
addr_1141: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1142: ;if
    pop rbx
    test rbx, rbx
    jz addr_1144
addr_1143: ;[disc ">"]
addr_1143_0: ;disc
    pop rax
addr_1143_1: ;">"
    push str_89
addr_1143_2: ; 
addr_1144: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1145: ;OP_AND
    mov qword rax, 714
    push rax
addr_1146: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1147: ;if
    pop rbx
    test rbx, rbx
    jz addr_1149
addr_1148: ;[disc "&&"]
addr_1148_0: ;disc
    pop rax
addr_1148_1: ;"&&"
    push str_90
addr_1148_2: ; 
addr_1149: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1150: ;OP_SYS0
    mov qword rax, 715
    push rax
addr_1151: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1152: ;if
    pop rbx
    test rbx, rbx
    jz addr_1154
addr_1153: ;[disc "sys0"]
addr_1153_0: ;disc
    pop rax
addr_1153_1: ;"sys0"
    push str_91
addr_1153_2: ; 
addr_1154: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1155: ;OP_SYS1
    mov qword rax, 716
    push rax
addr_1156: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1157: ;if
    pop rbx
    test rbx, rbx
    jz addr_1159
addr_1158: ;[disc "sys1"]
addr_1158_0: ;disc
    pop rax
addr_1158_1: ;"sys1"
    push str_92
addr_1158_2: ; 
addr_1159: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1160: ;OP_SYS2
    mov qword rax, 717
    push rax
addr_1161: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1162: ;if
    pop rbx
    test rbx, rbx
    jz addr_1164
addr_1163: ;[disc "sys2"]
addr_1163_0: ;disc
    pop rax
addr_1163_1: ;"sys2"
    push str_93
addr_1163_2: ; 
addr_1164: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1165: ;OP_SYS3
    mov qword rax, 718
    push rax
addr_1166: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1167: ;if
    pop rbx
    test rbx, rbx
    jz addr_1169
addr_1168: ;[disc "sys3"]
addr_1168_0: ;disc
    pop rax
addr_1168_1: ;"sys3"
    push str_94
addr_1168_2: ; 
addr_1169: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1170: ;OP_SYS4
    mov qword rax, 719
    push rax
addr_1171: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1172: ;if
    pop rbx
    test rbx, rbx
    jz addr_1174
addr_1173: ;[disc "sys4"]
addr_1173_0: ;disc
    pop rax
addr_1173_1: ;"sys4"
    push str_95
addr_1173_2: ; 
addr_1174: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1175: ;OP_SYS5
    mov qword rax, 720
    push rax
addr_1176: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1177: ;if
    pop rbx
    test rbx, rbx
    jz addr_1179
addr_1178: ;[disc "sys5"]
addr_1178_0: ;disc
    pop rax
addr_1178_1: ;"sys5"
    push str_96
addr_1178_2: ; 
addr_1179: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1180: ;OP_SYS6
    mov qword rax, 721
    push rax
addr_1181: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1182: ;if
    pop rbx
    test rbx, rbx
    jz addr_1184
addr_1183: ;[disc "sys6"]
addr_1183_0: ;disc
    pop rax
addr_1183_1: ;"sys6"
    push str_97
addr_1183_2: ; 
addr_1184: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_1185: ;disc
    pop rax
addr_1186: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1187: ;end
addr_1188: ;proc
    ; - proc identstack 0 1
addr_1189: ;var
    mov rax, mem
    add rax, 703136
    push rax
addr_1190: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1191: ;end
addr_1192: ;proc
    ; - proc identstackrsp 0 1
addr_1193: ;var
    mov rax, mem
    add rax, 703200
    push rax
addr_1194: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1195: ;end
addr_1196: ;proc
    ; - proc identstackpush 1 0
addr_1197: ;(identstackrsp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1198
    jmp addr_1193
addr_1198: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1199: ;(identstack)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1200
    jmp addr_1189
addr_1200: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1201: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_1202: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_1203: ;disc
    pop rax
addr_1204: ;(identstackrsp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1205
    jmp addr_1193
addr_1205: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1206: ;8
    mov qword rax, 8
    push rax
addr_1207: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1208: ;(identstackrsp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1209
    jmp addr_1193
addr_1209: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_1210: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_1211: ;disc
    pop rax
addr_1212: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1213: ;end
addr_1214: ;proc
    ; - proc identstackpop 0 1
addr_1215: ;(identstackrsp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1216
    jmp addr_1193
addr_1216: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1217: ;0
    mov qword rax, 0
    push rax
addr_1218: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_1219: ;"stack underflow"
    push str_98
addr_1220: ;(assert)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1221
    jmp addr_110
addr_1221: ;(identstackrsp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1222
    jmp addr_1193
addr_1222: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1223: ;8
    mov qword rax, 8
    push rax
addr_1224: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_1225: ;(identstackrsp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1226
    jmp addr_1193
addr_1226: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_1227: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_1228: ;disc
    pop rax
addr_1229: ;(identstackrsp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1230
    jmp addr_1193
addr_1230: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1231: ;(identstack)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1232
    jmp addr_1189
addr_1232: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1233: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1234: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1235: ;end
addr_1236: ;proc
    ; - proc inner 1 1
addr_1237: ;1
    mov qword rax, 1
    push rax
addr_1238: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1239: ;copy
    pop rax
    push rax
    push rax
addr_1240: ;copy
    pop rax
    push rax
    push rax
addr_1241: ;(strlen)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1242
    jmp addr_308
addr_1242: ;1
    mov qword rax, 1
    push rax
addr_1243: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_1244: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1245: ;0
    mov qword rax, 0
    push rax
addr_1246: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_1247: ;disc
    pop rax
addr_1248: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1249: ;end
addr_1250: ;proc
    ; - proc getoutput 0 1
addr_1251: ;var
    mov rax, mem
    add rax, 703208
    push rax
addr_1252: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1253: ;end
addr_1254: ;proc
    ; - proc getoutputfd 0 1
addr_1255: ;var
    mov rax, mem
    add rax, 703336
    push rax
addr_1256: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1257: ;end
addr_1258: ;proc
    ; - proc getinput 0 1
addr_1259: ;var
    mov rax, mem
    add rax, 703344
    push rax
addr_1260: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1261: ;end
addr_1262: ;proc
    ; - proc getinputfd 0 1
addr_1263: ;var
    mov rax, mem
    add rax, 703472
    push rax
addr_1264: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1265: ;end
addr_1266: ;proc
    ; - proc getsilent 0 1
addr_1267: ;var
    mov rax, mem
    add rax, 703480
    push rax
addr_1268: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1269: ;end
addr_1270: ;proc
    ; - proc getcmdidx 0 1
addr_1271: ;var
    mov rax, mem
    add rax, 703488
    push rax
addr_1272: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1273: ;end
addr_1274: ;proc
    ; - proc cmdflags 0 1
addr_1275: ;var
    mov rax, mem
    add rax, 703496
    push rax
addr_1276: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1277: ;end
addr_1278: ;proc
    ; - proc addr 0 1
addr_1279: ;var
    mov rax, mem
    add rax, 703504
    push rax
addr_1280: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1281: ;end
addr_1282: ;proc
    ; - proc stringidx 0 1
addr_1283: ;var
    mov rax, mem
    add rax, 703512
    push rax
addr_1284: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1285: ;end
addr_1286: ;proc
    ; - proc progmemory 0 1
addr_1287: ;var
    mov rax, mem
    add rax, 703520
    push rax
addr_1288: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1289: ;end
addr_1290: ;proc
    ; - proc subaddr 0 1
addr_1291: ;var
    mov rax, mem
    add rax, 703528
    push rax
addr_1292: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1293: ;end
addr_1294: ;proc
    ; - proc getstringidx 0 1
addr_1295: ;(stringidx)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1296
    jmp addr_1283
addr_1296: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1297: ;copy
    pop rax
    push rax
    push rax
addr_1298: ;1
    mov qword rax, 1
    push rax
addr_1299: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1300: ;(stringidx)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1301
    jmp addr_1283
addr_1301: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_1302: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_1303: ;disc
    pop rax
addr_1304: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1305: ;end
addr_1306: ;proc
    ; - proc getaddr 0 1
addr_1307: ;(subaddr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1308
    jmp addr_1291
addr_1308: ;0
    mov qword rax, 0
    push rax
addr_1309: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_1310: ;disc
    pop rax
addr_1311: ;(addr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1312
    jmp addr_1279
addr_1312: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1313: ;copy
    pop rax
    push rax
    push rax
addr_1314: ;1
    mov qword rax, 1
    push rax
addr_1315: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1316: ;(addr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1317
    jmp addr_1279
addr_1317: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_1318: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_1319: ;disc
    pop rax
addr_1320: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1321: ;end
addr_1322: ;proc
    ; - proc getsubaddr 0 1
addr_1323: ;(subaddr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1324
    jmp addr_1291
addr_1324: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1325: ;copy
    pop rax
    push rax
    push rax
addr_1326: ;1
    mov qword rax, 1
    push rax
addr_1327: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1328: ;(subaddr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1329
    jmp addr_1291
addr_1329: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_1330: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_1331: ;disc
    pop rax
addr_1332: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1333: ;end
addr_1334: ;proc
    ; - proc exit 0 0
addr_1335: ;(getoutputfd)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1336
    jmp addr_1255
addr_1336: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1337: ;copy
    pop rax
    push rax
    push rax
addr_1338: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_1339: ;0
    mov qword rax, 0
    push rax
addr_1340: ;if
    pop rbx
    test rbx, rbx
    jz addr_1342
addr_1341: ;[(close) 0]
addr_1341_0: ;(close)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1342
    jmp addr_229
addr_1341_1: ;0
    mov qword rax, 0
    push rax
addr_1341_2: ; 
addr_1342: ;disc
    pop rax
addr_1343: ;(getinputfd)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1344
    jmp addr_1263
addr_1344: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1345: ;copy
    pop rax
    push rax
    push rax
addr_1346: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_1347: ;0
    mov qword rax, 0
    push rax
addr_1348: ;if
    pop rbx
    test rbx, rbx
    jz addr_1350
addr_1349: ;[(close) 0]
addr_1349_0: ;(close)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1350
    jmp addr_229
addr_1349_1: ;0
    mov qword rax, 0
    push rax
addr_1349_2: ; 
addr_1350: ;disc
    pop rax
addr_1351: ;quit
    jmp quit
addr_1352: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1353: ;end
addr_1354: ;proc
    ; - proc noproc 0 0
addr_1355: ;"proc not found: "
    push str_99
addr_1356: ;(print)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1357
    jmp addr_50
addr_1357: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1358
    jmp addr_737
addr_1358: ;1
    mov qword rax, 1
    push rax
addr_1359: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1360: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1361
    jmp addr_78
addr_1361: ;(exit)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1362
    jmp addr_1335
addr_1362: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1363: ;end
addr_1364: ;proc
    ; - proc writeout 1 0
addr_1365: ;copy
    pop rax
    push rax
    push rax
addr_1366: ;(strlen)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1367
    jmp addr_308
addr_1367: ;copy
    pop rax
    push rax
    push rax
addr_1368: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1369
    jmp addr_78
addr_1369: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_1370: ;(getoutputfd)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1371
    jmp addr_1255
addr_1371: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1372: ;(write)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1373
    jmp addr_240
addr_1373: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1374: ;end
addr_1375: ;proc
    ; - proc writeoutln 0 0
addr_1376: ;"\n"
    push str_100
addr_1377: ;1
    mov qword rax, 1
    push rax
addr_1378: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_1379: ;(getoutputfd)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1380
    jmp addr_1255
addr_1380: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1381: ;(write)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1382
    jmp addr_240
addr_1382: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1383: ;end
addr_1384: ;proc
    ; - proc addproc 1 0
addr_1385: ;disc
    pop rax
addr_1386: ;" "
    push str_101
addr_1387: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1388
    jmp addr_1365
addr_1388: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1389
    jmp addr_737
addr_1389: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1390
    jmp addr_1365
addr_1390: ;(cmdflags)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1391
    jmp addr_1275
addr_1391: ;copy
    pop rax
    push rax
    push rax
addr_1392: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1393: ;255
    mov qword rax, 255
    push rax
addr_1394: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_1395: ;copy
    pop rax
    push rax
    push rax
addr_1396: ;3
    mov qword rax, 3
    push rax
addr_1397: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1398: ;if
    pop rbx
    test rbx, rbx
    jz addr_1400
addr_1399: ;[     (getcmdbuffer) (println)     (getprocTab) (getcmdbuffer) (addr) read (putTab) disc   ]
addr_1399_0: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1400
    jmp addr_737
addr_1399_1: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1400
    jmp addr_78
addr_1399_2: ;(getprocTab)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1400
    jmp addr_733
addr_1399_3: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1400
    jmp addr_737
addr_1399_4: ;(addr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1400
    jmp addr_1279
addr_1399_5: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1399_6: ;(putTab)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1400
    jmp addr_501
addr_1399_7: ;disc
    pop rax
addr_1399_8: ; 
addr_1400: ;copy
    pop rax
    push rax
    push rax
addr_1401: ;1
    mov qword rax, 1
    push rax
addr_1402: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1403: ;if
    pop rbx
    test rbx, rbx
    jz addr_1405
addr_1404: ;[     (writeoutln)   ]
addr_1404_0: ;(writeoutln)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1405
    jmp addr_1376
addr_1404_1: ; 
addr_1405: ;1
    mov qword rax, 1
    push rax
addr_1406: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_1407: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_1408: ;disc
    pop rax
addr_1409: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1410: ;end
addr_1411: ;proc
    ; - proc constname 0 1
addr_1412: ;var
    mov rax, mem
    add rax, 703536
    push rax
addr_1413: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1414: ;end
addr_1415: ;proc
    ; - proc addconst 1 0
addr_1416: ;disc
    pop rax
addr_1417: ;(cmdflags)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1418
    jmp addr_1275
addr_1418: ;copy
    pop rax
    push rax
    push rax
addr_1419: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1420: ;255
    mov qword rax, 255
    push rax
addr_1421: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_1422: ;1
    mov qword rax, 1
    push rax
addr_1423: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_1424: ;copy
    pop rax
    push rax
    push rax
addr_1425: ;3
    mov qword rax, 3
    push rax
addr_1426: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1427: ;if
    pop rbx
    test rbx, rbx
    jz addr_1429
addr_1428: ;[     (getconstTab) (constname) (addr) read (putTab) disc     disc 0   ]
addr_1428_0: ;(getconstTab)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1429
    jmp addr_729
addr_1428_1: ;(constname)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1429
    jmp addr_1412
addr_1428_2: ;(addr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1429
    jmp addr_1279
addr_1428_3: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1428_4: ;(putTab)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1429
    jmp addr_501
addr_1428_5: ;disc
    pop rax
addr_1428_6: ;disc
    pop rax
addr_1428_7: ;0
    mov qword rax, 0
    push rax
addr_1428_8: ; 
addr_1429: ;copy
    pop rax
    push rax
    push rax
addr_1430: ;4
    mov qword rax, 4
    push rax
addr_1431: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1432: ;if
    pop rbx
    test rbx, rbx
    jz addr_1434
addr_1433: ;[     (getcmdbuffer) (constname) (clearbuf) swap (strcpy) disc disc   ]
addr_1433_0: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1434
    jmp addr_737
addr_1433_1: ;(constname)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1434
    jmp addr_1412
addr_1433_2: ;(clearbuf)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1434
    jmp addr_346
addr_1433_3: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_1433_4: ;(strcpy)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1434
    jmp addr_142
addr_1433_5: ;disc
    pop rax
addr_1433_6: ;disc
    pop rax
addr_1433_7: ; 
addr_1434: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_1435: ;disc
    pop rax
addr_1436: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1437: ;end
addr_1438: ;proc
    ; - proc addinc 1 0
addr_1439: ;disc
    pop rax
addr_1440: ;(cmdflags)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1441
    jmp addr_1275
addr_1441: ;0
    mov qword rax, 0
    push rax
addr_1442: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_1443: ;disc
    pop rax
addr_1444: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1445: ;end
addr_1446: ;proc
    ; - proc addvar 1 0
addr_1447: ;disc
    pop rax
addr_1448: ;"    mov rax, mem\n"
    push str_102
addr_1449: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1450
    jmp addr_1365
addr_1450: ;"    add rax, "
    push str_103
addr_1451: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1452
    jmp addr_1365
addr_1452: ;(progmemory)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1453
    jmp addr_1287
addr_1453: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1454: ;(strint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1455
    jmp addr_25
addr_1455: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1456
    jmp addr_1365
addr_1456: ;(writeoutln)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1457
    jmp addr_1376
addr_1457: ;"    push rax\n"
    push str_104
addr_1458: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1459
    jmp addr_1365
addr_1459: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1460
    jmp addr_737
addr_1460: ;(tonum)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1461
    jmp addr_402
addr_1461: ;(progmemory)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1462
    jmp addr_1287
addr_1462: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1463: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1464: ;(progmemory)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1465
    jmp addr_1287
addr_1465: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_1466: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_1467: ;disc
    pop rax
addr_1468: ;(cmdflags)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1469
    jmp addr_1275
addr_1469: ;0
    mov qword rax, 0
    push rax
addr_1470: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_1471: ;disc
    pop rax
addr_1472: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1473: ;end
addr_1474: ;proc
    ; - proc asmheader 0 0
addr_1475: ;"BITS 64\n"
    push str_105
addr_1476: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1477
    jmp addr_1365
addr_1477: ;"segment .text\n"
    push str_106
addr_1478: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1479
    jmp addr_1365
addr_1479: ;"print:\n"
    push str_107
addr_1480: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1481
    jmp addr_1365
addr_1481: ;"    mov r10, rsp\n"
    push str_108
addr_1482: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1483
    jmp addr_1365
addr_1483: ;"    sub rsp, 8\n"
    push str_109
addr_1484: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1485
    jmp addr_1365
addr_1485: ;"    mov [rsp], al\n"
    push str_110
addr_1486: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1487
    jmp addr_1365
addr_1487: ;"    mov edi, 1\n"
    push str_111
addr_1488: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1489
    jmp addr_1365
addr_1489: ;"    mov rsi, rsp\n"
    push str_112
addr_1490: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1491
    jmp addr_1365
addr_1491: ;"    mov edx, 1\n"
    push str_113
addr_1492: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1493
    jmp addr_1365
addr_1493: ;"    mov eax, 1\n"
    push str_114
addr_1494: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1495
    jmp addr_1365
addr_1495: ;"    syscall\n"
    push str_115
addr_1496: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1497
    jmp addr_1365
addr_1497: ;"    mov rsp, r10\n"
    push str_116
addr_1498: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1499
    jmp addr_1365
addr_1499: ;"    ret\n"
    push str_117
addr_1500: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1501
    jmp addr_1365
addr_1501: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1502: ;end
addr_1503: ;proc
    ; - proc asmfooter 0 0
addr_1504: ;"addr_"
    push str_118
addr_1505: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1506
    jmp addr_1365
addr_1506: ;(getaddr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1507
    jmp addr_1307
addr_1507: ;(strint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1508
    jmp addr_25
addr_1508: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1509
    jmp addr_1365
addr_1509: ;":\n"
    push str_119
addr_1510: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1511
    jmp addr_1365
addr_1511: ;"global _start\n"
    push str_120
addr_1512: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1513
    jmp addr_1365
addr_1513: ;"_start:\n"
    push str_121
addr_1514: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1515
    jmp addr_1365
addr_1515: ;"    mov qword [args_ptr], rsp\n"
    push str_122
addr_1516: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1517
    jmp addr_1365
addr_1517: ;"    mov qword [ret_stack_rsp], ret_stack\n"
    push str_123
addr_1518: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1519
    jmp addr_1365
addr_1519: ;"    mov rax, [ret_stack_rsp]\n"
    push str_124
addr_1520: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1521
    jmp addr_1365
addr_1521: ;"    mov qword [rax], quit\n"
    push str_125
addr_1522: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1523
    jmp addr_1365
addr_1523: ;"    jmp addr_"
    push str_126
addr_1524: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1525
    jmp addr_1365
addr_1525: ;(getprocTab)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1526
    jmp addr_733
addr_1526: ;"main"
    push str_127
addr_1527: ;(inTab)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1528
    jmp addr_638
addr_1528: ;0
    mov qword rax, 0
    push rax
addr_1529: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1530: ;if
    pop rbx
    test rbx, rbx
    jz addr_1532
addr_1531: ;[     "no main proc defined" (println)     (exit)   ]
addr_1531_0: ;"no main proc defined"
    push str_128
addr_1531_1: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1532
    jmp addr_78
addr_1531_2: ;(exit)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1532
    jmp addr_1335
addr_1531_3: ; 
addr_1532: ;"main"
    push str_129
addr_1533: ;(getTab)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1534
    jmp addr_592
addr_1534: ;1
    mov qword rax, 1
    push rax
addr_1535: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_1536: ;(strint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1537
    jmp addr_25
addr_1537: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1538
    jmp addr_1365
addr_1538: ;(writeoutln)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1539
    jmp addr_1376
addr_1539: ;"quit:\n"
    push str_130
addr_1540: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1541
    jmp addr_1365
addr_1541: ;"    mov rax, 60\n"
    push str_131
addr_1542: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1543
    jmp addr_1365
addr_1543: ;"    mov rdi, 0\n"
    push str_132
addr_1544: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1545
    jmp addr_1365
addr_1545: ;"    syscall\n"
    push str_133
addr_1546: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1547
    jmp addr_1365
addr_1547: ;"segment .data\n"
    push str_134
addr_1548: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1549
    jmp addr_1365
addr_1549: ;(getstringbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1550
    jmp addr_749
addr_1550: ;1
    mov qword rax, 1
    push rax
addr_1551: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1552: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1553
    jmp addr_1365
addr_1553: ;"segment .bss\n"
    push str_135
addr_1554: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1555
    jmp addr_1365
addr_1555: ;"args_ptr: resq 1\n"
    push str_136
addr_1556: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1557
    jmp addr_1365
addr_1557: ;"ret_stack_rsp: resq 1\n"
    push str_137
addr_1558: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1559
    jmp addr_1365
addr_1559: ;"ret_stack: resb 25565\n"
    push str_138
addr_1560: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1561
    jmp addr_1365
addr_1561: ;"ret_stack_end: resb 25565\n"
    push str_139
addr_1562: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1563
    jmp addr_1365
addr_1563: ;"mem: resb "
    push str_140
addr_1564: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1565
    jmp addr_1365
addr_1565: ;(progmemory)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1566
    jmp addr_1287
addr_1566: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1567: ;(strint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1568
    jmp addr_25
addr_1568: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1569
    jmp addr_1365
addr_1569: ;(writeoutln)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1570
    jmp addr_1376
addr_1570: ;disc
    pop rax
addr_1571: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1572: ;end
addr_1573: ;proc
    ; - proc endopasm 1 0
addr_1574: ;copy
    pop rax
    push rax
    push rax
addr_1575: ;IDENT_DO
    mov qword rax, 727
    push rax
addr_1576: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1577: ;if
    pop rbx
    test rbx, rbx
    jz addr_1579
addr_1578: ;[     "    pop rbx\n" (writeout)     "    test rbx, rbx\n" (writeout)     "    jnz addr_" (writeout)     (identstackpop) (strint) (writeout)     (writeoutln)   ]
addr_1578_0: ;"    pop rbx\n"
    push str_141
addr_1578_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1579
    jmp addr_1365
addr_1578_2: ;"    test rbx, rbx\n"
    push str_142
addr_1578_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1579
    jmp addr_1365
addr_1578_4: ;"    jnz addr_"
    push str_143
addr_1578_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1579
    jmp addr_1365
addr_1578_6: ;(identstackpop)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1579
    jmp addr_1215
addr_1578_7: ;(strint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1579
    jmp addr_25
addr_1578_8: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1579
    jmp addr_1365
addr_1578_9: ;(writeoutln)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1579
    jmp addr_1376
addr_1578_10: ; 
addr_1579: ;disc
    pop rax
addr_1580: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1581: ;end
addr_1582: ;proc
    ; - proc writeaddr 0 0
addr_1583: ;"addr_"
    push str_144
addr_1584: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1585
    jmp addr_1365
addr_1585: ;(getaddr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1586
    jmp addr_1307
addr_1586: ;(strint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1587
    jmp addr_25
addr_1587: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1588
    jmp addr_1365
addr_1588: ;": ;"
    push str_145
addr_1589: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1590
    jmp addr_1365
addr_1590: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1591
    jmp addr_737
addr_1591: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1592
    jmp addr_1365
addr_1592: ;(writeoutln)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1593
    jmp addr_1376
addr_1593: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1594: ;end
addr_1595: ;proc
    ; - proc writesubaddr 0 0
addr_1596: ;"addr_"
    push str_146
addr_1597: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1598
    jmp addr_1365
addr_1598: ;(addr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1599
    jmp addr_1279
addr_1599: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1600: ;1
    mov qword rax, 1
    push rax
addr_1601: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_1602: ;(strint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1603
    jmp addr_25
addr_1603: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1604
    jmp addr_1365
addr_1604: ;"_"
    push str_147
addr_1605: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1606
    jmp addr_1365
addr_1606: ;(getsubaddr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1607
    jmp addr_1323
addr_1607: ;(strint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1608
    jmp addr_25
addr_1608: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1609
    jmp addr_1365
addr_1609: ;": ;"
    push str_148
addr_1610: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1611
    jmp addr_1365
addr_1611: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1612
    jmp addr_741
addr_1612: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1613
    jmp addr_1365
addr_1613: ;(writeoutln)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1614
    jmp addr_1376
addr_1614: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1615: ;end
addr_1616: ;proc
    ; - proc badblockop 0 0
addr_1617: ;"BAD OPERATION: "
    push str_149
addr_1618: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1619
    jmp addr_78
addr_1619: ;"`"
    push str_150
addr_1620: ;(print)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1621
    jmp addr_50
addr_1621: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1622
    jmp addr_741
addr_1622: ;(print)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1623
    jmp addr_50
addr_1623: ;"`"
    push str_151
addr_1624: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1625
    jmp addr_78
addr_1625: ;"chunk"
    push str_152
addr_1626: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1627
    jmp addr_78
addr_1627: ;(getreadbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1628
    jmp addr_745
addr_1628: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1629
    jmp addr_78
addr_1629: ;"block"
    push str_153
addr_1630: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1631
    jmp addr_78
addr_1631: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1632
    jmp addr_737
addr_1632: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1633
    jmp addr_78
addr_1633: ;(exit)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1634
    jmp addr_1335
addr_1634: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1635: ;end
addr_1636: ;proc
    ; - proc getblockasm 1 0
addr_1637: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1638
    jmp addr_741
addr_1638: ;(alphanum)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1639
    jmp addr_371
addr_1639: ;if
    pop rbx
    test rbx, rbx
    jz addr_1641
addr_1640: ;[     disc     OP_PUSH   ]
addr_1640_0: ;disc
    pop rax
addr_1640_1: ;OP_PUSH
    mov qword rax, 681
    push rax
addr_1640_2: ; 
addr_1641: ;(writesubaddr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1642
    jmp addr_1596
addr_1642: ;copy
    pop rax
    push rax
    push rax
addr_1643: ;OP_BAD
    mov qword rax, 679
    push rax
addr_1644: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1645: ;if
    pop rbx
    test rbx, rbx
    jz addr_1647
addr_1646: ;[     (getconstTab) (getblockbuffer) (inTab) 0 == if (badblockop)      (getblockbuffer) (getTab) swap disc     (strint)     (getblockbuffer) (clearbuf) swap (strcpy) disc disc     disc     OP_PUSH   ]
addr_1646_0: ;(getconstTab)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1647
    jmp addr_729
addr_1646_1: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1647
    jmp addr_741
addr_1646_2: ;(inTab)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1647
    jmp addr_638
addr_1646_3: ;0
    mov qword rax, 0
    push rax
addr_1646_4: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1646_5: ;if
    pop rbx
    test rbx, rbx
    jz addr_1646_7
addr_1646_6: ;(badblockop)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1647
    jmp addr_1617
addr_1646_7: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1647
    jmp addr_741
addr_1646_8: ;(getTab)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1647
    jmp addr_592
addr_1646_9: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_1646_10: ;disc
    pop rax
addr_1646_11: ;(strint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1647
    jmp addr_25
addr_1646_12: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1647
    jmp addr_741
addr_1646_13: ;(clearbuf)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1647
    jmp addr_346
addr_1646_14: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_1646_15: ;(strcpy)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1647
    jmp addr_142
addr_1646_16: ;disc
    pop rax
addr_1646_17: ;disc
    pop rax
addr_1646_18: ;disc
    pop rax
addr_1646_19: ;OP_PUSH
    mov qword rax, 681
    push rax
addr_1646_20: ; 
addr_1647: ;copy
    pop rax
    push rax
    push rax
addr_1648: ;OP_NOP
    mov qword rax, 680
    push rax
addr_1649: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1650: ;if
    pop rbx
    test rbx, rbx
    jz addr_1652
addr_1651: ;[     disc ret   ]
addr_1651_0: ;disc
    pop rax
addr_1651_1: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1651_2: ; 
addr_1652: ;copy
    pop rax
    push rax
    push rax
addr_1653: ;OP_PUSH
    mov qword rax, 681
    push rax
addr_1654: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1655: ;if
    pop rbx
    test rbx, rbx
    jz addr_1657
addr_1656: ;[     "    mov qword rax, " (writeout)     (getblockbuffer) (writeout)     (writeoutln)     "    push rax\n" (writeout)     disc ret   ]
addr_1656_0: ;"    mov qword rax, "
    push str_154
addr_1656_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1657
    jmp addr_1365
addr_1656_2: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1657
    jmp addr_741
addr_1656_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1657
    jmp addr_1365
addr_1656_4: ;(writeoutln)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1657
    jmp addr_1376
addr_1656_5: ;"    push rax\n"
    push str_155
addr_1656_6: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1657
    jmp addr_1365
addr_1656_7: ;disc
    pop rax
addr_1656_8: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1656_9: ; 
addr_1657: ;copy
    pop rax
    push rax
    push rax
addr_1658: ;OP_COPY
    mov qword rax, 687
    push rax
addr_1659: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1660: ;if
    pop rbx
    test rbx, rbx
    jz addr_1662
addr_1661: ;[     "    pop rax\n" (writeout)     "    push rax\n" (writeout)     "    push rax\n" (writeout)     disc ret   ]
addr_1661_0: ;"    pop rax\n"
    push str_156
addr_1661_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1662
    jmp addr_1365
addr_1661_2: ;"    push rax\n"
    push str_157
addr_1661_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1662
    jmp addr_1365
addr_1661_4: ;"    push rax\n"
    push str_158
addr_1661_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1662
    jmp addr_1365
addr_1661_6: ;disc
    pop rax
addr_1661_7: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1661_8: ; 
addr_1662: ;copy
    pop rax
    push rax
    push rax
addr_1663: ;OP_SWAP
    mov qword rax, 685
    push rax
addr_1664: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1665: ;if
    pop rbx
    test rbx, rbx
    jz addr_1667
addr_1666: ;[     "    pop rax\n" (writeout)     "    pop rbx\n" (writeout)     "    push rax\n" (writeout)     "    push rbx\n" (writeout)     disc ret   ]
addr_1666_0: ;"    pop rax\n"
    push str_159
addr_1666_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1667
    jmp addr_1365
addr_1666_2: ;"    pop rbx\n"
    push str_160
addr_1666_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1667
    jmp addr_1365
addr_1666_4: ;"    push rax\n"
    push str_161
addr_1666_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1667
    jmp addr_1365
addr_1666_6: ;"    push rbx\n"
    push str_162
addr_1666_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1667
    jmp addr_1365
addr_1666_8: ;disc
    pop rax
addr_1666_9: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1666_10: ; 
addr_1667: ;copy
    pop rax
    push rax
    push rax
addr_1668: ;OP_SUB
    mov qword rax, 682
    push rax
addr_1669: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1670: ;if
    pop rbx
    test rbx, rbx
    jz addr_1672
addr_1671: ;[     "    pop rbx\n" (writeout)     "    pop rax\n" (writeout)     "    sub rax, rbx\n" (writeout)     "    push rax\n" (writeout)     disc ret   ]
addr_1671_0: ;"    pop rbx\n"
    push str_163
addr_1671_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1672
    jmp addr_1365
addr_1671_2: ;"    pop rax\n"
    push str_164
addr_1671_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1672
    jmp addr_1365
addr_1671_4: ;"    sub rax, rbx\n"
    push str_165
addr_1671_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1672
    jmp addr_1365
addr_1671_6: ;"    push rax\n"
    push str_166
addr_1671_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1672
    jmp addr_1365
addr_1671_8: ;disc
    pop rax
addr_1671_9: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1671_10: ; 
addr_1672: ;copy
    pop rax
    push rax
    push rax
addr_1673: ;OP_PLUS
    mov qword rax, 684
    push rax
addr_1674: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1675: ;if
    pop rbx
    test rbx, rbx
    jz addr_1677
addr_1676: ;[     "    pop rax\n" (writeout)     "    pop rbx\n" (writeout)     "    add rax, rbx\n" (writeout)     "    push rax\n" (writeout)     disc ret   ]
addr_1676_0: ;"    pop rax\n"
    push str_167
addr_1676_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1677
    jmp addr_1365
addr_1676_2: ;"    pop rbx\n"
    push str_168
addr_1676_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1677
    jmp addr_1365
addr_1676_4: ;"    add rax, rbx\n"
    push str_169
addr_1676_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1677
    jmp addr_1365
addr_1676_6: ;"    push rax\n"
    push str_170
addr_1676_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1677
    jmp addr_1365
addr_1676_8: ;disc
    pop rax
addr_1676_9: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1676_10: ; 
addr_1677: ;copy
    pop rax
    push rax
    push rax
addr_1678: ;OP_AND
    mov qword rax, 714
    push rax
addr_1679: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1680: ;if
    pop rbx
    test rbx, rbx
    jz addr_1682
addr_1681: ;[     "    pop rax\n" (writeout)     "    pop rbx\n" (writeout)     "    and rax, rbx\n" (writeout)     "    push rax\n" (writeout)     disc ret   ]
addr_1681_0: ;"    pop rax\n"
    push str_171
addr_1681_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1682
    jmp addr_1365
addr_1681_2: ;"    pop rbx\n"
    push str_172
addr_1681_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1682
    jmp addr_1365
addr_1681_4: ;"    and rax, rbx\n"
    push str_173
addr_1681_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1682
    jmp addr_1365
addr_1681_6: ;"    push rax\n"
    push str_174
addr_1681_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1682
    jmp addr_1365
addr_1681_8: ;disc
    pop rax
addr_1681_9: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1681_10: ; 
addr_1682: ;copy
    pop rax
    push rax
    push rax
addr_1683: ;OP_MUL
    mov qword rax, 683
    push rax
addr_1684: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1685: ;if
    pop rbx
    test rbx, rbx
    jz addr_1687
addr_1686: ;[     "    pop rax\n" (writeout)     "    pop rbx\n" (writeout)     "    imul rax, rbx\n" (writeout)     "    push rax\n" (writeout)     disc ret   ]
addr_1686_0: ;"    pop rax\n"
    push str_175
addr_1686_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1687
    jmp addr_1365
addr_1686_2: ;"    pop rbx\n"
    push str_176
addr_1686_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1687
    jmp addr_1365
addr_1686_4: ;"    imul rax, rbx\n"
    push str_177
addr_1686_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1687
    jmp addr_1365
addr_1686_6: ;"    push rax\n"
    push str_178
addr_1686_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1687
    jmp addr_1365
addr_1686_8: ;disc
    pop rax
addr_1686_9: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1686_10: ; 
addr_1687: ;copy
    pop rax
    push rax
    push rax
addr_1688: ;OP_DIV
    mov qword rax, 723
    push rax
addr_1689: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1690: ;if
    pop rbx
    test rbx, rbx
    jz addr_1692
addr_1691: ;[     "    xor rdx, rdx\n" (writeout)     "    pop rbx\n" (writeout)     "    pop rax\n" (writeout)     "    idiv rbx\n" (writeout)     "    push rax\n" (writeout)     "    push rdx\n" (writeout)     disc ret   ]
addr_1691_0: ;"    xor rdx, rdx\n"
    push str_179
addr_1691_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1692
    jmp addr_1365
addr_1691_2: ;"    pop rbx\n"
    push str_180
addr_1691_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1692
    jmp addr_1365
addr_1691_4: ;"    pop rax\n"
    push str_181
addr_1691_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1692
    jmp addr_1365
addr_1691_6: ;"    idiv rbx\n"
    push str_182
addr_1691_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1692
    jmp addr_1365
addr_1691_8: ;"    push rax\n"
    push str_183
addr_1691_9: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1692
    jmp addr_1365
addr_1691_10: ;"    push rdx\n"
    push str_184
addr_1691_11: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1692
    jmp addr_1365
addr_1691_12: ;disc
    pop rax
addr_1691_13: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1691_14: ; 
addr_1692: ;copy
    pop rax
    push rax
    push rax
addr_1693: ;OP_COVR
    mov qword rax, 688
    push rax
addr_1694: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1695: ;if
    pop rbx
    test rbx, rbx
    jz addr_1697
addr_1696: ;[     "    pop rax\n" (writeout)     "    pop rbx\n" (writeout)     "    push rbx\n" (writeout)     "    push rax\n" (writeout)     "    push rbx\n" (writeout)     disc ret   ]
addr_1696_0: ;"    pop rax\n"
    push str_185
addr_1696_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1697
    jmp addr_1365
addr_1696_2: ;"    pop rbx\n"
    push str_186
addr_1696_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1697
    jmp addr_1365
addr_1696_4: ;"    push rbx\n"
    push str_187
addr_1696_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1697
    jmp addr_1365
addr_1696_6: ;"    push rax\n"
    push str_188
addr_1696_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1697
    jmp addr_1365
addr_1696_8: ;"    push rbx\n"
    push str_189
addr_1696_9: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1697
    jmp addr_1365
addr_1696_10: ;disc
    pop rax
addr_1696_11: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1696_12: ; 
addr_1697: ;copy
    pop rax
    push rax
    push rax
addr_1698: ;OP_GPTR
    mov qword rax, 689
    push rax
addr_1699: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1700: ;if
    pop rbx
    test rbx, rbx
    jz addr_1702
addr_1701: ;[     (cmdflags)     7     putc disc     disc ret   ]
addr_1701_0: ;(cmdflags)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1702
    jmp addr_1275
addr_1701_1: ;7
    mov qword rax, 7
    push rax
addr_1701_2: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_1701_3: ;disc
    pop rax
addr_1701_4: ;disc
    pop rax
addr_1701_5: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1701_6: ; 
addr_1702: ;copy
    pop rax
    push rax
    push rax
addr_1703: ;OP_ARGC
    mov qword rax, 694
    push rax
addr_1704: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1705: ;if
    pop rbx
    test rbx, rbx
    jz addr_1707
addr_1706: ;[     "    mov rax, [args_ptr]\n" (writeout)     "    mov rax, [rax]\n" (writeout)     "    push rax\n" (writeout)     disc ret   ]
addr_1706_0: ;"    mov rax, [args_ptr]\n"
    push str_190
addr_1706_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1707
    jmp addr_1365
addr_1706_2: ;"    mov rax, [rax]\n"
    push str_191
addr_1706_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1707
    jmp addr_1365
addr_1706_4: ;"    push rax\n"
    push str_192
addr_1706_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1707
    jmp addr_1365
addr_1706_6: ;disc
    pop rax
addr_1706_7: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1706_8: ; 
addr_1707: ;copy
    pop rax
    push rax
    push rax
addr_1708: ;OP_ARGV
    mov qword rax, 693
    push rax
addr_1709: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1710: ;if
    pop rbx
    test rbx, rbx
    jz addr_1712
addr_1711: ;[     "    mov rax, [args_ptr]\n" (writeout)     "    add rax, 8\n" (writeout)     "    push rax\n" (writeout)     disc ret   ]
addr_1711_0: ;"    mov rax, [args_ptr]\n"
    push str_193
addr_1711_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1712
    jmp addr_1365
addr_1711_2: ;"    add rax, 8\n"
    push str_194
addr_1711_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1712
    jmp addr_1365
addr_1711_4: ;"    push rax\n"
    push str_195
addr_1711_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1712
    jmp addr_1365
addr_1711_6: ;disc
    pop rax
addr_1711_7: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1711_8: ; 
addr_1712: ;copy
    pop rax
    push rax
    push rax
addr_1713: ;OP_QUIT
    mov qword rax, 702
    push rax
addr_1714: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1715: ;if
    pop rbx
    test rbx, rbx
    jz addr_1717
addr_1716: ;[     "    jmp quit\n" (writeout)     disc ret   ]
addr_1716_0: ;"    jmp quit\n"
    push str_196
addr_1716_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1717
    jmp addr_1365
addr_1716_2: ;disc
    pop rax
addr_1716_3: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1716_4: ; 
addr_1717: ;copy
    pop rax
    push rax
    push rax
addr_1718: ;OP_RET
    mov qword rax, 701
    push rax
addr_1719: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1720: ;if
    pop rbx
    test rbx, rbx
    jz addr_1722
addr_1721: ;[     "    mov rax, [ret_stack_rsp]\n" (writeout)     "    sub rax, 8\n" (writeout)     "    mov qword [ret_stack_rsp], rax\n" (writeout)     "    add rax, 8\n" (writeout)     "    jmp [rax]\n" (writeout)     disc ret   ]
addr_1721_0: ;"    mov rax, [ret_stack_rsp]\n"
    push str_197
addr_1721_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1722
    jmp addr_1365
addr_1721_2: ;"    sub rax, 8\n"
    push str_198
addr_1721_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1722
    jmp addr_1365
addr_1721_4: ;"    mov qword [ret_stack_rsp], rax\n"
    push str_199
addr_1721_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1722
    jmp addr_1365
addr_1721_6: ;"    add rax, 8\n"
    push str_200
addr_1721_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1722
    jmp addr_1365
addr_1721_8: ;"    jmp [rax]\n"
    push str_201
addr_1721_9: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1722
    jmp addr_1365
addr_1721_10: ;disc
    pop rax
addr_1721_11: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1721_12: ; 
addr_1722: ;copy
    pop rax
    push rax
    push rax
addr_1723: ;OP_DISC
    mov qword rax, 692
    push rax
addr_1724: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1725: ;if
    pop rbx
    test rbx, rbx
    jz addr_1727
addr_1726: ;[     "    pop rax\n" (writeout)     disc ret   ]
addr_1726_0: ;"    pop rax\n"
    push str_202
addr_1726_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1727
    jmp addr_1365
addr_1726_2: ;disc
    pop rax
addr_1726_3: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1726_4: ; 
addr_1727: ;copy
    pop rax
    push rax
    push rax
addr_1728: ;OP_CONST
    mov qword rax, 698
    push rax
addr_1729: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1730: ;if
    pop rbx
    test rbx, rbx
    jz addr_1732
addr_1731: ;[     (cmdflags)     5     putc disc     disc ret   ]
addr_1731_0: ;(cmdflags)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1732
    jmp addr_1275
addr_1731_1: ;5
    mov qword rax, 5
    push rax
addr_1731_2: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_1731_3: ;disc
    pop rax
addr_1731_4: ;disc
    pop rax
addr_1731_5: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1731_6: ; 
addr_1732: ;copy
    pop rax
    push rax
    push rax
addr_1733: ;OP_READ
    mov qword rax, 690
    push rax
addr_1734: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1735: ;if
    pop rbx
    test rbx, rbx
    jz addr_1737
addr_1736: ;[     "    pop rax\n" (writeout)     "    xor rbx, rbx\n" (writeout)     "    mov rbx, [rax]\n" (writeout)     "    push rbx\n" (writeout)     disc ret   ]
addr_1736_0: ;"    pop rax\n"
    push str_203
addr_1736_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1737
    jmp addr_1365
addr_1736_2: ;"    xor rbx, rbx\n"
    push str_204
addr_1736_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1737
    jmp addr_1365
addr_1736_4: ;"    mov rbx, [rax]\n"
    push str_205
addr_1736_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1737
    jmp addr_1365
addr_1736_6: ;"    push rbx\n"
    push str_206
addr_1736_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1737
    jmp addr_1365
addr_1736_8: ;disc
    pop rax
addr_1736_9: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1736_10: ; 
addr_1737: ;copy
    pop rax
    push rax
    push rax
addr_1738: ;OP_PUTC
    mov qword rax, 691
    push rax
addr_1739: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1740: ;if
    pop rbx
    test rbx, rbx
    jz addr_1742
addr_1741: ;[     "    pop rbx\n" (writeout)     "    pop rax\n" (writeout)     "    mov byte [rax], bl\n" (writeout)     "    push rax\n" (writeout)     disc ret   ]
addr_1741_0: ;"    pop rbx\n"
    push str_207
addr_1741_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1742
    jmp addr_1365
addr_1741_2: ;"    pop rax\n"
    push str_208
addr_1741_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1742
    jmp addr_1365
addr_1741_4: ;"    mov byte [rax], bl\n"
    push str_209
addr_1741_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1742
    jmp addr_1365
addr_1741_6: ;"    push rax\n"
    push str_210
addr_1741_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1742
    jmp addr_1365
addr_1741_8: ;disc
    pop rax
addr_1741_9: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1741_10: ; 
addr_1742: ;copy
    pop rax
    push rax
    push rax
addr_1743: ;OP_PUT
    mov qword rax, 722
    push rax
addr_1744: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1745: ;if
    pop rbx
    test rbx, rbx
    jz addr_1747
addr_1746: ;[     "    pop rbx\n" (writeout)     "    pop rax\n" (writeout)     "    mov qword [rax], rbx\n" (writeout)     "    push rax\n" (writeout)     disc ret   ]
addr_1746_0: ;"    pop rbx\n"
    push str_211
addr_1746_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1747
    jmp addr_1365
addr_1746_2: ;"    pop rax\n"
    push str_212
addr_1746_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1747
    jmp addr_1365
addr_1746_4: ;"    mov qword [rax], rbx\n"
    push str_213
addr_1746_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1747
    jmp addr_1365
addr_1746_6: ;"    push rax\n"
    push str_214
addr_1746_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1747
    jmp addr_1365
addr_1746_8: ;disc
    pop rax
addr_1746_9: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1746_10: ; 
addr_1747: ;copy
    pop rax
    push rax
    push rax
addr_1748: ;OP_NQ
    mov qword rax, 710
    push rax
addr_1749: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1750: ;if
    pop rbx
    test rbx, rbx
    jz addr_1752
addr_1751: ;[     "    mov rcx, 0\n" (writeout)     "    mov rdx, 1\n" (writeout)     "    pop rbx\n" (writeout)     "    pop rax\n" (writeout)     "    cmp rax, rbx\n" (writeout)     "    cmovne rcx, rdx\n" (writeout)     "    push rcx\n" (writeout)     disc ret   ]
addr_1751_0: ;"    mov rcx, 0\n"
    push str_215
addr_1751_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1752
    jmp addr_1365
addr_1751_2: ;"    mov rdx, 1\n"
    push str_216
addr_1751_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1752
    jmp addr_1365
addr_1751_4: ;"    pop rbx\n"
    push str_217
addr_1751_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1752
    jmp addr_1365
addr_1751_6: ;"    pop rax\n"
    push str_218
addr_1751_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1752
    jmp addr_1365
addr_1751_8: ;"    cmp rax, rbx\n"
    push str_219
addr_1751_9: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1752
    jmp addr_1365
addr_1751_10: ;"    cmovne rcx, rdx\n"
    push str_220
addr_1751_11: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1752
    jmp addr_1365
addr_1751_12: ;"    push rcx\n"
    push str_221
addr_1751_13: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1752
    jmp addr_1365
addr_1751_14: ;disc
    pop rax
addr_1751_15: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1751_16: ; 
addr_1752: ;copy
    pop rax
    push rax
    push rax
addr_1753: ;OP_EQ
    mov qword rax, 711
    push rax
addr_1754: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1755: ;if
    pop rbx
    test rbx, rbx
    jz addr_1757
addr_1756: ;[     "    mov rcx, 0\n" (writeout)     "    mov rdx, 1\n" (writeout)     "    pop rbx\n" (writeout)     "    pop rax\n" (writeout)     "    cmp rax, rbx\n" (writeout)     "    cmove rcx, rdx\n" (writeout)     "    push rcx\n" (writeout)     disc ret   ]
addr_1756_0: ;"    mov rcx, 0\n"
    push str_222
addr_1756_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1757
    jmp addr_1365
addr_1756_2: ;"    mov rdx, 1\n"
    push str_223
addr_1756_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1757
    jmp addr_1365
addr_1756_4: ;"    pop rbx\n"
    push str_224
addr_1756_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1757
    jmp addr_1365
addr_1756_6: ;"    pop rax\n"
    push str_225
addr_1756_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1757
    jmp addr_1365
addr_1756_8: ;"    cmp rax, rbx\n"
    push str_226
addr_1756_9: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1757
    jmp addr_1365
addr_1756_10: ;"    cmove rcx, rdx\n"
    push str_227
addr_1756_11: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1757
    jmp addr_1365
addr_1756_12: ;"    push rcx\n"
    push str_228
addr_1756_13: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1757
    jmp addr_1365
addr_1756_14: ;disc
    pop rax
addr_1756_15: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1756_16: ; 
addr_1757: ;copy
    pop rax
    push rax
    push rax
addr_1758: ;OP_GT
    mov qword rax, 713
    push rax
addr_1759: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1760: ;if
    pop rbx
    test rbx, rbx
    jz addr_1762
addr_1761: ;[     "    mov rcx, 0\n" (writeout)     "    mov rdx, 1\n" (writeout)     "    pop rbx\n" (writeout)     "    pop rax\n" (writeout)     "    cmp rax, rbx\n" (writeout)     "    cmovg rcx, rdx\n" (writeout)     "    push rcx\n" (writeout)     disc ret   ]
addr_1761_0: ;"    mov rcx, 0\n"
    push str_229
addr_1761_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1762
    jmp addr_1365
addr_1761_2: ;"    mov rdx, 1\n"
    push str_230
addr_1761_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1762
    jmp addr_1365
addr_1761_4: ;"    pop rbx\n"
    push str_231
addr_1761_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1762
    jmp addr_1365
addr_1761_6: ;"    pop rax\n"
    push str_232
addr_1761_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1762
    jmp addr_1365
addr_1761_8: ;"    cmp rax, rbx\n"
    push str_233
addr_1761_9: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1762
    jmp addr_1365
addr_1761_10: ;"    cmovg rcx, rdx\n"
    push str_234
addr_1761_11: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1762
    jmp addr_1365
addr_1761_12: ;"    push rcx\n"
    push str_235
addr_1761_13: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1762
    jmp addr_1365
addr_1761_14: ;disc
    pop rax
addr_1761_15: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1761_16: ; 
addr_1762: ;copy
    pop rax
    push rax
    push rax
addr_1763: ;OP_LT
    mov qword rax, 712
    push rax
addr_1764: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1765: ;if
    pop rbx
    test rbx, rbx
    jz addr_1767
addr_1766: ;[     "    mov rcx, 0\n" (writeout)     "    mov rdx, 1\n" (writeout)     "    pop rbx\n" (writeout)     "    pop rax\n" (writeout)     "    cmp rax, rbx\n" (writeout)     "    cmovl rcx, rdx\n" (writeout)     "    push rcx\n" (writeout)     disc ret   ]
addr_1766_0: ;"    mov rcx, 0\n"
    push str_236
addr_1766_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1767
    jmp addr_1365
addr_1766_2: ;"    mov rdx, 1\n"
    push str_237
addr_1766_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1767
    jmp addr_1365
addr_1766_4: ;"    pop rbx\n"
    push str_238
addr_1766_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1767
    jmp addr_1365
addr_1766_6: ;"    pop rax\n"
    push str_239
addr_1766_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1767
    jmp addr_1365
addr_1766_8: ;"    cmp rax, rbx\n"
    push str_240
addr_1766_9: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1767
    jmp addr_1365
addr_1766_10: ;"    cmovl rcx, rdx\n"
    push str_241
addr_1766_11: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1767
    jmp addr_1365
addr_1766_12: ;"    push rcx\n"
    push str_242
addr_1766_13: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1767
    jmp addr_1365
addr_1766_14: ;disc
    pop rax
addr_1766_15: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1766_16: ; 
addr_1767: ;copy
    pop rax
    push rax
    push rax
addr_1768: ;OP_IF
    mov qword rax, 706
    push rax
addr_1769: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1770: ;if
    pop rbx
    test rbx, rbx
    jz addr_1772
addr_1771: ;[     "    pop rbx\n" (writeout)     "    test rbx, rbx\n" (writeout)     "    jz addr_" (writeout)     (addr) read 1 - (strint) (writeout)     "_" (writeout)     (subaddr) read 1 + (strint) (writeout)     (writeoutln)     disc ret   ]
addr_1771_0: ;"    pop rbx\n"
    push str_243
addr_1771_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1772
    jmp addr_1365
addr_1771_2: ;"    test rbx, rbx\n"
    push str_244
addr_1771_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1772
    jmp addr_1365
addr_1771_4: ;"    jz addr_"
    push str_245
addr_1771_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1772
    jmp addr_1365
addr_1771_6: ;(addr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1772
    jmp addr_1279
addr_1771_7: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1771_8: ;1
    mov qword rax, 1
    push rax
addr_1771_9: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_1771_10: ;(strint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1772
    jmp addr_25
addr_1771_11: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1772
    jmp addr_1365
addr_1771_12: ;"_"
    push str_246
addr_1771_13: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1772
    jmp addr_1365
addr_1771_14: ;(subaddr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1772
    jmp addr_1291
addr_1771_15: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1771_16: ;1
    mov qword rax, 1
    push rax
addr_1771_17: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1771_18: ;(strint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1772
    jmp addr_25
addr_1771_19: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1772
    jmp addr_1365
addr_1771_20: ;(writeoutln)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1772
    jmp addr_1376
addr_1771_21: ;disc
    pop rax
addr_1771_22: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1771_23: ; 
addr_1772: ;copy
    pop rax
    push rax
    push rax
addr_1773: ;OP_SYS0
    mov qword rax, 715
    push rax
addr_1774: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1775: ;if
    pop rbx
    test rbx, rbx
    jz addr_1777
addr_1776: ;[     "    pop rax\n" (writeout)      "    syscall\n" (writeout)      "    push rax\n" (writeout)      disc ret   ]
addr_1776_0: ;"    pop rax\n"
    push str_247
addr_1776_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1777
    jmp addr_1365
addr_1776_2: ;"    syscall\n"
    push str_248
addr_1776_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1777
    jmp addr_1365
addr_1776_4: ;"    push rax\n"
    push str_249
addr_1776_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1777
    jmp addr_1365
addr_1776_6: ;disc
    pop rax
addr_1776_7: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1776_8: ; 
addr_1777: ;copy
    pop rax
    push rax
    push rax
addr_1778: ;OP_SYS1
    mov qword rax, 716
    push rax
addr_1779: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1780: ;if
    pop rbx
    test rbx, rbx
    jz addr_1782
addr_1781: ;[     "    pop rax\n" (writeout)      "    pop rdi\n" (writeout)      "    syscall\n" (writeout)      "    push rax\n" (writeout)      disc ret   ]
addr_1781_0: ;"    pop rax\n"
    push str_250
addr_1781_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1782
    jmp addr_1365
addr_1781_2: ;"    pop rdi\n"
    push str_251
addr_1781_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1782
    jmp addr_1365
addr_1781_4: ;"    syscall\n"
    push str_252
addr_1781_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1782
    jmp addr_1365
addr_1781_6: ;"    push rax\n"
    push str_253
addr_1781_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1782
    jmp addr_1365
addr_1781_8: ;disc
    pop rax
addr_1781_9: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1781_10: ; 
addr_1782: ;copy
    pop rax
    push rax
    push rax
addr_1783: ;OP_SYS2
    mov qword rax, 717
    push rax
addr_1784: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1785: ;if
    pop rbx
    test rbx, rbx
    jz addr_1787
addr_1786: ;[     "    pop rax\n" (writeout)      "    pop rdi\n" (writeout)      "    pop rsi\n" (writeout)      "    syscall\n" (writeout)      "    push rax\n" (writeout)      disc ret   ]
addr_1786_0: ;"    pop rax\n"
    push str_254
addr_1786_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1787
    jmp addr_1365
addr_1786_2: ;"    pop rdi\n"
    push str_255
addr_1786_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1787
    jmp addr_1365
addr_1786_4: ;"    pop rsi\n"
    push str_256
addr_1786_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1787
    jmp addr_1365
addr_1786_6: ;"    syscall\n"
    push str_257
addr_1786_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1787
    jmp addr_1365
addr_1786_8: ;"    push rax\n"
    push str_258
addr_1786_9: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1787
    jmp addr_1365
addr_1786_10: ;disc
    pop rax
addr_1786_11: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1786_12: ; 
addr_1787: ;copy
    pop rax
    push rax
    push rax
addr_1788: ;OP_SYS3
    mov qword rax, 718
    push rax
addr_1789: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1790: ;if
    pop rbx
    test rbx, rbx
    jz addr_1792
addr_1791: ;[     "    pop rax\n" (writeout)      "    pop rdi\n" (writeout)      "    pop rsi\n" (writeout)      "    pop rdx\n" (writeout)      "    syscall\n" (writeout)      "    push rax\n" (writeout)      disc ret   ]
addr_1791_0: ;"    pop rax\n"
    push str_259
addr_1791_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1792
    jmp addr_1365
addr_1791_2: ;"    pop rdi\n"
    push str_260
addr_1791_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1792
    jmp addr_1365
addr_1791_4: ;"    pop rsi\n"
    push str_261
addr_1791_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1792
    jmp addr_1365
addr_1791_6: ;"    pop rdx\n"
    push str_262
addr_1791_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1792
    jmp addr_1365
addr_1791_8: ;"    syscall\n"
    push str_263
addr_1791_9: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1792
    jmp addr_1365
addr_1791_10: ;"    push rax\n"
    push str_264
addr_1791_11: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1792
    jmp addr_1365
addr_1791_12: ;disc
    pop rax
addr_1791_13: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1791_14: ; 
addr_1792: ;copy
    pop rax
    push rax
    push rax
addr_1793: ;OP_SYS4
    mov qword rax, 719
    push rax
addr_1794: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1795: ;if
    pop rbx
    test rbx, rbx
    jz addr_1797
addr_1796: ;[     "    pop rax\n" (writeout)      "    pop rdi\n" (writeout)      "    pop rsi\n" (writeout)      "    pop rdx\n" (writeout)      "    pop r10\n" (writeout)      "    syscall\n" (writeout)      "    push rax\n" (writeout)      disc ret   ]
addr_1796_0: ;"    pop rax\n"
    push str_265
addr_1796_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1797
    jmp addr_1365
addr_1796_2: ;"    pop rdi\n"
    push str_266
addr_1796_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1797
    jmp addr_1365
addr_1796_4: ;"    pop rsi\n"
    push str_267
addr_1796_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1797
    jmp addr_1365
addr_1796_6: ;"    pop rdx\n"
    push str_268
addr_1796_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1797
    jmp addr_1365
addr_1796_8: ;"    pop r10\n"
    push str_269
addr_1796_9: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1797
    jmp addr_1365
addr_1796_10: ;"    syscall\n"
    push str_270
addr_1796_11: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1797
    jmp addr_1365
addr_1796_12: ;"    push rax\n"
    push str_271
addr_1796_13: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1797
    jmp addr_1365
addr_1796_14: ;disc
    pop rax
addr_1796_15: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1796_16: ; 
addr_1797: ;copy
    pop rax
    push rax
    push rax
addr_1798: ;OP_SYS5
    mov qword rax, 720
    push rax
addr_1799: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1800: ;if
    pop rbx
    test rbx, rbx
    jz addr_1802
addr_1801: ;[     "    pop rax\n" (writeout)      "    pop rdi\n" (writeout)      "    pop rsi\n" (writeout)      "    pop rdx\n" (writeout)      "    pop r10\n" (writeout)      "    pop r8\n" (writeout)      "    syscall\n" (writeout)      "    push rax\n" (writeout)      disc ret   ]
addr_1801_0: ;"    pop rax\n"
    push str_272
addr_1801_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1802
    jmp addr_1365
addr_1801_2: ;"    pop rdi\n"
    push str_273
addr_1801_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1802
    jmp addr_1365
addr_1801_4: ;"    pop rsi\n"
    push str_274
addr_1801_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1802
    jmp addr_1365
addr_1801_6: ;"    pop rdx\n"
    push str_275
addr_1801_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1802
    jmp addr_1365
addr_1801_8: ;"    pop r10\n"
    push str_276
addr_1801_9: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1802
    jmp addr_1365
addr_1801_10: ;"    pop r8\n"
    push str_277
addr_1801_11: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1802
    jmp addr_1365
addr_1801_12: ;"    syscall\n"
    push str_278
addr_1801_13: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1802
    jmp addr_1365
addr_1801_14: ;"    push rax\n"
    push str_279
addr_1801_15: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1802
    jmp addr_1365
addr_1801_16: ;disc
    pop rax
addr_1801_17: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1801_18: ; 
addr_1802: ;copy
    pop rax
    push rax
    push rax
addr_1803: ;OP_SYS6
    mov qword rax, 721
    push rax
addr_1804: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1805: ;if
    pop rbx
    test rbx, rbx
    jz addr_1807
addr_1806: ;[     "    pop rax\n" (writeout)      "    pop rdi\n" (writeout)      "    pop rsi\n" (writeout)      "    pop rdx\n" (writeout)      "    pop r10\n" (writeout)      "    pop r8\n" (writeout)      "    pop r9\n" (writeout)      "    syscall\n" (writeout)      "    push rax\n" (writeout)      disc ret   ]
addr_1806_0: ;"    pop rax\n"
    push str_280
addr_1806_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1807
    jmp addr_1365
addr_1806_2: ;"    pop rdi\n"
    push str_281
addr_1806_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1807
    jmp addr_1365
addr_1806_4: ;"    pop rsi\n"
    push str_282
addr_1806_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1807
    jmp addr_1365
addr_1806_6: ;"    pop rdx\n"
    push str_283
addr_1806_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1807
    jmp addr_1365
addr_1806_8: ;"    pop r10\n"
    push str_284
addr_1806_9: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1807
    jmp addr_1365
addr_1806_10: ;"    pop r8\n"
    push str_285
addr_1806_11: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1807
    jmp addr_1365
addr_1806_12: ;"    pop r9\n"
    push str_286
addr_1806_13: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1807
    jmp addr_1365
addr_1806_14: ;"    syscall\n"
    push str_287
addr_1806_15: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1807
    jmp addr_1365
addr_1806_16: ;"    push rax\n"
    push str_288
addr_1806_17: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1807
    jmp addr_1365
addr_1806_18: ;disc
    pop rax
addr_1806_19: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1806_20: ; 
addr_1807: ;copy
    pop rax
    push rax
    push rax
addr_1808: ;OP_DUMP
    mov qword rax, 686
    push rax
addr_1809: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1810: ;if
    pop rbx
    test rbx, rbx
    jz addr_1812
addr_1811: ;[     "    pop rax\n" (writeout)      "    call print\n" (writeout)     disc ret   ]
addr_1811_0: ;"    pop rax\n"
    push str_289
addr_1811_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1812
    jmp addr_1365
addr_1811_2: ;"    call print\n"
    push str_290
addr_1811_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1812
    jmp addr_1365
addr_1811_4: ;disc
    pop rax
addr_1811_5: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1811_6: ; 
addr_1812: ;copy
    pop rax
    push rax
    push rax
addr_1813: ;IDENT_INC
    mov qword rax, 725
    push rax
addr_1814: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1815: ;if
    pop rbx
    test rbx, rbx
    jz addr_1817
addr_1816: ;[     (cmdflags)     6     putc disc     disc ret   ]
addr_1816_0: ;(cmdflags)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1817
    jmp addr_1275
addr_1816_1: ;6
    mov qword rax, 6
    push rax
addr_1816_2: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_1816_3: ;disc
    pop rax
addr_1816_4: ;disc
    pop rax
addr_1816_5: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1816_6: ; 
addr_1817: ;copy
    pop rax
    push rax
    push rax
addr_1818: ;IDENT_END
    mov qword rax, 728
    push rax
addr_1819: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1820: ;if
    pop rbx
    test rbx, rbx
    jz addr_1822
addr_1821: ;[     (identstackpop)     (endopasm)     disc ret   ]
addr_1821_0: ;(identstackpop)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1822
    jmp addr_1215
addr_1821_1: ;(endopasm)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1822
    jmp addr_1574
addr_1821_2: ;disc
    pop rax
addr_1821_3: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1821_4: ; 
addr_1822: ;copy
    pop rax
    push rax
    push rax
addr_1823: ;IDENT_DO
    mov qword rax, 727
    push rax
addr_1824: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1825: ;if
    pop rbx
    test rbx, rbx
    jz addr_1827
addr_1826: ;[     (addr) read 1 - (identstackpush)     IDENT_DO (identstackpush)      disc ret   ]
addr_1826_0: ;(addr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1827
    jmp addr_1279
addr_1826_1: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1826_2: ;1
    mov qword rax, 1
    push rax
addr_1826_3: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_1826_4: ;(identstackpush)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1827
    jmp addr_1197
addr_1826_5: ;IDENT_DO
    mov qword rax, 727
    push rax
addr_1826_6: ;(identstackpush)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1827
    jmp addr_1197
addr_1826_7: ;disc
    pop rax
addr_1826_8: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1826_9: ; 
addr_1827: ;"; unimp "
    push str_291
addr_1828: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1829
    jmp addr_1365
addr_1829: ;(getopname)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1830
    jmp addr_968
addr_1830: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1831
    jmp addr_1365
addr_1831: ;" "
    push str_292
addr_1832: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1833
    jmp addr_1365
addr_1833: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1834
    jmp addr_737
addr_1834: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1835
    jmp addr_1365
addr_1835: ;(writeoutln)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1836
    jmp addr_1376
addr_1836: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1837: ;end
addr_1838: ;proc
    ; - proc parsecall 0 0
addr_1839: ;"    push str_"
    push str_293
addr_1840: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1841
    jmp addr_1365
addr_1841: ;(getstringidx)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1842
    jmp addr_1295
addr_1842: ;(strint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1843
    jmp addr_25
addr_1843: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1844
    jmp addr_1365
addr_1844: ;(writeoutln)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1845
    jmp addr_1376
addr_1845: ;"str_"
    push str_294
addr_1846: ;(getstringbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1847
    jmp addr_749
addr_1847: ;copy
    pop rax
    push rax
    push rax
addr_1848: ;(strlen)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1849
    jmp addr_308
addr_1849: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1850: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_1851: ;(strcpy)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1852
    jmp addr_142
addr_1852: ;disc
    pop rax
addr_1853: ;disc
    pop rax
addr_1854: ;(stringidx)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1855
    jmp addr_1283
addr_1855: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1856: ;1
    mov qword rax, 1
    push rax
addr_1857: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_1858: ;(strint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1859
    jmp addr_25
addr_1859: ;(getstringbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1860
    jmp addr_749
addr_1860: ;copy
    pop rax
    push rax
    push rax
addr_1861: ;(strlen)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1862
    jmp addr_308
addr_1862: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1863: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_1864: ;(strcpy)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1865
    jmp addr_142
addr_1865: ;disc
    pop rax
addr_1866: ;disc
    pop rax
addr_1867: ;": db "
    push str_295
addr_1868: ;(getstringbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1869
    jmp addr_749
addr_1869: ;copy
    pop rax
    push rax
    push rax
addr_1870: ;(strlen)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1871
    jmp addr_308
addr_1871: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1872: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_1873: ;(strcpy)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1874
    jmp addr_142
addr_1874: ;disc
    pop rax
addr_1875: ;disc
    pop rax
addr_1876: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1877
    jmp addr_741
addr_1877: ;(inner)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1878
    jmp addr_1237
addr_1878: ;copy
    pop rax
    push rax
    push rax
addr_1879: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1880: ;255
    mov qword rax, 255
    push rax
addr_1881: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_1882: ;(strint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1883
    jmp addr_25
addr_1883: ;(getstringbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1884
    jmp addr_749
addr_1884: ;copy
    pop rax
    push rax
    push rax
addr_1885: ;(strlen)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1886
    jmp addr_308
addr_1886: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1887: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_1888: ;(strcpy)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1889
    jmp addr_142
addr_1889: ;disc
    pop rax
addr_1890: ;disc
    pop rax
addr_1891: ;do
addr_1892: ;1
    mov qword rax, 1
    push rax
addr_1893: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1894: ;", "
    push str_296
addr_1895: ;(getstringbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1896
    jmp addr_749
addr_1896: ;copy
    pop rax
    push rax
    push rax
addr_1897: ;(strlen)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1898
    jmp addr_308
addr_1898: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1899: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_1900: ;(strcpy)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1901
    jmp addr_142
addr_1901: ;disc
    pop rax
addr_1902: ;disc
    pop rax
addr_1903: ;copy
    pop rax
    push rax
    push rax
addr_1904: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1905: ;255
    mov qword rax, 255
    push rax
addr_1906: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_1907: ;copy
    pop rax
    push rax
    push rax
addr_1908: ;(strint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1909
    jmp addr_25
addr_1909: ;(getstringbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1910
    jmp addr_749
addr_1910: ;copy
    pop rax
    push rax
    push rax
addr_1911: ;(strlen)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1912
    jmp addr_308
addr_1912: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1913: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_1914: ;(strcpy)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1915
    jmp addr_142
addr_1915: ;disc
    pop rax
addr_1916: ;disc
    pop rax
addr_1917: ;end
    pop rbx
    test rbx, rbx
    jnz addr_99
addr_1918: ;"\n"
    push str_297
addr_1919: ;(getstringbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1920
    jmp addr_749
addr_1920: ;copy
    pop rax
    push rax
    push rax
addr_1921: ;(strlen)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1922
    jmp addr_308
addr_1922: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1923: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_1924: ;(strcpy)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1925
    jmp addr_142
addr_1925: ;disc
    pop rax
addr_1926: ;disc
    pop rax
addr_1927: ;disc
    pop rax
addr_1928: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1929
    jmp addr_741
addr_1929: ;(clearbuf)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1930
    jmp addr_346
addr_1930: ;disc
    pop rax
addr_1931: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1932: ;end
addr_1933: ;proc
    ; - proc parseblockcmd 0 0
addr_1934: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1935
    jmp addr_741
addr_1935: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1936: ;255
    mov qword rax, 255
    push rax
addr_1937: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_1938: ;123
    mov qword rax, 123
    push rax
addr_1939: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1940: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1941
    jmp addr_741
addr_1941: ;(last)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1942
    jmp addr_326
addr_1942: ;125
    mov qword rax, 125
    push rax
addr_1943: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1944: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_1945: ;if
    pop rbx
    test rbx, rbx
    jz addr_1947
addr_1946: ;[      (getblockbuffer) (clearbuf) disc   ]
addr_1946_0: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1947
    jmp addr_741
addr_1946_1: ;(clearbuf)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1947
    jmp addr_346
addr_1946_2: ;disc
    pop rax
addr_1946_3: ; 
addr_1947: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1948
    jmp addr_741
addr_1948: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1949: ;255
    mov qword rax, 255
    push rax
addr_1950: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_1951: ;34
    mov qword rax, 34
    push rax
addr_1952: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1953: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1954
    jmp addr_741
addr_1954: ;(last)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1955
    jmp addr_326
addr_1955: ;34
    mov qword rax, 34
    push rax
addr_1956: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1957: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_1958: ;if
    pop rbx
    test rbx, rbx
    jz addr_1960
addr_1959: ;[     (writesubaddr)     (parsecall)      ret   ]
addr_1959_0: ;(writesubaddr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1960
    jmp addr_1596
addr_1959_1: ;(parsecall)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1960
    jmp addr_1839
addr_1959_2: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1959_3: ; 
addr_1960: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1961
    jmp addr_741
addr_1961: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1962: ;255
    mov qword rax, 255
    push rax
addr_1963: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_1964: ;40
    mov qword rax, 40
    push rax
addr_1965: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1966: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1967
    jmp addr_741
addr_1967: ;(last)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1968
    jmp addr_326
addr_1968: ;41
    mov qword rax, 41
    push rax
addr_1969: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1970: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_1971: ;if
    pop rbx
    test rbx, rbx
    jz addr_1973
addr_1972: ;[     (writesubaddr)     "    mov rax, [ret_stack_rsp]\n" (writeout)     "    add rax, 8\n" (writeout)     "    mov qword [ret_stack_rsp], rax\n" (writeout)     "    mov qword [rax], addr_" (writeout)     (addr) read (strint) (writeout)     (writeoutln)     "    jmp addr_" (writeout)     (getblockbuffer) (inner) disc     (getprocTab)     (getblockbuffer) 1 + (inTab) 0 == if (noproc)     (getblockbuffer) 1 + (getTab) (strint)     (writeout)     disc     (getblockbuffer) (clearbuf) disc     (writeoutln)     ret   ]
addr_1972_0: ;(writesubaddr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1973
    jmp addr_1596
addr_1972_1: ;"    mov rax, [ret_stack_rsp]\n"
    push str_298
addr_1972_2: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1973
    jmp addr_1365
addr_1972_3: ;"    add rax, 8\n"
    push str_299
addr_1972_4: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1973
    jmp addr_1365
addr_1972_5: ;"    mov qword [ret_stack_rsp], rax\n"
    push str_300
addr_1972_6: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1973
    jmp addr_1365
addr_1972_7: ;"    mov qword [rax], addr_"
    push str_301
addr_1972_8: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1973
    jmp addr_1365
addr_1972_9: ;(addr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1973
    jmp addr_1279
addr_1972_10: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1972_11: ;(strint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1973
    jmp addr_25
addr_1972_12: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1973
    jmp addr_1365
addr_1972_13: ;(writeoutln)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1973
    jmp addr_1376
addr_1972_14: ;"    jmp addr_"
    push str_302
addr_1972_15: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1973
    jmp addr_1365
addr_1972_16: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1973
    jmp addr_741
addr_1972_17: ;(inner)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1973
    jmp addr_1237
addr_1972_18: ;disc
    pop rax
addr_1972_19: ;(getprocTab)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1973
    jmp addr_733
addr_1972_20: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1973
    jmp addr_741
addr_1972_21: ;1
    mov qword rax, 1
    push rax
addr_1972_22: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1972_23: ;(inTab)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1973
    jmp addr_638
addr_1972_24: ;0
    mov qword rax, 0
    push rax
addr_1972_25: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1972_26: ;if
    pop rbx
    test rbx, rbx
    jz addr_1972_28
addr_1972_27: ;(noproc)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1973
    jmp addr_1355
addr_1972_28: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1973
    jmp addr_741
addr_1972_29: ;1
    mov qword rax, 1
    push rax
addr_1972_30: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1972_31: ;(getTab)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1973
    jmp addr_592
addr_1972_32: ;(strint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1973
    jmp addr_25
addr_1972_33: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1973
    jmp addr_1365
addr_1972_34: ;disc
    pop rax
addr_1972_35: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1973
    jmp addr_741
addr_1972_36: ;(clearbuf)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1973
    jmp addr_346
addr_1972_37: ;disc
    pop rax
addr_1972_38: ;(writeoutln)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1973
    jmp addr_1376
addr_1972_39: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1972_40: ; 
addr_1973: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1974
    jmp addr_741
addr_1974: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1975: ;255
    mov qword rax, 255
    push rax
addr_1976: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_1977: ;0
    mov qword rax, 0
    push rax
addr_1978: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_1979: ;if
    pop rbx
    test rbx, rbx
    jz addr_1981
addr_1980: ;[     (cmdflags) read     (getblockbuffer) (getnameop)     covr 0 == if (getblockasm)     covr 1 == if (addproc)     covr 2 == if (addproc)     covr 3 == if (addproc)     covr 4 == if (addconst)     covr 5 == if (addconst)     covr 6 == if (addinc)     covr 7 == if (addvar)     disc   ]
addr_1980_0: ;(cmdflags)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1981
    jmp addr_1275
addr_1980_1: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1980_2: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1981
    jmp addr_741
addr_1980_3: ;(getnameop)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1981
    jmp addr_754
addr_1980_4: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1980_5: ;0
    mov qword rax, 0
    push rax
addr_1980_6: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1980_7: ;if
    pop rbx
    test rbx, rbx
    jz addr_1980_9
addr_1980_8: ;(getblockasm)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1981
    jmp addr_1637
addr_1980_9: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1980_10: ;1
    mov qword rax, 1
    push rax
addr_1980_11: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1980_12: ;if
    pop rbx
    test rbx, rbx
    jz addr_1980_14
addr_1980_13: ;(addproc)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1981
    jmp addr_1385
addr_1980_14: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1980_15: ;2
    mov qword rax, 2
    push rax
addr_1980_16: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1980_17: ;if
    pop rbx
    test rbx, rbx
    jz addr_1980_19
addr_1980_18: ;(addproc)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1981
    jmp addr_1385
addr_1980_19: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1980_20: ;3
    mov qword rax, 3
    push rax
addr_1980_21: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1980_22: ;if
    pop rbx
    test rbx, rbx
    jz addr_1980_24
addr_1980_23: ;(addproc)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1981
    jmp addr_1385
addr_1980_24: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1980_25: ;4
    mov qword rax, 4
    push rax
addr_1980_26: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1980_27: ;if
    pop rbx
    test rbx, rbx
    jz addr_1980_29
addr_1980_28: ;(addconst)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1981
    jmp addr_1416
addr_1980_29: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1980_30: ;5
    mov qword rax, 5
    push rax
addr_1980_31: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1980_32: ;if
    pop rbx
    test rbx, rbx
    jz addr_1980_34
addr_1980_33: ;(addconst)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1981
    jmp addr_1416
addr_1980_34: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1980_35: ;6
    mov qword rax, 6
    push rax
addr_1980_36: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1980_37: ;if
    pop rbx
    test rbx, rbx
    jz addr_1980_39
addr_1980_38: ;(addinc)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1981
    jmp addr_1439
addr_1980_39: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1980_40: ;7
    mov qword rax, 7
    push rax
addr_1980_41: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1980_42: ;if
    pop rbx
    test rbx, rbx
    jz addr_1980_44
addr_1980_43: ;(addvar)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1981
    jmp addr_1447
addr_1980_44: ;disc
    pop rax
addr_1980_45: ; 
addr_1981: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1982
    jmp addr_741
addr_1982: ;(clearbuf)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1983
    jmp addr_346
addr_1983: ;disc
    pop rax
addr_1984: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_1985: ;end
addr_1986: ;proc
    ; - proc badop 0 0
addr_1987: ;"BAD OPERATION: "
    push str_303
addr_1988: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1989
    jmp addr_78
addr_1989: ;"`"
    push str_304
addr_1990: ;(print)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1991
    jmp addr_50
addr_1991: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1992
    jmp addr_737
addr_1992: ;(print)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1993
    jmp addr_50
addr_1993: ;"`"
    push str_305
addr_1994: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1995
    jmp addr_78
addr_1995: ;"chunk"
    push str_306
addr_1996: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1997
    jmp addr_78
addr_1997: ;(getreadbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1998
    jmp addr_745
addr_1998: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_1999
    jmp addr_78
addr_1999: ;(exit)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2000
    jmp addr_1335
addr_2000: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2001: ;end
addr_2002: ;proc
    ; - proc getcmdasm 1 0
addr_2003: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2004
    jmp addr_737
addr_2004: ;(alphanum)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2005
    jmp addr_371
addr_2005: ;if
    pop rbx
    test rbx, rbx
    jz addr_2007
addr_2006: ;[     disc     OP_PUSH   ]
addr_2006_0: ;disc
    pop rax
addr_2006_1: ;OP_PUSH
    mov qword rax, 681
    push rax
addr_2006_2: ; 
addr_2007: ;(writeaddr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2008
    jmp addr_1583
addr_2008: ;copy
    pop rax
    push rax
    push rax
addr_2009: ;OP_BAD
    mov qword rax, 679
    push rax
addr_2010: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2011: ;if
    pop rbx
    test rbx, rbx
    jz addr_2013
addr_2012: ;[     (getconstTab) (getcmdbuffer) (inTab) 0 == if (badop)     (getcmdbuffer) (getTab) swap disc     (strint)     (getcmdbuffer) (clearbuf) swap (strcpy) disc disc     disc     OP_PUSH   ]
addr_2012_0: ;(getconstTab)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2013
    jmp addr_729
addr_2012_1: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2013
    jmp addr_737
addr_2012_2: ;(inTab)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2013
    jmp addr_638
addr_2012_3: ;0
    mov qword rax, 0
    push rax
addr_2012_4: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2012_5: ;if
    pop rbx
    test rbx, rbx
    jz addr_2012_7
addr_2012_6: ;(badop)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2013
    jmp addr_1987
addr_2012_7: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2013
    jmp addr_737
addr_2012_8: ;(getTab)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2013
    jmp addr_592
addr_2012_9: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_2012_10: ;disc
    pop rax
addr_2012_11: ;(strint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2013
    jmp addr_25
addr_2012_12: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2013
    jmp addr_737
addr_2012_13: ;(clearbuf)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2013
    jmp addr_346
addr_2012_14: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_2012_15: ;(strcpy)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2013
    jmp addr_142
addr_2012_16: ;disc
    pop rax
addr_2012_17: ;disc
    pop rax
addr_2012_18: ;disc
    pop rax
addr_2012_19: ;OP_PUSH
    mov qword rax, 681
    push rax
addr_2012_20: ; 
addr_2013: ;copy
    pop rax
    push rax
    push rax
addr_2014: ;OP_NOP
    mov qword rax, 680
    push rax
addr_2015: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2016: ;if
    pop rbx
    test rbx, rbx
    jz addr_2018
addr_2017: ;[     disc ret   ]
addr_2017_0: ;disc
    pop rax
addr_2017_1: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2017_2: ; 
addr_2018: ;copy
    pop rax
    push rax
    push rax
addr_2019: ;OP_PUSH
    mov qword rax, 681
    push rax
addr_2020: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2021: ;if
    pop rbx
    test rbx, rbx
    jz addr_2023
addr_2022: ;[     "    mov qword rax, " (writeout)     (getcmdbuffer) (writeout)     (writeoutln)     "    push rax\n" (writeout)     disc ret   ]
addr_2022_0: ;"    mov qword rax, "
    push str_307
addr_2022_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2023
    jmp addr_1365
addr_2022_2: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2023
    jmp addr_737
addr_2022_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2023
    jmp addr_1365
addr_2022_4: ;(writeoutln)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2023
    jmp addr_1376
addr_2022_5: ;"    push rax\n"
    push str_308
addr_2022_6: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2023
    jmp addr_1365
addr_2022_7: ;disc
    pop rax
addr_2022_8: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2022_9: ; 
addr_2023: ;copy
    pop rax
    push rax
    push rax
addr_2024: ;OP_COPY
    mov qword rax, 687
    push rax
addr_2025: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2026: ;if
    pop rbx
    test rbx, rbx
    jz addr_2028
addr_2027: ;[     "    pop rax\n" (writeout)     "    push rax\n" (writeout)     "    push rax\n" (writeout)     disc ret   ]
addr_2027_0: ;"    pop rax\n"
    push str_309
addr_2027_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2028
    jmp addr_1365
addr_2027_2: ;"    push rax\n"
    push str_310
addr_2027_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2028
    jmp addr_1365
addr_2027_4: ;"    push rax\n"
    push str_311
addr_2027_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2028
    jmp addr_1365
addr_2027_6: ;disc
    pop rax
addr_2027_7: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2027_8: ; 
addr_2028: ;copy
    pop rax
    push rax
    push rax
addr_2029: ;OP_SWAP
    mov qword rax, 685
    push rax
addr_2030: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2031: ;if
    pop rbx
    test rbx, rbx
    jz addr_2033
addr_2032: ;[     "    pop rax\n" (writeout)     "    pop rbx\n" (writeout)     "    push rax\n" (writeout)     "    push rbx\n" (writeout)     disc ret   ]
addr_2032_0: ;"    pop rax\n"
    push str_312
addr_2032_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2033
    jmp addr_1365
addr_2032_2: ;"    pop rbx\n"
    push str_313
addr_2032_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2033
    jmp addr_1365
addr_2032_4: ;"    push rax\n"
    push str_314
addr_2032_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2033
    jmp addr_1365
addr_2032_6: ;"    push rbx\n"
    push str_315
addr_2032_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2033
    jmp addr_1365
addr_2032_8: ;disc
    pop rax
addr_2032_9: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2032_10: ; 
addr_2033: ;copy
    pop rax
    push rax
    push rax
addr_2034: ;OP_SUB
    mov qword rax, 682
    push rax
addr_2035: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2036: ;if
    pop rbx
    test rbx, rbx
    jz addr_2038
addr_2037: ;[     "    pop rbx\n" (writeout)     "    pop rax\n" (writeout)     "    sub rax, rbx\n" (writeout)     "    push rax\n" (writeout)     disc ret   ]
addr_2037_0: ;"    pop rbx\n"
    push str_316
addr_2037_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2038
    jmp addr_1365
addr_2037_2: ;"    pop rax\n"
    push str_317
addr_2037_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2038
    jmp addr_1365
addr_2037_4: ;"    sub rax, rbx\n"
    push str_318
addr_2037_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2038
    jmp addr_1365
addr_2037_6: ;"    push rax\n"
    push str_319
addr_2037_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2038
    jmp addr_1365
addr_2037_8: ;disc
    pop rax
addr_2037_9: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2037_10: ; 
addr_2038: ;copy
    pop rax
    push rax
    push rax
addr_2039: ;OP_PLUS
    mov qword rax, 684
    push rax
addr_2040: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2041: ;if
    pop rbx
    test rbx, rbx
    jz addr_2043
addr_2042: ;[     "    pop rax\n" (writeout)     "    pop rbx\n" (writeout)     "    add rax, rbx\n" (writeout)     "    push rax\n" (writeout)     disc ret   ]
addr_2042_0: ;"    pop rax\n"
    push str_320
addr_2042_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2043
    jmp addr_1365
addr_2042_2: ;"    pop rbx\n"
    push str_321
addr_2042_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2043
    jmp addr_1365
addr_2042_4: ;"    add rax, rbx\n"
    push str_322
addr_2042_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2043
    jmp addr_1365
addr_2042_6: ;"    push rax\n"
    push str_323
addr_2042_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2043
    jmp addr_1365
addr_2042_8: ;disc
    pop rax
addr_2042_9: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2042_10: ; 
addr_2043: ;copy
    pop rax
    push rax
    push rax
addr_2044: ;OP_AND
    mov qword rax, 714
    push rax
addr_2045: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2046: ;if
    pop rbx
    test rbx, rbx
    jz addr_2048
addr_2047: ;[     "    pop rax\n" (writeout)     "    pop rbx\n" (writeout)     "    and rax, rbx\n" (writeout)     "    push rax\n" (writeout)     disc ret   ]
addr_2047_0: ;"    pop rax\n"
    push str_324
addr_2047_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2048
    jmp addr_1365
addr_2047_2: ;"    pop rbx\n"
    push str_325
addr_2047_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2048
    jmp addr_1365
addr_2047_4: ;"    and rax, rbx\n"
    push str_326
addr_2047_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2048
    jmp addr_1365
addr_2047_6: ;"    push rax\n"
    push str_327
addr_2047_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2048
    jmp addr_1365
addr_2047_8: ;disc
    pop rax
addr_2047_9: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2047_10: ; 
addr_2048: ;copy
    pop rax
    push rax
    push rax
addr_2049: ;OP_MUL
    mov qword rax, 683
    push rax
addr_2050: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2051: ;if
    pop rbx
    test rbx, rbx
    jz addr_2053
addr_2052: ;[     "    pop rax\n" (writeout)     "    pop rbx\n" (writeout)     "    imul rax, rbx\n" (writeout)     "    push rax\n" (writeout)     disc ret   ]
addr_2052_0: ;"    pop rax\n"
    push str_328
addr_2052_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2053
    jmp addr_1365
addr_2052_2: ;"    pop rbx\n"
    push str_329
addr_2052_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2053
    jmp addr_1365
addr_2052_4: ;"    imul rax, rbx\n"
    push str_330
addr_2052_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2053
    jmp addr_1365
addr_2052_6: ;"    push rax\n"
    push str_331
addr_2052_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2053
    jmp addr_1365
addr_2052_8: ;disc
    pop rax
addr_2052_9: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2052_10: ; 
addr_2053: ;copy
    pop rax
    push rax
    push rax
addr_2054: ;OP_DIV
    mov qword rax, 723
    push rax
addr_2055: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2056: ;if
    pop rbx
    test rbx, rbx
    jz addr_2058
addr_2057: ;[     "    xor rdx, rdx\n" (writeout)     "    pop rbx\n" (writeout)     "    pop rax\n" (writeout)     "    idiv rbx\n" (writeout)     "    push rax\n" (writeout)     "    push rdx\n" (writeout)     disc ret   ]
addr_2057_0: ;"    xor rdx, rdx\n"
    push str_332
addr_2057_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2058
    jmp addr_1365
addr_2057_2: ;"    pop rbx\n"
    push str_333
addr_2057_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2058
    jmp addr_1365
addr_2057_4: ;"    pop rax\n"
    push str_334
addr_2057_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2058
    jmp addr_1365
addr_2057_6: ;"    idiv rbx\n"
    push str_335
addr_2057_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2058
    jmp addr_1365
addr_2057_8: ;"    push rax\n"
    push str_336
addr_2057_9: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2058
    jmp addr_1365
addr_2057_10: ;"    push rdx\n"
    push str_337
addr_2057_11: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2058
    jmp addr_1365
addr_2057_12: ;disc
    pop rax
addr_2057_13: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2057_14: ; 
addr_2058: ;copy
    pop rax
    push rax
    push rax
addr_2059: ;OP_COVR
    mov qword rax, 688
    push rax
addr_2060: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2061: ;if
    pop rbx
    test rbx, rbx
    jz addr_2063
addr_2062: ;[     "    pop rax\n" (writeout)     "    pop rbx\n" (writeout)     "    push rbx\n" (writeout)     "    push rax\n" (writeout)     "    push rbx\n" (writeout)     disc ret   ]
addr_2062_0: ;"    pop rax\n"
    push str_338
addr_2062_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2063
    jmp addr_1365
addr_2062_2: ;"    pop rbx\n"
    push str_339
addr_2062_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2063
    jmp addr_1365
addr_2062_4: ;"    push rbx\n"
    push str_340
addr_2062_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2063
    jmp addr_1365
addr_2062_6: ;"    push rax\n"
    push str_341
addr_2062_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2063
    jmp addr_1365
addr_2062_8: ;"    push rbx\n"
    push str_342
addr_2062_9: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2063
    jmp addr_1365
addr_2062_10: ;disc
    pop rax
addr_2062_11: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2062_12: ; 
addr_2063: ;copy
    pop rax
    push rax
    push rax
addr_2064: ;OP_PROC
    mov qword rax, 700
    push rax
addr_2065: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2066: ;if
    pop rbx
    test rbx, rbx
    jz addr_2068
addr_2067: ;[     IDENT_PROC (identstackpush)      "    ; - proc" (writeout)     (cmdflags)     3     putc disc     disc ret   ]
addr_2067_0: ;IDENT_PROC
    mov qword rax, 726
    push rax
addr_2067_1: ;(identstackpush)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2068
    jmp addr_1197
addr_2067_2: ;"    ; - proc"
    push str_343
addr_2067_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2068
    jmp addr_1365
addr_2067_4: ;(cmdflags)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2068
    jmp addr_1275
addr_2067_5: ;3
    mov qword rax, 3
    push rax
addr_2067_6: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_2067_7: ;disc
    pop rax
addr_2067_8: ;disc
    pop rax
addr_2067_9: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2067_10: ; 
addr_2068: ;copy
    pop rax
    push rax
    push rax
addr_2069: ;OP_GPTR
    mov qword rax, 689
    push rax
addr_2070: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2071: ;if
    pop rbx
    test rbx, rbx
    jz addr_2073
addr_2072: ;[     (cmdflags)     7     putc disc     disc ret   ]
addr_2072_0: ;(cmdflags)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2073
    jmp addr_1275
addr_2072_1: ;7
    mov qword rax, 7
    push rax
addr_2072_2: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_2072_3: ;disc
    pop rax
addr_2072_4: ;disc
    pop rax
addr_2072_5: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2072_6: ; 
addr_2073: ;copy
    pop rax
    push rax
    push rax
addr_2074: ;OP_ARGC
    mov qword rax, 694
    push rax
addr_2075: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2076: ;if
    pop rbx
    test rbx, rbx
    jz addr_2078
addr_2077: ;[     "    mov rax, [args_ptr]\n" (writeout)     "    mov rax, [rax]\n" (writeout)     "    push rax\n" (writeout)     disc ret   ]
addr_2077_0: ;"    mov rax, [args_ptr]\n"
    push str_344
addr_2077_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2078
    jmp addr_1365
addr_2077_2: ;"    mov rax, [rax]\n"
    push str_345
addr_2077_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2078
    jmp addr_1365
addr_2077_4: ;"    push rax\n"
    push str_346
addr_2077_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2078
    jmp addr_1365
addr_2077_6: ;disc
    pop rax
addr_2077_7: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2077_8: ; 
addr_2078: ;copy
    pop rax
    push rax
    push rax
addr_2079: ;OP_ARGV
    mov qword rax, 693
    push rax
addr_2080: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2081: ;if
    pop rbx
    test rbx, rbx
    jz addr_2083
addr_2082: ;[     "    mov rax, [args_ptr]\n" (writeout)     "    add rax, 8\n" (writeout)     "    push rax\n" (writeout)     disc ret   ]
addr_2082_0: ;"    mov rax, [args_ptr]\n"
    push str_347
addr_2082_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2083
    jmp addr_1365
addr_2082_2: ;"    add rax, 8\n"
    push str_348
addr_2082_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2083
    jmp addr_1365
addr_2082_4: ;"    push rax\n"
    push str_349
addr_2082_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2083
    jmp addr_1365
addr_2082_6: ;disc
    pop rax
addr_2082_7: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2082_8: ; 
addr_2083: ;copy
    pop rax
    push rax
    push rax
addr_2084: ;OP_QUIT
    mov qword rax, 702
    push rax
addr_2085: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2086: ;if
    pop rbx
    test rbx, rbx
    jz addr_2088
addr_2087: ;[     "    jmp quit\n" (writeout)     disc ret   ]
addr_2087_0: ;"    jmp quit\n"
    push str_350
addr_2087_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2088
    jmp addr_1365
addr_2087_2: ;disc
    pop rax
addr_2087_3: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2087_4: ; 
addr_2088: ;copy
    pop rax
    push rax
    push rax
addr_2089: ;OP_RET
    mov qword rax, 701
    push rax
addr_2090: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2091: ;if
    pop rbx
    test rbx, rbx
    jz addr_2093
addr_2092: ;[     "    mov rax, [ret_stack_rsp]\n" (writeout)     "    sub rax, 8\n" (writeout)     "    mov qword [ret_stack_rsp], rax\n" (writeout)     "    add rax, 8\n" (writeout)     "    jmp [rax]\n" (writeout)     disc ret   ]
addr_2092_0: ;"    mov rax, [ret_stack_rsp]\n"
    push str_351
addr_2092_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2093
    jmp addr_1365
addr_2092_2: ;"    sub rax, 8\n"
    push str_352
addr_2092_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2093
    jmp addr_1365
addr_2092_4: ;"    mov qword [ret_stack_rsp], rax\n"
    push str_353
addr_2092_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2093
    jmp addr_1365
addr_2092_6: ;"    add rax, 8\n"
    push str_354
addr_2092_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2093
    jmp addr_1365
addr_2092_8: ;"    jmp [rax]\n"
    push str_355
addr_2092_9: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2093
    jmp addr_1365
addr_2092_10: ;disc
    pop rax
addr_2092_11: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2092_12: ; 
addr_2093: ;copy
    pop rax
    push rax
    push rax
addr_2094: ;OP_DISC
    mov qword rax, 692
    push rax
addr_2095: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2096: ;if
    pop rbx
    test rbx, rbx
    jz addr_2098
addr_2097: ;[     "    pop rax\n" (writeout)     disc ret   ]
addr_2097_0: ;"    pop rax\n"
    push str_356
addr_2097_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2098
    jmp addr_1365
addr_2097_2: ;disc
    pop rax
addr_2097_3: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2097_4: ; 
addr_2098: ;copy
    pop rax
    push rax
    push rax
addr_2099: ;OP_CONST
    mov qword rax, 698
    push rax
addr_2100: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2101: ;if
    pop rbx
    test rbx, rbx
    jz addr_2103
addr_2102: ;[     (cmdflags)     5     putc disc     disc ret   ]
addr_2102_0: ;(cmdflags)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2103
    jmp addr_1275
addr_2102_1: ;5
    mov qword rax, 5
    push rax
addr_2102_2: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_2102_3: ;disc
    pop rax
addr_2102_4: ;disc
    pop rax
addr_2102_5: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2102_6: ; 
addr_2103: ;copy
    pop rax
    push rax
    push rax
addr_2104: ;OP_READ
    mov qword rax, 690
    push rax
addr_2105: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2106: ;if
    pop rbx
    test rbx, rbx
    jz addr_2108
addr_2107: ;[     "    pop rax\n" (writeout)     "    xor rbx, rbx\n" (writeout)     "    mov rbx, [rax]\n" (writeout)     "    push rbx\n" (writeout)     disc ret   ]
addr_2107_0: ;"    pop rax\n"
    push str_357
addr_2107_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2108
    jmp addr_1365
addr_2107_2: ;"    xor rbx, rbx\n"
    push str_358
addr_2107_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2108
    jmp addr_1365
addr_2107_4: ;"    mov rbx, [rax]\n"
    push str_359
addr_2107_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2108
    jmp addr_1365
addr_2107_6: ;"    push rbx\n"
    push str_360
addr_2107_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2108
    jmp addr_1365
addr_2107_8: ;disc
    pop rax
addr_2107_9: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2107_10: ; 
addr_2108: ;copy
    pop rax
    push rax
    push rax
addr_2109: ;OP_PUTC
    mov qword rax, 691
    push rax
addr_2110: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2111: ;if
    pop rbx
    test rbx, rbx
    jz addr_2113
addr_2112: ;[     "    pop rbx\n" (writeout)     "    pop rax\n" (writeout)     "    mov byte [rax], bl\n" (writeout)     "    push rax\n" (writeout)     disc ret   ]
addr_2112_0: ;"    pop rbx\n"
    push str_361
addr_2112_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2113
    jmp addr_1365
addr_2112_2: ;"    pop rax\n"
    push str_362
addr_2112_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2113
    jmp addr_1365
addr_2112_4: ;"    mov byte [rax], bl\n"
    push str_363
addr_2112_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2113
    jmp addr_1365
addr_2112_6: ;"    push rax\n"
    push str_364
addr_2112_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2113
    jmp addr_1365
addr_2112_8: ;disc
    pop rax
addr_2112_9: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2112_10: ; 
addr_2113: ;copy
    pop rax
    push rax
    push rax
addr_2114: ;OP_PUT
    mov qword rax, 722
    push rax
addr_2115: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2116: ;if
    pop rbx
    test rbx, rbx
    jz addr_2118
addr_2117: ;[     "    pop rbx\n" (writeout)     "    pop rax\n" (writeout)     "    mov qword [rax], rbx\n" (writeout)     "    push rax\n" (writeout)     disc ret   ]
addr_2117_0: ;"    pop rbx\n"
    push str_365
addr_2117_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2118
    jmp addr_1365
addr_2117_2: ;"    pop rax\n"
    push str_366
addr_2117_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2118
    jmp addr_1365
addr_2117_4: ;"    mov qword [rax], rbx\n"
    push str_367
addr_2117_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2118
    jmp addr_1365
addr_2117_6: ;"    push rax\n"
    push str_368
addr_2117_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2118
    jmp addr_1365
addr_2117_8: ;disc
    pop rax
addr_2117_9: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2117_10: ; 
addr_2118: ;copy
    pop rax
    push rax
    push rax
addr_2119: ;OP_NQ
    mov qword rax, 710
    push rax
addr_2120: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2121: ;if
    pop rbx
    test rbx, rbx
    jz addr_2123
addr_2122: ;[     "    mov rcx, 0\n" (writeout)     "    mov rdx, 1\n" (writeout)     "    pop rbx\n" (writeout)     "    pop rax\n" (writeout)     "    cmp rax, rbx\n" (writeout)     "    cmovne rcx, rdx\n" (writeout)     "    push rcx\n" (writeout)     disc ret   ]
addr_2122_0: ;"    mov rcx, 0\n"
    push str_369
addr_2122_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2123
    jmp addr_1365
addr_2122_2: ;"    mov rdx, 1\n"
    push str_370
addr_2122_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2123
    jmp addr_1365
addr_2122_4: ;"    pop rbx\n"
    push str_371
addr_2122_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2123
    jmp addr_1365
addr_2122_6: ;"    pop rax\n"
    push str_372
addr_2122_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2123
    jmp addr_1365
addr_2122_8: ;"    cmp rax, rbx\n"
    push str_373
addr_2122_9: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2123
    jmp addr_1365
addr_2122_10: ;"    cmovne rcx, rdx\n"
    push str_374
addr_2122_11: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2123
    jmp addr_1365
addr_2122_12: ;"    push rcx\n"
    push str_375
addr_2122_13: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2123
    jmp addr_1365
addr_2122_14: ;disc
    pop rax
addr_2122_15: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2122_16: ; 
addr_2123: ;copy
    pop rax
    push rax
    push rax
addr_2124: ;OP_EQ
    mov qword rax, 711
    push rax
addr_2125: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2126: ;if
    pop rbx
    test rbx, rbx
    jz addr_2128
addr_2127: ;[     "    mov rcx, 0\n" (writeout)     "    mov rdx, 1\n" (writeout)     "    pop rbx\n" (writeout)     "    pop rax\n" (writeout)     "    cmp rax, rbx\n" (writeout)     "    cmove rcx, rdx\n" (writeout)     "    push rcx\n" (writeout)     disc ret   ]
addr_2127_0: ;"    mov rcx, 0\n"
    push str_376
addr_2127_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2128
    jmp addr_1365
addr_2127_2: ;"    mov rdx, 1\n"
    push str_377
addr_2127_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2128
    jmp addr_1365
addr_2127_4: ;"    pop rbx\n"
    push str_378
addr_2127_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2128
    jmp addr_1365
addr_2127_6: ;"    pop rax\n"
    push str_379
addr_2127_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2128
    jmp addr_1365
addr_2127_8: ;"    cmp rax, rbx\n"
    push str_380
addr_2127_9: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2128
    jmp addr_1365
addr_2127_10: ;"    cmove rcx, rdx\n"
    push str_381
addr_2127_11: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2128
    jmp addr_1365
addr_2127_12: ;"    push rcx\n"
    push str_382
addr_2127_13: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2128
    jmp addr_1365
addr_2127_14: ;disc
    pop rax
addr_2127_15: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2127_16: ; 
addr_2128: ;copy
    pop rax
    push rax
    push rax
addr_2129: ;OP_GT
    mov qword rax, 713
    push rax
addr_2130: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2131: ;if
    pop rbx
    test rbx, rbx
    jz addr_2133
addr_2132: ;[     "    mov rcx, 0\n" (writeout)     "    mov rdx, 1\n" (writeout)     "    pop rbx\n" (writeout)     "    pop rax\n" (writeout)     "    cmp rax, rbx\n" (writeout)     "    cmovg rcx, rdx\n" (writeout)     "    push rcx\n" (writeout)     disc ret   ]
addr_2132_0: ;"    mov rcx, 0\n"
    push str_383
addr_2132_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2133
    jmp addr_1365
addr_2132_2: ;"    mov rdx, 1\n"
    push str_384
addr_2132_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2133
    jmp addr_1365
addr_2132_4: ;"    pop rbx\n"
    push str_385
addr_2132_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2133
    jmp addr_1365
addr_2132_6: ;"    pop rax\n"
    push str_386
addr_2132_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2133
    jmp addr_1365
addr_2132_8: ;"    cmp rax, rbx\n"
    push str_387
addr_2132_9: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2133
    jmp addr_1365
addr_2132_10: ;"    cmovg rcx, rdx\n"
    push str_388
addr_2132_11: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2133
    jmp addr_1365
addr_2132_12: ;"    push rcx\n"
    push str_389
addr_2132_13: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2133
    jmp addr_1365
addr_2132_14: ;disc
    pop rax
addr_2132_15: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2132_16: ; 
addr_2133: ;copy
    pop rax
    push rax
    push rax
addr_2134: ;OP_LT
    mov qword rax, 712
    push rax
addr_2135: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2136: ;if
    pop rbx
    test rbx, rbx
    jz addr_2138
addr_2137: ;[     "    mov rcx, 0\n" (writeout)     "    mov rdx, 1\n" (writeout)     "    pop rbx\n" (writeout)     "    pop rax\n" (writeout)     "    cmp rax, rbx\n" (writeout)     "    cmovl rcx, rdx\n" (writeout)     "    push rcx\n" (writeout)     disc ret   ]
addr_2137_0: ;"    mov rcx, 0\n"
    push str_390
addr_2137_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2138
    jmp addr_1365
addr_2137_2: ;"    mov rdx, 1\n"
    push str_391
addr_2137_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2138
    jmp addr_1365
addr_2137_4: ;"    pop rbx\n"
    push str_392
addr_2137_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2138
    jmp addr_1365
addr_2137_6: ;"    pop rax\n"
    push str_393
addr_2137_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2138
    jmp addr_1365
addr_2137_8: ;"    cmp rax, rbx\n"
    push str_394
addr_2137_9: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2138
    jmp addr_1365
addr_2137_10: ;"    cmovl rcx, rdx\n"
    push str_395
addr_2137_11: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2138
    jmp addr_1365
addr_2137_12: ;"    push rcx\n"
    push str_396
addr_2137_13: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2138
    jmp addr_1365
addr_2137_14: ;disc
    pop rax
addr_2137_15: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2137_16: ; 
addr_2138: ;copy
    pop rax
    push rax
    push rax
addr_2139: ;OP_IF
    mov qword rax, 706
    push rax
addr_2140: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2141: ;if
    pop rbx
    test rbx, rbx
    jz addr_2143
addr_2142: ;[     "    pop rbx\n" (writeout)     "    test rbx, rbx\n" (writeout)     "    jz addr_" (writeout)     (addr) read 1 + (strint) (writeout)     (writeoutln)     disc ret   ]
addr_2142_0: ;"    pop rbx\n"
    push str_397
addr_2142_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2143
    jmp addr_1365
addr_2142_2: ;"    test rbx, rbx\n"
    push str_398
addr_2142_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2143
    jmp addr_1365
addr_2142_4: ;"    jz addr_"
    push str_399
addr_2142_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2143
    jmp addr_1365
addr_2142_6: ;(addr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2143
    jmp addr_1279
addr_2142_7: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2142_8: ;1
    mov qword rax, 1
    push rax
addr_2142_9: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2142_10: ;(strint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2143
    jmp addr_25
addr_2142_11: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2143
    jmp addr_1365
addr_2142_12: ;(writeoutln)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2143
    jmp addr_1376
addr_2142_13: ;disc
    pop rax
addr_2142_14: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2142_15: ; 
addr_2143: ;copy
    pop rax
    push rax
    push rax
addr_2144: ;OP_SYS0
    mov qword rax, 715
    push rax
addr_2145: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2146: ;if
    pop rbx
    test rbx, rbx
    jz addr_2148
addr_2147: ;[     "    pop rax\n" (writeout)      "    syscall\n" (writeout)      "    push rax\n" (writeout)      disc ret   ]
addr_2147_0: ;"    pop rax\n"
    push str_400
addr_2147_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2148
    jmp addr_1365
addr_2147_2: ;"    syscall\n"
    push str_401
addr_2147_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2148
    jmp addr_1365
addr_2147_4: ;"    push rax\n"
    push str_402
addr_2147_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2148
    jmp addr_1365
addr_2147_6: ;disc
    pop rax
addr_2147_7: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2147_8: ; 
addr_2148: ;copy
    pop rax
    push rax
    push rax
addr_2149: ;OP_SYS1
    mov qword rax, 716
    push rax
addr_2150: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2151: ;if
    pop rbx
    test rbx, rbx
    jz addr_2153
addr_2152: ;[     "    pop rax\n" (writeout)      "    pop rdi\n" (writeout)      "    syscall\n" (writeout)      "    push rax\n" (writeout)      disc ret   ]
addr_2152_0: ;"    pop rax\n"
    push str_403
addr_2152_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2153
    jmp addr_1365
addr_2152_2: ;"    pop rdi\n"
    push str_404
addr_2152_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2153
    jmp addr_1365
addr_2152_4: ;"    syscall\n"
    push str_405
addr_2152_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2153
    jmp addr_1365
addr_2152_6: ;"    push rax\n"
    push str_406
addr_2152_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2153
    jmp addr_1365
addr_2152_8: ;disc
    pop rax
addr_2152_9: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2152_10: ; 
addr_2153: ;copy
    pop rax
    push rax
    push rax
addr_2154: ;OP_SYS2
    mov qword rax, 717
    push rax
addr_2155: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2156: ;if
    pop rbx
    test rbx, rbx
    jz addr_2158
addr_2157: ;[     "    pop rax\n" (writeout)      "    pop rdi\n" (writeout)      "    pop rsi\n" (writeout)      "    syscall\n" (writeout)      "    push rax\n" (writeout)      disc ret   ]
addr_2157_0: ;"    pop rax\n"
    push str_407
addr_2157_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2158
    jmp addr_1365
addr_2157_2: ;"    pop rdi\n"
    push str_408
addr_2157_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2158
    jmp addr_1365
addr_2157_4: ;"    pop rsi\n"
    push str_409
addr_2157_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2158
    jmp addr_1365
addr_2157_6: ;"    syscall\n"
    push str_410
addr_2157_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2158
    jmp addr_1365
addr_2157_8: ;"    push rax\n"
    push str_411
addr_2157_9: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2158
    jmp addr_1365
addr_2157_10: ;disc
    pop rax
addr_2157_11: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2157_12: ; 
addr_2158: ;copy
    pop rax
    push rax
    push rax
addr_2159: ;OP_SYS3
    mov qword rax, 718
    push rax
addr_2160: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2161: ;if
    pop rbx
    test rbx, rbx
    jz addr_2163
addr_2162: ;[     "    pop rax\n" (writeout)      "    pop rdi\n" (writeout)      "    pop rsi\n" (writeout)      "    pop rdx\n" (writeout)      "    syscall\n" (writeout)      "    push rax\n" (writeout)      disc ret   ]
addr_2162_0: ;"    pop rax\n"
    push str_412
addr_2162_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2163
    jmp addr_1365
addr_2162_2: ;"    pop rdi\n"
    push str_413
addr_2162_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2163
    jmp addr_1365
addr_2162_4: ;"    pop rsi\n"
    push str_414
addr_2162_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2163
    jmp addr_1365
addr_2162_6: ;"    pop rdx\n"
    push str_415
addr_2162_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2163
    jmp addr_1365
addr_2162_8: ;"    syscall\n"
    push str_416
addr_2162_9: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2163
    jmp addr_1365
addr_2162_10: ;"    push rax\n"
    push str_417
addr_2162_11: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2163
    jmp addr_1365
addr_2162_12: ;disc
    pop rax
addr_2162_13: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2162_14: ; 
addr_2163: ;copy
    pop rax
    push rax
    push rax
addr_2164: ;OP_SYS4
    mov qword rax, 719
    push rax
addr_2165: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2166: ;if
    pop rbx
    test rbx, rbx
    jz addr_2168
addr_2167: ;[     "    pop rax\n" (writeout)      "    pop rdi\n" (writeout)      "    pop rsi\n" (writeout)      "    pop rdx\n" (writeout)      "    pop r10\n" (writeout)      "    syscall\n" (writeout)      "    push rax\n" (writeout)      disc ret   ]
addr_2167_0: ;"    pop rax\n"
    push str_418
addr_2167_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2168
    jmp addr_1365
addr_2167_2: ;"    pop rdi\n"
    push str_419
addr_2167_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2168
    jmp addr_1365
addr_2167_4: ;"    pop rsi\n"
    push str_420
addr_2167_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2168
    jmp addr_1365
addr_2167_6: ;"    pop rdx\n"
    push str_421
addr_2167_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2168
    jmp addr_1365
addr_2167_8: ;"    pop r10\n"
    push str_422
addr_2167_9: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2168
    jmp addr_1365
addr_2167_10: ;"    syscall\n"
    push str_423
addr_2167_11: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2168
    jmp addr_1365
addr_2167_12: ;"    push rax\n"
    push str_424
addr_2167_13: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2168
    jmp addr_1365
addr_2167_14: ;disc
    pop rax
addr_2167_15: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2167_16: ; 
addr_2168: ;copy
    pop rax
    push rax
    push rax
addr_2169: ;OP_SYS5
    mov qword rax, 720
    push rax
addr_2170: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2171: ;if
    pop rbx
    test rbx, rbx
    jz addr_2173
addr_2172: ;[     "    pop rax\n" (writeout)      "    pop rdi\n" (writeout)      "    pop rsi\n" (writeout)      "    pop rdx\n" (writeout)      "    pop r10\n" (writeout)      "    pop r8\n" (writeout)      "    syscall\n" (writeout)      "    push rax\n" (writeout)      disc ret   ]
addr_2172_0: ;"    pop rax\n"
    push str_425
addr_2172_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2173
    jmp addr_1365
addr_2172_2: ;"    pop rdi\n"
    push str_426
addr_2172_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2173
    jmp addr_1365
addr_2172_4: ;"    pop rsi\n"
    push str_427
addr_2172_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2173
    jmp addr_1365
addr_2172_6: ;"    pop rdx\n"
    push str_428
addr_2172_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2173
    jmp addr_1365
addr_2172_8: ;"    pop r10\n"
    push str_429
addr_2172_9: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2173
    jmp addr_1365
addr_2172_10: ;"    pop r8\n"
    push str_430
addr_2172_11: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2173
    jmp addr_1365
addr_2172_12: ;"    syscall\n"
    push str_431
addr_2172_13: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2173
    jmp addr_1365
addr_2172_14: ;"    push rax\n"
    push str_432
addr_2172_15: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2173
    jmp addr_1365
addr_2172_16: ;disc
    pop rax
addr_2172_17: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2172_18: ; 
addr_2173: ;copy
    pop rax
    push rax
    push rax
addr_2174: ;OP_SYS6
    mov qword rax, 721
    push rax
addr_2175: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2176: ;if
    pop rbx
    test rbx, rbx
    jz addr_2178
addr_2177: ;[     "    pop rax\n" (writeout)      "    pop rdi\n" (writeout)      "    pop rsi\n" (writeout)      "    pop rdx\n" (writeout)      "    pop r10\n" (writeout)      "    pop r8\n" (writeout)      "    pop r9\n" (writeout)      "    syscall\n" (writeout)      "    push rax\n" (writeout)      disc ret   ]
addr_2177_0: ;"    pop rax\n"
    push str_433
addr_2177_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2178
    jmp addr_1365
addr_2177_2: ;"    pop rdi\n"
    push str_434
addr_2177_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2178
    jmp addr_1365
addr_2177_4: ;"    pop rsi\n"
    push str_435
addr_2177_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2178
    jmp addr_1365
addr_2177_6: ;"    pop rdx\n"
    push str_436
addr_2177_7: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2178
    jmp addr_1365
addr_2177_8: ;"    pop r10\n"
    push str_437
addr_2177_9: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2178
    jmp addr_1365
addr_2177_10: ;"    pop r8\n"
    push str_438
addr_2177_11: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2178
    jmp addr_1365
addr_2177_12: ;"    pop r9\n"
    push str_439
addr_2177_13: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2178
    jmp addr_1365
addr_2177_14: ;"    syscall\n"
    push str_440
addr_2177_15: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2178
    jmp addr_1365
addr_2177_16: ;"    push rax\n"
    push str_441
addr_2177_17: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2178
    jmp addr_1365
addr_2177_18: ;disc
    pop rax
addr_2177_19: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2177_20: ; 
addr_2178: ;copy
    pop rax
    push rax
    push rax
addr_2179: ;OP_DUMP
    mov qword rax, 686
    push rax
addr_2180: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2181: ;if
    pop rbx
    test rbx, rbx
    jz addr_2183
addr_2182: ;[     "    pop rax\n" (writeout)      "    call print\n" (writeout)     disc ret   ]
addr_2182_0: ;"    pop rax\n"
    push str_442
addr_2182_1: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2183
    jmp addr_1365
addr_2182_2: ;"    call print\n"
    push str_443
addr_2182_3: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2183
    jmp addr_1365
addr_2182_4: ;disc
    pop rax
addr_2182_5: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2182_6: ; 
addr_2183: ;copy
    pop rax
    push rax
    push rax
addr_2184: ;IDENT_INC
    mov qword rax, 725
    push rax
addr_2185: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2186: ;if
    pop rbx
    test rbx, rbx
    jz addr_2188
addr_2187: ;[     (cmdflags)     6     putc disc     disc ret   ]
addr_2187_0: ;(cmdflags)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2188
    jmp addr_1275
addr_2187_1: ;6
    mov qword rax, 6
    push rax
addr_2187_2: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_2187_3: ;disc
    pop rax
addr_2187_4: ;disc
    pop rax
addr_2187_5: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2187_6: ; 
addr_2188: ;copy
    pop rax
    push rax
    push rax
addr_2189: ;IDENT_END
    mov qword rax, 728
    push rax
addr_2190: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2191: ;if
    pop rbx
    test rbx, rbx
    jz addr_2193
addr_2192: ;[     (identstackpop)     (endopasm)     disc ret   ]
addr_2192_0: ;(identstackpop)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2193
    jmp addr_1215
addr_2192_1: ;(endopasm)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2193
    jmp addr_1574
addr_2192_2: ;disc
    pop rax
addr_2192_3: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2192_4: ; 
addr_2193: ;copy
    pop rax
    push rax
    push rax
addr_2194: ;IDENT_DO
    mov qword rax, 727
    push rax
addr_2195: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2196: ;if
    pop rbx
    test rbx, rbx
    jz addr_2198
addr_2197: ;[     (addr) read 1 - (identstackpush)     IDENT_DO (identstackpush)      disc ret   ]
addr_2197_0: ;(addr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2198
    jmp addr_1279
addr_2197_1: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2197_2: ;1
    mov qword rax, 1
    push rax
addr_2197_3: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_2197_4: ;(identstackpush)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2198
    jmp addr_1197
addr_2197_5: ;IDENT_DO
    mov qword rax, 727
    push rax
addr_2197_6: ;(identstackpush)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2198
    jmp addr_1197
addr_2197_7: ;disc
    pop rax
addr_2197_8: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2197_9: ; 
addr_2198: ;"; unimp "
    push str_444
addr_2199: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2200
    jmp addr_1365
addr_2200: ;(getopname)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2201
    jmp addr_968
addr_2201: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2202
    jmp addr_1365
addr_2202: ;" "
    push str_445
addr_2203: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2204
    jmp addr_1365
addr_2204: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2205
    jmp addr_737
addr_2205: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2206
    jmp addr_1365
addr_2206: ;(writeoutln)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2207
    jmp addr_1376
addr_2207: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2208: ;end
addr_2209: ;proc
    ; - proc checkcmd 0 1
addr_2210: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2211
    jmp addr_737
addr_2211: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2212: ;255
    mov qword rax, 255
    push rax
addr_2213: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2214: ;34
    mov qword rax, 34
    push rax
addr_2215: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2216: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2217
    jmp addr_737
addr_2217: ;(last)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2218
    jmp addr_326
addr_2218: ;34
    mov qword rax, 34
    push rax
addr_2219: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_2220: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2221: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2222
    jmp addr_737
addr_2222: ;"""
    push str_446
addr_2223: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2224
    jmp addr_172
addr_2224: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2225: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2226
    jmp addr_737
addr_2226: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2227: ;255
    mov qword rax, 255
    push rax
addr_2228: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2229: ;91
    mov qword rax, 91
    push rax
addr_2230: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2231: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2232
    jmp addr_737
addr_2232: ;(last)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2233
    jmp addr_326
addr_2233: ;93
    mov qword rax, 93
    push rax
addr_2234: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_2235: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2236: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2237: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2238
    jmp addr_737
addr_2238: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2239: ;255
    mov qword rax, 255
    push rax
addr_2240: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2241: ;123
    mov qword rax, 123
    push rax
addr_2242: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2243: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2244
    jmp addr_737
addr_2244: ;(last)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2245
    jmp addr_326
addr_2245: ;125
    mov qword rax, 125
    push rax
addr_2246: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_2247: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2248: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2249: ;0
    mov qword rax, 0
    push rax
addr_2250: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2251: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2252: ;end
addr_2253: ;proc
    ; - proc checkblockcmd 0 1
addr_2254: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2255
    jmp addr_741
addr_2255: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2256: ;255
    mov qword rax, 255
    push rax
addr_2257: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2258: ;34
    mov qword rax, 34
    push rax
addr_2259: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2260: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2261
    jmp addr_741
addr_2261: ;(last)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2262
    jmp addr_326
addr_2262: ;34
    mov qword rax, 34
    push rax
addr_2263: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_2264: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2265: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2266
    jmp addr_741
addr_2266: ;"""
    push str_447
addr_2267: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2268
    jmp addr_172
addr_2268: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2269: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2270
    jmp addr_741
addr_2270: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2271: ;255
    mov qword rax, 255
    push rax
addr_2272: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2273: ;91
    mov qword rax, 91
    push rax
addr_2274: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2275: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2276
    jmp addr_741
addr_2276: ;(last)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2277
    jmp addr_326
addr_2277: ;93
    mov qword rax, 93
    push rax
addr_2278: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_2279: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2280: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2281: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2282
    jmp addr_741
addr_2282: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2283: ;255
    mov qword rax, 255
    push rax
addr_2284: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2285: ;123
    mov qword rax, 123
    push rax
addr_2286: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2287: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2288
    jmp addr_741
addr_2288: ;(last)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2289
    jmp addr_326
addr_2289: ;125
    mov qword rax, 125
    push rax
addr_2290: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_2291: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2292: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2293: ;0
    mov qword rax, 0
    push rax
addr_2294: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2295: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2296: ;end
addr_2297: ;proc
    ; - proc checkbufferblock 2 2
addr_2298: ;(checkblockcmd)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2299
    jmp addr_2254
addr_2299: ;if
    pop rbx
    test rbx, rbx
    jz addr_2301
addr_2300: ;[(parseblockcmd) disc disc (getblockbuffer) 0 ret]
addr_2300_0: ;(parseblockcmd)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2301
    jmp addr_1934
addr_2300_1: ;disc
    pop rax
addr_2300_2: ;disc
    pop rax
addr_2300_3: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2301
    jmp addr_741
addr_2300_4: ;0
    mov qword rax, 0
    push rax
addr_2300_5: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2300_6: ; 
addr_2301: ;disc
    pop rax
addr_2302: ;32
    mov qword rax, 32
    push rax
addr_2303: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2304: ;end
addr_2305: ;proc
    ; - proc parseblock 0 0
addr_2306: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2307
    jmp addr_737
addr_2307: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2308
    jmp addr_741
addr_2308: ;do
addr_2309: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2310: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2311: ;255
    mov qword rax, 255
    push rax
addr_2312: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2313: ;copy
    pop rax
    push rax
    push rax
addr_2314: ;9
    mov qword rax, 9
    push rax
addr_2315: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2316: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2317: ;10
    mov qword rax, 10
    push rax
addr_2318: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2319: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2320: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2321: ;13
    mov qword rax, 13
    push rax
addr_2322: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2323: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2324: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2325: ;32
    mov qword rax, 32
    push rax
addr_2326: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2327: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2328: ;0
    mov qword rax, 0
    push rax
addr_2329: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_2330: ;if
    pop rbx
    test rbx, rbx
    jz addr_2332
addr_2331: ;(checkbufferblock)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2332
    jmp addr_2298
addr_2332: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2333: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_2334: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_2335: ;disc
    pop rax
addr_2336: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_2337: ;1
    mov qword rax, 1
    push rax
addr_2338: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2339: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_2340: ;copy
    pop rax
    push rax
    push rax
addr_2341: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2342: ;255
    mov qword rax, 255
    push rax
addr_2343: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2344: ;0
    mov qword rax, 0
    push rax
addr_2345: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_2346: ;if
    pop rbx
    test rbx, rbx
    jz addr_2348
addr_2347: ;[       1 +     ]
addr_2347_0: ;1
    mov qword rax, 1
    push rax
addr_2347_1: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2347_2: ; 
addr_2348: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2349: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2350: ;255
    mov qword rax, 255
    push rax
addr_2351: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2352: ;0
    mov qword rax, 0
    push rax
addr_2353: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_2354: ;end
    pop rbx
    test rbx, rbx
    jnz addr_4
addr_2355: ;disc
    pop rax
addr_2356: ;disc
    pop rax
addr_2357: ;(getblockbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2358
    jmp addr_741
addr_2358: ;32
    mov qword rax, 32
    push rax
addr_2359: ;(checkbufferblock)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2360
    jmp addr_2298
addr_2360: ;disc
    pop rax
addr_2361: ;disc
    pop rax
addr_2362: ;(writesubaddr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2363
    jmp addr_1596
addr_2363: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2364: ;end
addr_2365: ;proc
    ; - proc parsecmd 0 0
addr_2366: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2367
    jmp addr_737
addr_2367: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2368: ;255
    mov qword rax, 255
    push rax
addr_2369: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2370: ;123
    mov qword rax, 123
    push rax
addr_2371: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2372: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2373
    jmp addr_737
addr_2373: ;(last)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2374
    jmp addr_326
addr_2374: ;125
    mov qword rax, 125
    push rax
addr_2375: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2376: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2377: ;if
    pop rbx
    test rbx, rbx
    jz addr_2379
addr_2378: ;[      (getcmdbuffer) (clearbuf) disc     ret   ]
addr_2378_0: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2379
    jmp addr_737
addr_2378_1: ;(clearbuf)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2379
    jmp addr_346
addr_2378_2: ;disc
    pop rax
addr_2378_3: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2378_4: ; 
addr_2379: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2380
    jmp addr_737
addr_2380: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2381: ;255
    mov qword rax, 255
    push rax
addr_2382: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2383: ;34
    mov qword rax, 34
    push rax
addr_2384: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2385: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2386
    jmp addr_737
addr_2386: ;(last)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2387
    jmp addr_326
addr_2387: ;34
    mov qword rax, 34
    push rax
addr_2388: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2389: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2390: ;if
    pop rbx
    test rbx, rbx
    jz addr_2392
addr_2391: ;[     (writeaddr)      { add code }     "    push str_" (writeout)     (getstringidx) (strint) (writeout)     (writeoutln)      { put the header }     "str_"     (getstringbuffer) copy (strlen) +      swap (strcpy) disc disc          (stringidx) read 1 - (strint)     (getstringbuffer) copy (strlen) +      swap (strcpy) disc disc          ": db "     (getstringbuffer) copy (strlen) +      swap (strcpy) disc disc     (getcmdbuffer) (inner)      { put the first char }     copy read 255 &&     (strint)     (getstringbuffer) copy (strlen) +      swap (strcpy) disc disc     do       1 +        { comma }       ", "       (getstringbuffer) copy (strlen) +       swap (strcpy) disc disc        { put the next char }       copy read 255 &&       copy (strint)       (getstringbuffer) copy (strlen) +       swap (strcpy) disc disc     end     "\n"     (getstringbuffer) copy (strlen) +     swap (strcpy) disc disc     disc      (getcmdbuffer) (clearbuf) disc     ret   ]
addr_2391_0: ;(writeaddr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_1583
addr_2391_1: ;"    push str_"
    push str_448
addr_2391_2: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_1365
addr_2391_3: ;(getstringidx)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_1295
addr_2391_4: ;(strint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_25
addr_2391_5: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_1365
addr_2391_6: ;(writeoutln)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_1376
addr_2391_7: ;"str_"
    push str_449
addr_2391_8: ;(getstringbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_749
addr_2391_9: ;copy
    pop rax
    push rax
    push rax
addr_2391_10: ;(strlen)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_308
addr_2391_11: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2391_12: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_2391_13: ;(strcpy)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_142
addr_2391_14: ;disc
    pop rax
addr_2391_15: ;disc
    pop rax
addr_2391_16: ;(stringidx)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_1283
addr_2391_17: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2391_18: ;1
    mov qword rax, 1
    push rax
addr_2391_19: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_2391_20: ;(strint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_25
addr_2391_21: ;(getstringbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_749
addr_2391_22: ;copy
    pop rax
    push rax
    push rax
addr_2391_23: ;(strlen)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_308
addr_2391_24: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2391_25: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_2391_26: ;(strcpy)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_142
addr_2391_27: ;disc
    pop rax
addr_2391_28: ;disc
    pop rax
addr_2391_29: ;": db "
    push str_450
addr_2391_30: ;(getstringbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_749
addr_2391_31: ;copy
    pop rax
    push rax
    push rax
addr_2391_32: ;(strlen)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_308
addr_2391_33: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2391_34: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_2391_35: ;(strcpy)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_142
addr_2391_36: ;disc
    pop rax
addr_2391_37: ;disc
    pop rax
addr_2391_38: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_737
addr_2391_39: ;(inner)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_1237
addr_2391_40: ;copy
    pop rax
    push rax
    push rax
addr_2391_41: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2391_42: ;255
    mov qword rax, 255
    push rax
addr_2391_43: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2391_44: ;(strint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_25
addr_2391_45: ;(getstringbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_749
addr_2391_46: ;copy
    pop rax
    push rax
    push rax
addr_2391_47: ;(strlen)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_308
addr_2391_48: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2391_49: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_2391_50: ;(strcpy)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_142
addr_2391_51: ;disc
    pop rax
addr_2391_52: ;disc
    pop rax
addr_2391_53: ;do
addr_2391_54: ;1
    mov qword rax, 1
    push rax
addr_2391_55: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2391_56: ;", "
    push str_451
addr_2391_57: ;(getstringbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_749
addr_2391_58: ;copy
    pop rax
    push rax
    push rax
addr_2391_59: ;(strlen)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_308
addr_2391_60: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2391_61: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_2391_62: ;(strcpy)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_142
addr_2391_63: ;disc
    pop rax
addr_2391_64: ;disc
    pop rax
addr_2391_65: ;copy
    pop rax
    push rax
    push rax
addr_2391_66: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2391_67: ;255
    mov qword rax, 255
    push rax
addr_2391_68: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2391_69: ;copy
    pop rax
    push rax
    push rax
addr_2391_70: ;(strint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_25
addr_2391_71: ;(getstringbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_749
addr_2391_72: ;copy
    pop rax
    push rax
    push rax
addr_2391_73: ;(strlen)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_308
addr_2391_74: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2391_75: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_2391_76: ;(strcpy)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_142
addr_2391_77: ;disc
    pop rax
addr_2391_78: ;disc
    pop rax
addr_2391_79: ;end
    pop rbx
    test rbx, rbx
    jnz addr_87
addr_2391_80: ;"\n"
    push str_452
addr_2391_81: ;(getstringbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_749
addr_2391_82: ;copy
    pop rax
    push rax
    push rax
addr_2391_83: ;(strlen)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_308
addr_2391_84: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2391_85: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_2391_86: ;(strcpy)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_142
addr_2391_87: ;disc
    pop rax
addr_2391_88: ;disc
    pop rax
addr_2391_89: ;disc
    pop rax
addr_2391_90: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_737
addr_2391_91: ;(clearbuf)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2392
    jmp addr_346
addr_2391_92: ;disc
    pop rax
addr_2391_93: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2391_94: ; 
addr_2392: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2393
    jmp addr_737
addr_2393: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2394: ;255
    mov qword rax, 255
    push rax
addr_2395: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2396: ;91
    mov qword rax, 91
    push rax
addr_2397: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2398: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2399
    jmp addr_737
addr_2399: ;(last)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2400
    jmp addr_326
addr_2400: ;93
    mov qword rax, 93
    push rax
addr_2401: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2402: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2403: ;if
    pop rbx
    test rbx, rbx
    jz addr_2405
addr_2404: ;[     (writeaddr)     (getcmdbuffer) (inner)     (getcmdbuffer) swap (strcpy) disc disc     (getcmdbuffer) copy (strlen) 1 - + 0 putc disc     (parseblock)     (getcmdbuffer) (clearbuf) disc     ret   ]
addr_2404_0: ;(writeaddr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2405
    jmp addr_1583
addr_2404_1: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2405
    jmp addr_737
addr_2404_2: ;(inner)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2405
    jmp addr_1237
addr_2404_3: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2405
    jmp addr_737
addr_2404_4: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_2404_5: ;(strcpy)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2405
    jmp addr_142
addr_2404_6: ;disc
    pop rax
addr_2404_7: ;disc
    pop rax
addr_2404_8: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2405
    jmp addr_737
addr_2404_9: ;copy
    pop rax
    push rax
    push rax
addr_2404_10: ;(strlen)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2405
    jmp addr_308
addr_2404_11: ;1
    mov qword rax, 1
    push rax
addr_2404_12: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_2404_13: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2404_14: ;0
    mov qword rax, 0
    push rax
addr_2404_15: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_2404_16: ;disc
    pop rax
addr_2404_17: ;(parseblock)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2405
    jmp addr_2306
addr_2404_18: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2405
    jmp addr_737
addr_2404_19: ;(clearbuf)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2405
    jmp addr_346
addr_2404_20: ;disc
    pop rax
addr_2404_21: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2404_22: ; 
addr_2405: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2406
    jmp addr_737
addr_2406: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2407: ;255
    mov qword rax, 255
    push rax
addr_2408: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2409: ;40
    mov qword rax, 40
    push rax
addr_2410: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2411: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2412
    jmp addr_737
addr_2412: ;(last)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2413
    jmp addr_326
addr_2413: ;41
    mov qword rax, 41
    push rax
addr_2414: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2415: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2416: ;if
    pop rbx
    test rbx, rbx
    jz addr_2418
addr_2417: ;[     (writeaddr)     "    mov rax, [ret_stack_rsp]\n" (writeout)     "    add rax, 8\n" (writeout)     "    mov qword [ret_stack_rsp], rax\n" (writeout)     "    mov qword [rax], addr_" (writeout)     (addr) read (strint) (writeout)     (writeoutln)     "    jmp addr_" (writeout)     (getcmdbuffer) (inner) disc     (getprocTab)     (getcmdbuffer) 1 + (inTab) 0 == if (noproc)     (getcmdbuffer) 1 + (getTab) (strint)     (writeout)     disc     (getcmdbuffer) (clearbuf) disc     (writeoutln)     ret   ]
addr_2417_0: ;(writeaddr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2418
    jmp addr_1583
addr_2417_1: ;"    mov rax, [ret_stack_rsp]\n"
    push str_453
addr_2417_2: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2418
    jmp addr_1365
addr_2417_3: ;"    add rax, 8\n"
    push str_454
addr_2417_4: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2418
    jmp addr_1365
addr_2417_5: ;"    mov qword [ret_stack_rsp], rax\n"
    push str_455
addr_2417_6: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2418
    jmp addr_1365
addr_2417_7: ;"    mov qword [rax], addr_"
    push str_456
addr_2417_8: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2418
    jmp addr_1365
addr_2417_9: ;(addr)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2418
    jmp addr_1279
addr_2417_10: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2417_11: ;(strint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2418
    jmp addr_25
addr_2417_12: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2418
    jmp addr_1365
addr_2417_13: ;(writeoutln)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2418
    jmp addr_1376
addr_2417_14: ;"    jmp addr_"
    push str_457
addr_2417_15: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2418
    jmp addr_1365
addr_2417_16: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2418
    jmp addr_737
addr_2417_17: ;(inner)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2418
    jmp addr_1237
addr_2417_18: ;disc
    pop rax
addr_2417_19: ;(getprocTab)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2418
    jmp addr_733
addr_2417_20: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2418
    jmp addr_737
addr_2417_21: ;1
    mov qword rax, 1
    push rax
addr_2417_22: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2417_23: ;(inTab)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2418
    jmp addr_638
addr_2417_24: ;0
    mov qword rax, 0
    push rax
addr_2417_25: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2417_26: ;if
    pop rbx
    test rbx, rbx
    jz addr_2417_28
addr_2417_27: ;(noproc)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2418
    jmp addr_1355
addr_2417_28: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2418
    jmp addr_737
addr_2417_29: ;1
    mov qword rax, 1
    push rax
addr_2417_30: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2417_31: ;(getTab)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2418
    jmp addr_592
addr_2417_32: ;(strint)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2418
    jmp addr_25
addr_2417_33: ;(writeout)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2418
    jmp addr_1365
addr_2417_34: ;disc
    pop rax
addr_2417_35: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2418
    jmp addr_737
addr_2417_36: ;(clearbuf)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2418
    jmp addr_346
addr_2417_37: ;disc
    pop rax
addr_2417_38: ;(writeoutln)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2418
    jmp addr_1376
addr_2417_39: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2417_40: ; 
addr_2418: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2419
    jmp addr_737
addr_2419: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2420: ;255
    mov qword rax, 255
    push rax
addr_2421: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2422: ;0
    mov qword rax, 0
    push rax
addr_2423: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_2424: ;if
    pop rbx
    test rbx, rbx
    jz addr_2426
addr_2425: ;[     (cmdflags) read     (getcmdbuffer) (getnameop)     covr 0 == if (getcmdasm)     covr 1 == if (addproc)     covr 2 == if (addproc)     covr 3 == if (addproc)     covr 4 == if (addconst)     covr 5 == if (addconst)     covr 6 == if (addinc)     covr 7 == if (addvar)     disc   ]
addr_2425_0: ;(cmdflags)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2426
    jmp addr_1275
addr_2425_1: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2425_2: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2426
    jmp addr_737
addr_2425_3: ;(getnameop)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2426
    jmp addr_754
addr_2425_4: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2425_5: ;0
    mov qword rax, 0
    push rax
addr_2425_6: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2425_7: ;if
    pop rbx
    test rbx, rbx
    jz addr_2425_9
addr_2425_8: ;(getcmdasm)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2426
    jmp addr_2003
addr_2425_9: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2425_10: ;1
    mov qword rax, 1
    push rax
addr_2425_11: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2425_12: ;if
    pop rbx
    test rbx, rbx
    jz addr_2425_14
addr_2425_13: ;(addproc)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2426
    jmp addr_1385
addr_2425_14: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2425_15: ;2
    mov qword rax, 2
    push rax
addr_2425_16: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2425_17: ;if
    pop rbx
    test rbx, rbx
    jz addr_2425_19
addr_2425_18: ;(addproc)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2426
    jmp addr_1385
addr_2425_19: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2425_20: ;3
    mov qword rax, 3
    push rax
addr_2425_21: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2425_22: ;if
    pop rbx
    test rbx, rbx
    jz addr_2425_24
addr_2425_23: ;(addproc)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2426
    jmp addr_1385
addr_2425_24: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2425_25: ;4
    mov qword rax, 4
    push rax
addr_2425_26: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2425_27: ;if
    pop rbx
    test rbx, rbx
    jz addr_2425_29
addr_2425_28: ;(addconst)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2426
    jmp addr_1416
addr_2425_29: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2425_30: ;5
    mov qword rax, 5
    push rax
addr_2425_31: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2425_32: ;if
    pop rbx
    test rbx, rbx
    jz addr_2425_34
addr_2425_33: ;(addconst)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2426
    jmp addr_1416
addr_2425_34: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2425_35: ;6
    mov qword rax, 6
    push rax
addr_2425_36: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2425_37: ;if
    pop rbx
    test rbx, rbx
    jz addr_2425_39
addr_2425_38: ;(addinc)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2426
    jmp addr_1439
addr_2425_39: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2425_40: ;7
    mov qword rax, 7
    push rax
addr_2425_41: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2425_42: ;if
    pop rbx
    test rbx, rbx
    jz addr_2425_44
addr_2425_43: ;(addvar)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2426
    jmp addr_1447
addr_2425_44: ;disc
    pop rax
addr_2425_45: ; 
addr_2426: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2427
    jmp addr_737
addr_2427: ;(clearbuf)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2428
    jmp addr_346
addr_2428: ;disc
    pop rax
addr_2429: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2430: ;end
addr_2431: ;proc
    ; - proc checkbuffer 2 2
addr_2432: ;(checkcmd)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2433
    jmp addr_2210
addr_2433: ;if
    pop rbx
    test rbx, rbx
    jz addr_2435
addr_2434: ;[(parsecmd) disc disc (getcmdbuffer) 0 ret]
addr_2434_0: ;(parsecmd)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2435
    jmp addr_2366
addr_2434_1: ;disc
    pop rax
addr_2434_2: ;disc
    pop rax
addr_2434_3: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2435
    jmp addr_737
addr_2434_4: ;0
    mov qword rax, 0
    push rax
addr_2434_5: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2434_6: ; 
addr_2435: ;disc
    pop rax
addr_2436: ;32
    mov qword rax, 32
    push rax
addr_2437: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2438: ;end
addr_2439: ;proc
    ; - proc parsefile 0 0
addr_2440: ;(asmheader)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2441
    jmp addr_1475
addr_2441: ;READSIZE
    mov qword rax, 753
    push rax
addr_2442: ;(getreadbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2443
    jmp addr_745
addr_2443: ;(getinputfd)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2444
    jmp addr_1263
addr_2444: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2445: ;(read)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2446
    jmp addr_251
addr_2446: ;disc
    pop rax
addr_2447: ;(getinputfd)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2448
    jmp addr_1263
addr_2448: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2449: ;74
    mov qword rax, 74
    push rax
addr_2450: ;sys1
    pop rax
    pop rdi
    syscall
    push rax
addr_2451: ;disc
    pop rax
addr_2452: ;do
addr_2453: ;(getreadbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2454
    jmp addr_745
addr_2454: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2455
    jmp addr_737
addr_2455: ;do
addr_2456: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2457: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2458: ;255
    mov qword rax, 255
    push rax
addr_2459: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2460: ;copy
    pop rax
    push rax
    push rax
addr_2461: ;9
    mov qword rax, 9
    push rax
addr_2462: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2463: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2464: ;10
    mov qword rax, 10
    push rax
addr_2465: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2466: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2467: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2468: ;13
    mov qword rax, 13
    push rax
addr_2469: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2470: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2471: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2472: ;32
    mov qword rax, 32
    push rax
addr_2473: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2474: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2475: ;0
    mov qword rax, 0
    push rax
addr_2476: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_2477: ;if
    pop rbx
    test rbx, rbx
    jz addr_2479
addr_2478: ;(checkbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2479
    jmp addr_2432
addr_2479: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2480: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_2481: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_2482: ;disc
    pop rax
addr_2483: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_2484: ;1
    mov qword rax, 1
    push rax
addr_2485: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2486: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_2487: ;copy
    pop rax
    push rax
    push rax
addr_2488: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2489: ;255
    mov qword rax, 255
    push rax
addr_2490: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2491: ;0
    mov qword rax, 0
    push rax
addr_2492: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_2493: ;if
    pop rbx
    test rbx, rbx
    jz addr_2495
addr_2494: ;[         1 +       ]
addr_2494_0: ;1
    mov qword rax, 1
    push rax
addr_2494_1: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2494_2: ; 
addr_2495: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2496: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2497: ;255
    mov qword rax, 255
    push rax
addr_2498: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2499: ;0
    mov qword rax, 0
    push rax
addr_2500: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_2501: ;end
    pop rbx
    test rbx, rbx
    jnz addr_151
addr_2502: ;disc
    pop rax
addr_2503: ;disc
    pop rax
addr_2504: ;(getreadbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2505
    jmp addr_745
addr_2505: ;(clearbuf)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2506
    jmp addr_346
addr_2506: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2507
    jmp addr_737
addr_2507: ;(strcpy)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2508
    jmp addr_142
addr_2508: ;disc
    pop rax
addr_2509: ;disc
    pop rax
addr_2510: ;READSIZE
    mov qword rax, 753
    push rax
addr_2511: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2512
    jmp addr_737
addr_2512: ;(strlen)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2513
    jmp addr_308
addr_2513: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_2514: ;(getreadbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2515
    jmp addr_745
addr_2515: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2516
    jmp addr_737
addr_2516: ;(strlen)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2517
    jmp addr_308
addr_2517: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2518: ;(getinputfd)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2519
    jmp addr_1263
addr_2519: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2520: ;(read)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2521
    jmp addr_251
addr_2521: ;copy
    pop rax
    push rax
    push rax
addr_2522: ;(getreadbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2523
    jmp addr_745
addr_2523: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2524: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2525
    jmp addr_737
addr_2525: ;(strlen)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2526
    jmp addr_308
addr_2526: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2527: ;1
    mov qword rax, 1
    push rax
addr_2528: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2529: ;0
    mov qword rax, 0
    push rax
addr_2530: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_2531: ;disc
    pop rax
addr_2532: ;(getinputfd)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2533
    jmp addr_1263
addr_2533: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2534: ;74
    mov qword rax, 74
    push rax
addr_2535: ;sys1
    pop rax
    pop rdi
    syscall
    push rax
addr_2536: ;disc
    pop rax
addr_2537: ;(getcmdbuffer)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2538
    jmp addr_737
addr_2538: ;(clearbuf)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2539
    jmp addr_346
addr_2539: ;disc
    pop rax
addr_2540: ;end
    pop rbx
    test rbx, rbx
    jnz addr_148
addr_2541: ;(asmfooter)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2542
    jmp addr_1504
addr_2542: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2543: ;end
addr_2544: ;proc
    ; - proc help 1 0
addr_2545: ;"INVALID HELP ID"
    push str_458
addr_2546: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2547: ;1
    mov qword rax, 1
    push rax
addr_2548: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2549: ;if
    pop rbx
    test rbx, rbx
    jz addr_2551
addr_2550: ;[     disc      "Help"   ]
addr_2550_0: ;disc
    pop rax
addr_2550_1: ;"Help"
    push str_459
addr_2550_2: ; 
addr_2551: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2552: ;2
    mov qword rax, 2
    push rax
addr_2553: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2554: ;if
    pop rbx
    test rbx, rbx
    jz addr_2556
addr_2555: ;[     disc     "ERROR: You must compile exactly 1 file"   ]
addr_2555_0: ;disc
    pop rax
addr_2555_1: ;"ERROR: You must compile exactly 1 file"
    push str_460
addr_2555_2: ; 
addr_2556: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2557: ;3
    mov qword rax, 3
    push rax
addr_2558: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2559: ;if
    pop rbx
    test rbx, rbx
    jz addr_2561
addr_2560: ;[     disc     "ERROR: Last argument supplied requires a parameter"   ]
addr_2560_0: ;disc
    pop rax
addr_2560_1: ;"ERROR: Last argument supplied requires a parameter"
    push str_461
addr_2560_2: ; 
addr_2561: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2562
    jmp addr_78
addr_2562: ;"slim compiler usage:"
    push str_462
addr_2563: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2564
    jmp addr_78
addr_2564: ;(endl)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2565
    jmp addr_73
addr_2565: ;"slim [-h]\ [-s]\ [-o output]\ file"
    push str_463
addr_2566: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2567
    jmp addr_78
addr_2567: ;(endl)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2568
    jmp addr_73
addr_2568: ;"-h, --help\t\tshows this help message."
    push str_464
addr_2569: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2570
    jmp addr_78
addr_2570: ;"-s, --silent\tdisables output text."
    push str_465
addr_2571: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2572
    jmp addr_78
addr_2572: ;"-o, --output\tselects the output file."
    push str_466
addr_2573: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2574
    jmp addr_78
addr_2574: ;(endl)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2575
    jmp addr_73
addr_2575: ;disc
    pop rax
addr_2576: ;(exit)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2577
    jmp addr_1335
addr_2577: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2578: ;end
addr_2579: ;proc
    ; - proc setsilent 0 0
addr_2580: ;(getsilent)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2581
    jmp addr_1267
addr_2581: ;1
    mov qword rax, 1
    push rax
addr_2582: ;putc
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
addr_2583: ;disc
    pop rax
addr_2584: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2585: ;end
addr_2586: ;proc
    ; - proc setoutput 1 1
addr_2587: ;copy
    pop rax
    push rax
    push rax
addr_2588: ;argc
    mov rax, [args_ptr]
    mov rax, [rax]
    push rax
addr_2589: ;1
    mov qword rax, 1
    push rax
addr_2590: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_2591: ;>
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_2592: ;if
    pop rbx
    test rbx, rbx
    jz addr_2594
addr_2593: ;[3 (help)]
addr_2593_0: ;3
    mov qword rax, 3
    push rax
addr_2593_1: ;(help)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2594
    jmp addr_2545
addr_2593_2: ; 
addr_2594: ;(getoutput)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2595
    jmp addr_1251
addr_2595: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2596: ;(args)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2597
    jmp addr_118
addr_2597: ;(strcpy)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2598
    jmp addr_142
addr_2598: ;disc
    pop rax
addr_2599: ;disc
    pop rax
addr_2600: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2601: ;end
addr_2602: ;proc
    ; - proc setinput 1 0
addr_2603: ;(getinput)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2604
    jmp addr_1259
addr_2604: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2605: ;255
    mov qword rax, 255
    push rax
addr_2606: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2607: ;0
    mov qword rax, 0
    push rax
addr_2608: ;!=
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_2609: ;if
    pop rbx
    test rbx, rbx
    jz addr_2611
addr_2610: ;[2 (help)]
addr_2610_0: ;2
    mov qword rax, 2
    push rax
addr_2610_1: ;(help)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2611
    jmp addr_2545
addr_2610_2: ; 
addr_2611: ;(getinput)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2612
    jmp addr_1259
addr_2612: ;covr
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2613: ;(args)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2614
    jmp addr_118
addr_2614: ;(strcpy)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2615
    jmp addr_142
addr_2615: ;disc
    pop rax
addr_2616: ;disc
    pop rax
addr_2617: ;disc
    pop rax
addr_2618: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2619: ;end
addr_2620: ;proc
    ; - proc applyarg 2 2
addr_2621: ;copy
    pop rax
    push rax
    push rax
addr_2622: ;"-h"
    push str_467
addr_2623: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2624
    jmp addr_172
addr_2624: ;if
    pop rbx
    test rbx, rbx
    jz addr_2626
addr_2625: ;[disc 1 (help) 0 ret]
addr_2625_0: ;disc
    pop rax
addr_2625_1: ;1
    mov qword rax, 1
    push rax
addr_2625_2: ;(help)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2626
    jmp addr_2545
addr_2625_3: ;0
    mov qword rax, 0
    push rax
addr_2625_4: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2625_5: ; 
addr_2626: ;copy
    pop rax
    push rax
    push rax
addr_2627: ;"--help"
    push str_468
addr_2628: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2629
    jmp addr_172
addr_2629: ;if
    pop rbx
    test rbx, rbx
    jz addr_2631
addr_2630: ;[disc 1 (help) 0 ret]
addr_2630_0: ;disc
    pop rax
addr_2630_1: ;1
    mov qword rax, 1
    push rax
addr_2630_2: ;(help)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2631
    jmp addr_2545
addr_2630_3: ;0
    mov qword rax, 0
    push rax
addr_2630_4: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2630_5: ; 
addr_2631: ;copy
    pop rax
    push rax
    push rax
addr_2632: ;"-o"
    push str_469
addr_2633: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2634
    jmp addr_172
addr_2634: ;if
    pop rbx
    test rbx, rbx
    jz addr_2636
addr_2635: ;[disc 1 + (setoutput) 0 ret]
addr_2635_0: ;disc
    pop rax
addr_2635_1: ;1
    mov qword rax, 1
    push rax
addr_2635_2: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2635_3: ;(setoutput)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2636
    jmp addr_2587
addr_2635_4: ;0
    mov qword rax, 0
    push rax
addr_2635_5: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2635_6: ; 
addr_2636: ;copy
    pop rax
    push rax
    push rax
addr_2637: ;"--output"
    push str_470
addr_2638: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2639
    jmp addr_172
addr_2639: ;if
    pop rbx
    test rbx, rbx
    jz addr_2641
addr_2640: ;[disc 1 + (setoutput) 0 ret]
addr_2640_0: ;disc
    pop rax
addr_2640_1: ;1
    mov qword rax, 1
    push rax
addr_2640_2: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2640_3: ;(setoutput)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2641
    jmp addr_2587
addr_2640_4: ;0
    mov qword rax, 0
    push rax
addr_2640_5: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2640_6: ; 
addr_2641: ;copy
    pop rax
    push rax
    push rax
addr_2642: ;"-s"
    push str_471
addr_2643: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2644
    jmp addr_172
addr_2644: ;if
    pop rbx
    test rbx, rbx
    jz addr_2646
addr_2645: ;[disc (setsilent) 0 ret]
addr_2645_0: ;disc
    pop rax
addr_2645_1: ;(setsilent)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2646
    jmp addr_2580
addr_2645_2: ;0
    mov qword rax, 0
    push rax
addr_2645_3: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2645_4: ; 
addr_2646: ;copy
    pop rax
    push rax
    push rax
addr_2647: ;"--silent"
    push str_472
addr_2648: ;(streq)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2649
    jmp addr_172
addr_2649: ;if
    pop rbx
    test rbx, rbx
    jz addr_2651
addr_2650: ;[disc (setsilent) 0 ret]
addr_2650_0: ;disc
    pop rax
addr_2650_1: ;(setsilent)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2651
    jmp addr_2580
addr_2650_2: ;0
    mov qword rax, 0
    push rax
addr_2650_3: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2650_4: ; 
addr_2651: ;disc
    pop rax
addr_2652: ;1
    mov qword rax, 1
    push rax
addr_2653: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2654: ;end
addr_2655: ;proc
    ; - proc cmdtmp 0 1
addr_2656: ;var
    mov rax, mem
    add rax, 703600
    push rax
addr_2657: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2658: ;end
addr_2659: ;proc
    ; - proc nasm 0 0
addr_2660: ;(cmdtmp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2661
    jmp addr_2656
addr_2661: ;"/usr/bin/nasm"
    push str_473
addr_2662: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_2663: ;8
    mov qword rax, 8
    push rax
addr_2664: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2665: ;"-f"
    push str_474
addr_2666: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_2667: ;8
    mov qword rax, 8
    push rax
addr_2668: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2669: ;"elf64"
    push str_475
addr_2670: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_2671: ;8
    mov qword rax, 8
    push rax
addr_2672: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2673: ;"-o"
    push str_476
addr_2674: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_2675: ;8
    mov qword rax, 8
    push rax
addr_2676: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2677: ;"temp.o"
    push str_477
addr_2678: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_2679: ;8
    mov qword rax, 8
    push rax
addr_2680: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2681: ;"temp.nasm"
    push str_478
addr_2682: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_2683: ;8
    mov qword rax, 8
    push rax
addr_2684: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2685: ;NULL
    mov qword rax, 1
    push rax
addr_2686: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_2687: ;disc
    pop rax
addr_2688: ;(cmdtmp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2689
    jmp addr_2656
addr_2689: ;(execcmdecho)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2690
    jmp addr_468
addr_2690: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2691: ;end
addr_2692: ;proc
    ; - proc ld 0 0
addr_2693: ;(cmdtmp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2694
    jmp addr_2656
addr_2694: ;"/usr/bin/ld"
    push str_479
addr_2695: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_2696: ;8
    mov qword rax, 8
    push rax
addr_2697: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2698: ;"-dynamic-linker"
    push str_480
addr_2699: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_2700: ;8
    mov qword rax, 8
    push rax
addr_2701: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2702: ;"/lib64/ld-linux-x86-64.so.2"
    push str_481
addr_2703: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_2704: ;8
    mov qword rax, 8
    push rax
addr_2705: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2706: ;"-o"
    push str_482
addr_2707: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_2708: ;8
    mov qword rax, 8
    push rax
addr_2709: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2710: ;(getoutput)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2711
    jmp addr_1251
addr_2711: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_2712: ;8
    mov qword rax, 8
    push rax
addr_2713: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2714: ;"-lc"
    push str_483
addr_2715: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_2716: ;8
    mov qword rax, 8
    push rax
addr_2717: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2718: ;"temp.o"
    push str_484
addr_2719: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_2720: ;8
    mov qword rax, 8
    push rax
addr_2721: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2722: ;NULL
    mov qword rax, 1
    push rax
addr_2723: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_2724: ;disc
    pop rax
addr_2725: ;(cmdtmp)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2726
    jmp addr_2656
addr_2726: ;(execcmdecho)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2727
    jmp addr_468
addr_2727: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2728: ;end
addr_2729: ;proc
    ; - proc main 0 0
addr_2730: ;1
    mov qword rax, 1
    push rax
addr_2731: ;argc
    mov rax, [args_ptr]
    mov rax, [rax]
    push rax
addr_2732: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2733: ;if
    pop rbx
    test rbx, rbx
    jz addr_2735
addr_2734: ;[2 (help)]
addr_2734_0: ;2
    mov qword rax, 2
    push rax
addr_2734_1: ;(help)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2735
    jmp addr_2545
addr_2734_2: ; 
addr_2735: ;0
    mov qword rax, 0
    push rax
addr_2736: ;do
addr_2737: ;1
    mov qword rax, 1
    push rax
addr_2738: ;+
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2739: ;copy
    pop rax
    push rax
    push rax
addr_2740: ;(args)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2741
    jmp addr_118
addr_2741: ;(applyarg)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2742
    jmp addr_2621
addr_2742: ;if
    pop rbx
    test rbx, rbx
    jz addr_2744
addr_2743: ;[copy (setinput)]
addr_2743_0: ;copy
    pop rax
    push rax
    push rax
addr_2743_1: ;(setinput)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2744
    jmp addr_2603
addr_2743_2: ; 
addr_2744: ;copy
    pop rax
    push rax
    push rax
addr_2745: ;argc
    mov rax, [args_ptr]
    mov rax, [rax]
    push rax
addr_2746: ;1
    mov qword rax, 1
    push rax
addr_2747: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_2748: ;<
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_2749: ;end
    pop rbx
    test rbx, rbx
    jnz addr_176
addr_2750: ;disc
    pop rax
addr_2751: ;(getoutput)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2752
    jmp addr_1251
addr_2752: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2753: ;255
    mov qword rax, 255
    push rax
addr_2754: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2755: ;0
    mov qword rax, 0
    push rax
addr_2756: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2757: ;if
    pop rbx
    test rbx, rbx
    jz addr_2759
addr_2758: ;[(getoutput) "output" (strcpy)]
addr_2758_0: ;(getoutput)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2759
    jmp addr_1251
addr_2758_1: ;"output"
    push str_485
addr_2758_2: ;(strcpy)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2759
    jmp addr_142
addr_2758_3: ; 
addr_2759: ;(getinput)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2760
    jmp addr_1259
addr_2760: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2761: ;255
    mov qword rax, 255
    push rax
addr_2762: ;&&
    pop rax
    pop rbx
    and rax, rbx
    push rax
addr_2763: ;0
    mov qword rax, 0
    push rax
addr_2764: ;==
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2765: ;if
    pop rbx
    test rbx, rbx
    jz addr_2767
addr_2766: ;[2 (help)]
addr_2766_0: ;2
    mov qword rax, 2
    push rax
addr_2766_1: ;(help)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2767
    jmp addr_2545
addr_2766_2: ; 
addr_2767: ;0
    mov qword rax, 0
    push rax
addr_2768: ;0
    mov qword rax, 0
    push rax
addr_2769: ;(getinput)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2770
    jmp addr_1259
addr_2770: ;0
    mov qword rax, 0
    push rax
addr_2771: ;100
    mov qword rax, 100
    push rax
addr_2772: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_2773: ;(open)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2774
    jmp addr_217
addr_2774: ;(getinputfd)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2775
    jmp addr_1263
addr_2775: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_2776: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_2777: ;disc
    pop rax
addr_2778: ;420
    mov qword rax, 420
    push rax
addr_2779: ;577
    mov qword rax, 577
    push rax
addr_2780: ;"temp.nasm"
    push str_486
addr_2781: ;0
    mov qword rax, 0
    push rax
addr_2782: ;100
    mov qword rax, 100
    push rax
addr_2783: ;-
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_2784: ;(open)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2785
    jmp addr_217
addr_2785: ;(getoutputfd)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2786
    jmp addr_1255
addr_2786: ;swap
    pop rax
    pop rbx
    push rax
    push rbx
addr_2787: ;put
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
addr_2788: ;disc
    pop rax
addr_2789: ;(parsefile)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2790
    jmp addr_2440
addr_2790: ;"DONE"
    push str_487
addr_2791: ;(println)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2792
    jmp addr_78
addr_2792: ;(getoutputfd)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2793
    jmp addr_1255
addr_2793: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2794: ;(close)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2795
    jmp addr_229
addr_2795: ;(getinputfd)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2796
    jmp addr_1263
addr_2796: ;read
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2797: ;(close)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2798
    jmp addr_229
addr_2798: ;(nasm)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2799
    jmp addr_2660
addr_2799: ;(ld)
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], addr_2800
    jmp addr_2693
addr_2800: ;ret
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp [rax]
addr_2801: ;end
addr_2802:
global _start
_start:
    mov qword [args_ptr], rsp
    mov qword [ret_stack_rsp], ret_stack
    mov rax, [ret_stack_rsp]
    mov qword [rax], quit
    jmp addr_2729
quit:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
str_0: db 66, 97, 100, 32, 97, 114, 103, 0
str_1: db 69, 114, 114, 111, 114, 32, 111, 112, 101, 110, 105, 110, 103, 32, 102, 105, 108, 101, 0
str_2: db 69, 114, 114, 111, 114, 32, 99, 108, 111, 115, 105, 110, 103, 32, 102, 105, 108, 101, 0
str_3: db 69, 114, 114, 111, 114, 32, 119, 114, 105, 116, 105, 110, 103, 32, 102, 105, 108, 101, 0
str_4: db 69, 114, 114, 111, 114, 32, 114, 101, 97, 100, 105, 110, 103, 32, 102, 105, 108, 101, 0
str_5: db 83, 116, 114, 105, 110, 103, 32, 105, 115, 32, 110, 111, 116, 32, 97, 32, 110, 117, 109, 98, 101, 114, 0
str_6: db 69, 82, 82, 79, 82, 58, 32, 99, 97, 110, 116, 32, 111, 112, 101, 110, 32, 47, 100, 101, 118, 47, 110, 117, 108, 108, 0
str_7: db 47, 100, 101, 118, 47, 110, 117, 108, 108, 0
str_8: db 91, 67, 77, 68, 93, 32, 0
str_9: db 32, 0
str_10: db 83, 84, 82, 73, 78, 71, 32, 84, 79, 79, 32, 76, 79, 78, 71, 32, 70, 79, 82, 32, 84, 65, 66, 76, 69, 0
str_11: db 58, 0
str_12: db 83, 84, 82, 73, 78, 71, 32, 84, 79, 79, 32, 76, 79, 78, 71, 32, 70, 79, 82, 32, 84, 65, 66, 76, 69, 0
str_13: db 84, 65, 66, 76, 69, 95, 79, 86, 69, 82, 70, 76, 79, 87, 0
str_14: db 100, 111, 0
str_15: db 101, 110, 100, 0
str_16: db 105, 110, 99, 0
str_17: db 110, 111, 112, 0
str_18: db 125, 0
str_19: db 45, 0
str_20: db 42, 0
str_21: db 47, 0
str_22: db 43, 0
str_23: db 115, 119, 97, 112, 0
str_24: db 100, 117, 109, 112, 0
str_25: db 99, 111, 112, 121, 0
str_26: db 99, 111, 118, 114, 0
str_27: db 118, 97, 114, 0
str_28: db 114, 101, 97, 100, 0
str_29: db 112, 117, 116, 99, 0
str_30: db 112, 117, 116, 0
str_31: db 100, 105, 115, 99, 0
str_32: db 97, 114, 103, 118, 0
str_33: db 97, 114, 103, 99, 0
str_34: db 101, 110, 118, 112, 0
str_35: db 40, 41, 0
str_36: db 99, 111, 110, 115, 116, 0
str_37: db 112, 114, 111, 99, 0
str_38: db 114, 101, 116, 0
str_39: db 113, 117, 105, 116, 0
str_40: db 105, 102, 0
str_41: db 99, 121, 99, 108, 0
str_42: db 33, 61, 0
str_43: db 61, 61, 0
str_44: db 60, 0
str_45: db 62, 0
str_46: db 38, 38, 0
str_47: db 115, 121, 115, 48, 0
str_48: db 115, 121, 115, 49, 0
str_49: db 115, 121, 115, 50, 0
str_50: db 115, 121, 115, 51, 0
str_51: db 115, 121, 115, 52, 0
str_52: db 115, 121, 115, 53, 0
str_53: db 115, 121, 115, 54, 0
str_54: db 98, 97, 100, 0
str_55: db 110, 111, 112, 0
str_56: db 112, 117, 115, 104, 0
str_57: db 115, 117, 98, 0
str_58: db 109, 117, 108, 0
str_59: db 112, 108, 117, 115, 0
str_60: db 115, 119, 97, 112, 0
str_61: db 100, 117, 109, 112, 0
str_62: db 99, 111, 112, 121, 0
str_63: db 99, 111, 118, 114, 0
str_64: db 103, 112, 116, 114, 0
str_65: db 114, 101, 97, 100, 0
str_66: db 112, 117, 116, 99, 0
str_67: db 112, 117, 116, 0
str_68: db 100, 105, 115, 99, 0
str_69: db 97, 114, 103, 118, 0
str_70: db 97, 114, 103, 99, 0
str_71: db 112, 117, 115, 104, 0
str_72: db 99, 97, 108, 108, 0
str_73: db 91, 93, 0
str_74: db 99, 111, 110, 115, 116, 0
str_75: db 99, 97, 108, 108, 0
str_76: db 112, 114, 111, 99, 0
str_77: db 114, 101, 116, 0
str_78: db 113, 117, 105, 116, 0
str_79: db 108, 111, 99, 97, 116, 105, 111, 110, 0
str_80: db 106, 117, 109, 112, 0
str_81: db 106, 117, 109, 112, 0
str_82: db 105, 102, 0
str_83: db 106, 110, 122, 0
str_84: db 103, 101, 116, 112, 0
str_85: db 99, 121, 99, 108, 0
str_86: db 33, 61, 0
str_87: db 61, 61, 0
str_88: db 60, 0
str_89: db 62, 0
str_90: db 38, 38, 0
str_91: db 115, 121, 115, 48, 0
str_92: db 115, 121, 115, 49, 0
str_93: db 115, 121, 115, 50, 0
str_94: db 115, 121, 115, 51, 0
str_95: db 115, 121, 115, 52, 0
str_96: db 115, 121, 115, 53, 0
str_97: db 115, 121, 115, 54, 0
str_98: db 115, 116, 97, 99, 107, 32, 117, 110, 100, 101, 114, 102, 108, 111, 119, 0
str_99: db 112, 114, 111, 99, 32, 110, 111, 116, 32, 102, 111, 117, 110, 100, 58, 32, 0
str_100: db 92, 110, 0
str_101: db 32, 0
str_102: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 97, 120, 44, 32, 109, 101, 109, 92, 110, 0
str_103: db 32, 32, 32, 32, 97, 100, 100, 32, 114, 97, 120, 44, 32, 0
str_104: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_105: db 66, 73, 84, 83, 32, 54, 52, 92, 110, 0
str_106: db 115, 101, 103, 109, 101, 110, 116, 32, 46, 116, 101, 120, 116, 92, 110, 0
str_107: db 112, 114, 105, 110, 116, 58, 92, 110, 0
str_108: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 49, 48, 44, 32, 114, 115, 112, 92, 110, 0
str_109: db 32, 32, 32, 32, 115, 117, 98, 32, 114, 115, 112, 44, 32, 56, 92, 110, 0
str_110: db 32, 32, 32, 32, 109, 111, 118, 32, 91, 114, 115, 112, 93, 44, 32, 97, 108, 92, 110, 0
str_111: db 32, 32, 32, 32, 109, 111, 118, 32, 101, 100, 105, 44, 32, 49, 92, 110, 0
str_112: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 115, 105, 44, 32, 114, 115, 112, 92, 110, 0
str_113: db 32, 32, 32, 32, 109, 111, 118, 32, 101, 100, 120, 44, 32, 49, 92, 110, 0
str_114: db 32, 32, 32, 32, 109, 111, 118, 32, 101, 97, 120, 44, 32, 49, 92, 110, 0
str_115: db 32, 32, 32, 32, 115, 121, 115, 99, 97, 108, 108, 92, 110, 0
str_116: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 115, 112, 44, 32, 114, 49, 48, 92, 110, 0
str_117: db 32, 32, 32, 32, 114, 101, 116, 92, 110, 0
str_118: db 97, 100, 100, 114, 95, 0
str_119: db 58, 92, 110, 0
str_120: db 103, 108, 111, 98, 97, 108, 32, 95, 115, 116, 97, 114, 116, 92, 110, 0
str_121: db 95, 115, 116, 97, 114, 116, 58, 92, 110, 0
str_122: db 32, 32, 32, 32, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 97, 114, 103, 115, 95, 112, 116, 114, 93, 44, 32, 114, 115, 112, 92, 110, 0
str_123: db 32, 32, 32, 32, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 114, 101, 116, 95, 115, 116, 97, 99, 107, 95, 114, 115, 112, 93, 44, 32, 114, 101, 116, 95, 115, 116, 97, 99, 107, 92, 110, 0
str_124: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 97, 120, 44, 32, 91, 114, 101, 116, 95, 115, 116, 97, 99, 107, 95, 114, 115, 112, 93, 92, 110, 0
str_125: db 32, 32, 32, 32, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 114, 97, 120, 93, 44, 32, 113, 117, 105, 116, 92, 110, 0
str_126: db 32, 32, 32, 32, 106, 109, 112, 32, 97, 100, 100, 114, 95, 0
str_127: db 109, 97, 105, 110, 0
str_128: db 110, 111, 32, 109, 97, 105, 110, 32, 112, 114, 111, 99, 32, 100, 101, 102, 105, 110, 101, 100, 0
str_129: db 109, 97, 105, 110, 0
str_130: db 113, 117, 105, 116, 58, 92, 110, 0
str_131: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 97, 120, 44, 32, 54, 48, 92, 110, 0
str_132: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 100, 105, 44, 32, 48, 92, 110, 0
str_133: db 32, 32, 32, 32, 115, 121, 115, 99, 97, 108, 108, 92, 110, 0
str_134: db 115, 101, 103, 109, 101, 110, 116, 32, 46, 100, 97, 116, 97, 92, 110, 0
str_135: db 115, 101, 103, 109, 101, 110, 116, 32, 46, 98, 115, 115, 92, 110, 0
str_136: db 97, 114, 103, 115, 95, 112, 116, 114, 58, 32, 114, 101, 115, 113, 32, 49, 92, 110, 0
str_137: db 114, 101, 116, 95, 115, 116, 97, 99, 107, 95, 114, 115, 112, 58, 32, 114, 101, 115, 113, 32, 49, 92, 110, 0
str_138: db 114, 101, 116, 95, 115, 116, 97, 99, 107, 58, 32, 114, 101, 115, 98, 32, 50, 53, 53, 54, 53, 92, 110, 0
str_139: db 114, 101, 116, 95, 115, 116, 97, 99, 107, 95, 101, 110, 100, 58, 32, 114, 101, 115, 98, 32, 50, 53, 53, 54, 53, 92, 110, 0
str_140: db 109, 101, 109, 58, 32, 114, 101, 115, 98, 32, 0
str_141: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_142: db 32, 32, 32, 32, 116, 101, 115, 116, 32, 114, 98, 120, 44, 32, 114, 98, 120, 92, 110, 0
str_143: db 32, 32, 32, 32, 106, 110, 122, 32, 97, 100, 100, 114, 95, 0
str_144: db 97, 100, 100, 114, 95, 0
str_145: db 58, 32, 59, 0
str_146: db 97, 100, 100, 114, 95, 0
str_147: db 95, 0
str_148: db 58, 32, 59, 0
str_149: db 66, 65, 68, 32, 79, 80, 69, 82, 65, 84, 73, 79, 78, 58, 32, 0
str_150: db 96, 0
str_151: db 96, 0
str_152: db 99, 104, 117, 110, 107, 0
str_153: db 98, 108, 111, 99, 107, 0
str_154: db 32, 32, 32, 32, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 114, 97, 120, 44, 32, 0
str_155: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_156: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_157: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_158: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_159: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_160: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_161: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_162: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 98, 120, 92, 110, 0
str_163: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_164: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_165: db 32, 32, 32, 32, 115, 117, 98, 32, 114, 97, 120, 44, 32, 114, 98, 120, 92, 110, 0
str_166: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_167: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_168: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_169: db 32, 32, 32, 32, 97, 100, 100, 32, 114, 97, 120, 44, 32, 114, 98, 120, 92, 110, 0
str_170: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_171: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_172: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_173: db 32, 32, 32, 32, 97, 110, 100, 32, 114, 97, 120, 44, 32, 114, 98, 120, 92, 110, 0
str_174: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_175: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_176: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_177: db 32, 32, 32, 32, 105, 109, 117, 108, 32, 114, 97, 120, 44, 32, 114, 98, 120, 92, 110, 0
str_178: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_179: db 32, 32, 32, 32, 120, 111, 114, 32, 114, 100, 120, 44, 32, 114, 100, 120, 92, 110, 0
str_180: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_181: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_182: db 32, 32, 32, 32, 105, 100, 105, 118, 32, 114, 98, 120, 92, 110, 0
str_183: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_184: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 100, 120, 92, 110, 0
str_185: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_186: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_187: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 98, 120, 92, 110, 0
str_188: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_189: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 98, 120, 92, 110, 0
str_190: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 97, 120, 44, 32, 91, 97, 114, 103, 115, 95, 112, 116, 114, 93, 92, 110, 0
str_191: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 97, 120, 44, 32, 91, 114, 97, 120, 93, 92, 110, 0
str_192: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_193: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 97, 120, 44, 32, 91, 97, 114, 103, 115, 95, 112, 116, 114, 93, 92, 110, 0
str_194: db 32, 32, 32, 32, 97, 100, 100, 32, 114, 97, 120, 44, 32, 56, 92, 110, 0
str_195: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_196: db 32, 32, 32, 32, 106, 109, 112, 32, 113, 117, 105, 116, 92, 110, 0
str_197: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 97, 120, 44, 32, 91, 114, 101, 116, 95, 115, 116, 97, 99, 107, 95, 114, 115, 112, 93, 92, 110, 0
str_198: db 32, 32, 32, 32, 115, 117, 98, 32, 114, 97, 120, 44, 32, 56, 92, 110, 0
str_199: db 32, 32, 32, 32, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 114, 101, 116, 95, 115, 116, 97, 99, 107, 95, 114, 115, 112, 93, 44, 32, 114, 97, 120, 92, 110, 0
str_200: db 32, 32, 32, 32, 97, 100, 100, 32, 114, 97, 120, 44, 32, 56, 92, 110, 0
str_201: db 32, 32, 32, 32, 106, 109, 112, 32, 91, 114, 97, 120, 93, 92, 110, 0
str_202: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_203: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_204: db 32, 32, 32, 32, 120, 111, 114, 32, 114, 98, 120, 44, 32, 114, 98, 120, 92, 110, 0
str_205: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 98, 120, 44, 32, 91, 114, 97, 120, 93, 92, 110, 0
str_206: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 98, 120, 92, 110, 0
str_207: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_208: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_209: db 32, 32, 32, 32, 109, 111, 118, 32, 98, 121, 116, 101, 32, 91, 114, 97, 120, 93, 44, 32, 98, 108, 92, 110, 0
str_210: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_211: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_212: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_213: db 32, 32, 32, 32, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 114, 97, 120, 93, 44, 32, 114, 98, 120, 92, 110, 0
str_214: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_215: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 99, 120, 44, 32, 48, 92, 110, 0
str_216: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 100, 120, 44, 32, 49, 92, 110, 0
str_217: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_218: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_219: db 32, 32, 32, 32, 99, 109, 112, 32, 114, 97, 120, 44, 32, 114, 98, 120, 92, 110, 0
str_220: db 32, 32, 32, 32, 99, 109, 111, 118, 110, 101, 32, 114, 99, 120, 44, 32, 114, 100, 120, 92, 110, 0
str_221: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 99, 120, 92, 110, 0
str_222: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 99, 120, 44, 32, 48, 92, 110, 0
str_223: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 100, 120, 44, 32, 49, 92, 110, 0
str_224: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_225: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_226: db 32, 32, 32, 32, 99, 109, 112, 32, 114, 97, 120, 44, 32, 114, 98, 120, 92, 110, 0
str_227: db 32, 32, 32, 32, 99, 109, 111, 118, 101, 32, 114, 99, 120, 44, 32, 114, 100, 120, 92, 110, 0
str_228: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 99, 120, 92, 110, 0
str_229: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 99, 120, 44, 32, 48, 92, 110, 0
str_230: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 100, 120, 44, 32, 49, 92, 110, 0
str_231: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_232: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_233: db 32, 32, 32, 32, 99, 109, 112, 32, 114, 97, 120, 44, 32, 114, 98, 120, 92, 110, 0
str_234: db 32, 32, 32, 32, 99, 109, 111, 118, 103, 32, 114, 99, 120, 44, 32, 114, 100, 120, 92, 110, 0
str_235: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 99, 120, 92, 110, 0
str_236: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 99, 120, 44, 32, 48, 92, 110, 0
str_237: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 100, 120, 44, 32, 49, 92, 110, 0
str_238: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_239: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_240: db 32, 32, 32, 32, 99, 109, 112, 32, 114, 97, 120, 44, 32, 114, 98, 120, 92, 110, 0
str_241: db 32, 32, 32, 32, 99, 109, 111, 118, 108, 32, 114, 99, 120, 44, 32, 114, 100, 120, 92, 110, 0
str_242: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 99, 120, 92, 110, 0
str_243: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_244: db 32, 32, 32, 32, 116, 101, 115, 116, 32, 114, 98, 120, 44, 32, 114, 98, 120, 92, 110, 0
str_245: db 32, 32, 32, 32, 106, 122, 32, 97, 100, 100, 114, 95, 0
str_246: db 95, 0
str_247: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_248: db 32, 32, 32, 32, 115, 121, 115, 99, 97, 108, 108, 92, 110, 0
str_249: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_250: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_251: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 105, 92, 110, 0
str_252: db 32, 32, 32, 32, 115, 121, 115, 99, 97, 108, 108, 92, 110, 0
str_253: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_254: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_255: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 105, 92, 110, 0
str_256: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 115, 105, 92, 110, 0
str_257: db 32, 32, 32, 32, 115, 121, 115, 99, 97, 108, 108, 92, 110, 0
str_258: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_259: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_260: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 105, 92, 110, 0
str_261: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 115, 105, 92, 110, 0
str_262: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 120, 92, 110, 0
str_263: db 32, 32, 32, 32, 115, 121, 115, 99, 97, 108, 108, 92, 110, 0
str_264: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_265: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_266: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 105, 92, 110, 0
str_267: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 115, 105, 92, 110, 0
str_268: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 120, 92, 110, 0
str_269: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 49, 48, 92, 110, 0
str_270: db 32, 32, 32, 32, 115, 121, 115, 99, 97, 108, 108, 92, 110, 0
str_271: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_272: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_273: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 105, 92, 110, 0
str_274: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 115, 105, 92, 110, 0
str_275: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 120, 92, 110, 0
str_276: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 49, 48, 92, 110, 0
str_277: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 56, 92, 110, 0
str_278: db 32, 32, 32, 32, 115, 121, 115, 99, 97, 108, 108, 92, 110, 0
str_279: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_280: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_281: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 105, 92, 110, 0
str_282: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 115, 105, 92, 110, 0
str_283: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 120, 92, 110, 0
str_284: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 49, 48, 92, 110, 0
str_285: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 56, 92, 110, 0
str_286: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 57, 92, 110, 0
str_287: db 32, 32, 32, 32, 115, 121, 115, 99, 97, 108, 108, 92, 110, 0
str_288: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_289: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_290: db 32, 32, 32, 32, 99, 97, 108, 108, 32, 112, 114, 105, 110, 116, 92, 110, 0
str_291: db 59, 32, 117, 110, 105, 109, 112, 32, 0
str_292: db 32, 0
str_293: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 115, 116, 114, 95, 0
str_294: db 115, 116, 114, 95, 0
str_295: db 58, 32, 100, 98, 32, 0
str_296: db 44, 32, 0
str_297: db 92, 110, 0
str_298: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 97, 120, 44, 32, 91, 114, 101, 116, 95, 115, 116, 97, 99, 107, 95, 114, 115, 112, 93, 92, 110, 0
str_299: db 32, 32, 32, 32, 97, 100, 100, 32, 114, 97, 120, 44, 32, 56, 92, 110, 0
str_300: db 32, 32, 32, 32, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 114, 101, 116, 95, 115, 116, 97, 99, 107, 95, 114, 115, 112, 93, 44, 32, 114, 97, 120, 92, 110, 0
str_301: db 32, 32, 32, 32, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 114, 97, 120, 93, 44, 32, 97, 100, 100, 114, 95, 0
str_302: db 32, 32, 32, 32, 106, 109, 112, 32, 97, 100, 100, 114, 95, 0
str_303: db 66, 65, 68, 32, 79, 80, 69, 82, 65, 84, 73, 79, 78, 58, 32, 0
str_304: db 96, 0
str_305: db 96, 0
str_306: db 99, 104, 117, 110, 107, 0
str_307: db 32, 32, 32, 32, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 114, 97, 120, 44, 32, 0
str_308: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_309: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_310: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_311: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_312: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_313: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_314: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_315: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 98, 120, 92, 110, 0
str_316: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_317: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_318: db 32, 32, 32, 32, 115, 117, 98, 32, 114, 97, 120, 44, 32, 114, 98, 120, 92, 110, 0
str_319: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_320: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_321: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_322: db 32, 32, 32, 32, 97, 100, 100, 32, 114, 97, 120, 44, 32, 114, 98, 120, 92, 110, 0
str_323: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_324: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_325: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_326: db 32, 32, 32, 32, 97, 110, 100, 32, 114, 97, 120, 44, 32, 114, 98, 120, 92, 110, 0
str_327: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_328: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_329: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_330: db 32, 32, 32, 32, 105, 109, 117, 108, 32, 114, 97, 120, 44, 32, 114, 98, 120, 92, 110, 0
str_331: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_332: db 32, 32, 32, 32, 120, 111, 114, 32, 114, 100, 120, 44, 32, 114, 100, 120, 92, 110, 0
str_333: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_334: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_335: db 32, 32, 32, 32, 105, 100, 105, 118, 32, 114, 98, 120, 92, 110, 0
str_336: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_337: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 100, 120, 92, 110, 0
str_338: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_339: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_340: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 98, 120, 92, 110, 0
str_341: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_342: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 98, 120, 92, 110, 0
str_343: db 32, 32, 32, 32, 59, 32, 45, 32, 112, 114, 111, 99, 0
str_344: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 97, 120, 44, 32, 91, 97, 114, 103, 115, 95, 112, 116, 114, 93, 92, 110, 0
str_345: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 97, 120, 44, 32, 91, 114, 97, 120, 93, 92, 110, 0
str_346: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_347: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 97, 120, 44, 32, 91, 97, 114, 103, 115, 95, 112, 116, 114, 93, 92, 110, 0
str_348: db 32, 32, 32, 32, 97, 100, 100, 32, 114, 97, 120, 44, 32, 56, 92, 110, 0
str_349: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_350: db 32, 32, 32, 32, 106, 109, 112, 32, 113, 117, 105, 116, 92, 110, 0
str_351: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 97, 120, 44, 32, 91, 114, 101, 116, 95, 115, 116, 97, 99, 107, 95, 114, 115, 112, 93, 92, 110, 0
str_352: db 32, 32, 32, 32, 115, 117, 98, 32, 114, 97, 120, 44, 32, 56, 92, 110, 0
str_353: db 32, 32, 32, 32, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 114, 101, 116, 95, 115, 116, 97, 99, 107, 95, 114, 115, 112, 93, 44, 32, 114, 97, 120, 92, 110, 0
str_354: db 32, 32, 32, 32, 97, 100, 100, 32, 114, 97, 120, 44, 32, 56, 92, 110, 0
str_355: db 32, 32, 32, 32, 106, 109, 112, 32, 91, 114, 97, 120, 93, 92, 110, 0
str_356: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_357: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_358: db 32, 32, 32, 32, 120, 111, 114, 32, 114, 98, 120, 44, 32, 114, 98, 120, 92, 110, 0
str_359: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 98, 120, 44, 32, 91, 114, 97, 120, 93, 92, 110, 0
str_360: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 98, 120, 92, 110, 0
str_361: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_362: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_363: db 32, 32, 32, 32, 109, 111, 118, 32, 98, 121, 116, 101, 32, 91, 114, 97, 120, 93, 44, 32, 98, 108, 92, 110, 0
str_364: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_365: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_366: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_367: db 32, 32, 32, 32, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 114, 97, 120, 93, 44, 32, 114, 98, 120, 92, 110, 0
str_368: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_369: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 99, 120, 44, 32, 48, 92, 110, 0
str_370: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 100, 120, 44, 32, 49, 92, 110, 0
str_371: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_372: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_373: db 32, 32, 32, 32, 99, 109, 112, 32, 114, 97, 120, 44, 32, 114, 98, 120, 92, 110, 0
str_374: db 32, 32, 32, 32, 99, 109, 111, 118, 110, 101, 32, 114, 99, 120, 44, 32, 114, 100, 120, 92, 110, 0
str_375: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 99, 120, 92, 110, 0
str_376: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 99, 120, 44, 32, 48, 92, 110, 0
str_377: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 100, 120, 44, 32, 49, 92, 110, 0
str_378: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_379: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_380: db 32, 32, 32, 32, 99, 109, 112, 32, 114, 97, 120, 44, 32, 114, 98, 120, 92, 110, 0
str_381: db 32, 32, 32, 32, 99, 109, 111, 118, 101, 32, 114, 99, 120, 44, 32, 114, 100, 120, 92, 110, 0
str_382: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 99, 120, 92, 110, 0
str_383: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 99, 120, 44, 32, 48, 92, 110, 0
str_384: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 100, 120, 44, 32, 49, 92, 110, 0
str_385: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_386: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_387: db 32, 32, 32, 32, 99, 109, 112, 32, 114, 97, 120, 44, 32, 114, 98, 120, 92, 110, 0
str_388: db 32, 32, 32, 32, 99, 109, 111, 118, 103, 32, 114, 99, 120, 44, 32, 114, 100, 120, 92, 110, 0
str_389: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 99, 120, 92, 110, 0
str_390: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 99, 120, 44, 32, 48, 92, 110, 0
str_391: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 100, 120, 44, 32, 49, 92, 110, 0
str_392: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_393: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_394: db 32, 32, 32, 32, 99, 109, 112, 32, 114, 97, 120, 44, 32, 114, 98, 120, 92, 110, 0
str_395: db 32, 32, 32, 32, 99, 109, 111, 118, 108, 32, 114, 99, 120, 44, 32, 114, 100, 120, 92, 110, 0
str_396: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 99, 120, 92, 110, 0
str_397: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 92, 110, 0
str_398: db 32, 32, 32, 32, 116, 101, 115, 116, 32, 114, 98, 120, 44, 32, 114, 98, 120, 92, 110, 0
str_399: db 32, 32, 32, 32, 106, 122, 32, 97, 100, 100, 114, 95, 0
str_400: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_401: db 32, 32, 32, 32, 115, 121, 115, 99, 97, 108, 108, 92, 110, 0
str_402: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_403: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_404: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 105, 92, 110, 0
str_405: db 32, 32, 32, 32, 115, 121, 115, 99, 97, 108, 108, 92, 110, 0
str_406: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_407: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_408: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 105, 92, 110, 0
str_409: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 115, 105, 92, 110, 0
str_410: db 32, 32, 32, 32, 115, 121, 115, 99, 97, 108, 108, 92, 110, 0
str_411: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_412: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_413: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 105, 92, 110, 0
str_414: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 115, 105, 92, 110, 0
str_415: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 120, 92, 110, 0
str_416: db 32, 32, 32, 32, 115, 121, 115, 99, 97, 108, 108, 92, 110, 0
str_417: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_418: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_419: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 105, 92, 110, 0
str_420: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 115, 105, 92, 110, 0
str_421: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 120, 92, 110, 0
str_422: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 49, 48, 92, 110, 0
str_423: db 32, 32, 32, 32, 115, 121, 115, 99, 97, 108, 108, 92, 110, 0
str_424: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_425: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_426: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 105, 92, 110, 0
str_427: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 115, 105, 92, 110, 0
str_428: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 120, 92, 110, 0
str_429: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 49, 48, 92, 110, 0
str_430: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 56, 92, 110, 0
str_431: db 32, 32, 32, 32, 115, 121, 115, 99, 97, 108, 108, 92, 110, 0
str_432: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_433: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_434: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 105, 92, 110, 0
str_435: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 115, 105, 92, 110, 0
str_436: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 120, 92, 110, 0
str_437: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 49, 48, 92, 110, 0
str_438: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 56, 92, 110, 0
str_439: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 57, 92, 110, 0
str_440: db 32, 32, 32, 32, 115, 121, 115, 99, 97, 108, 108, 92, 110, 0
str_441: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 92, 110, 0
str_442: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 92, 110, 0
str_443: db 32, 32, 32, 32, 99, 97, 108, 108, 32, 112, 114, 105, 110, 116, 92, 110, 0
str_444: db 59, 32, 117, 110, 105, 109, 112, 32, 0
str_445: db 32, 0
str_446: db 34, 0
str_447: db 34, 0
str_448: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 115, 116, 114, 95, 0
str_449: db 115, 116, 114, 95, 0
str_450: db 58, 32, 100, 98, 32, 0
str_451: db 44, 32, 0
str_452: db 92, 110, 0
str_453: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 97, 120, 44, 32, 91, 114, 101, 116, 95, 115, 116, 97, 99, 107, 95, 114, 115, 112, 93, 92, 110, 0
str_454: db 32, 32, 32, 32, 97, 100, 100, 32, 114, 97, 120, 44, 32, 56, 92, 110, 0
str_455: db 32, 32, 32, 32, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 114, 101, 116, 95, 115, 116, 97, 99, 107, 95, 114, 115, 112, 93, 44, 32, 114, 97, 120, 92, 110, 0
str_456: db 32, 32, 32, 32, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 114, 97, 120, 93, 44, 32, 97, 100, 100, 114, 95, 0
str_457: db 32, 32, 32, 32, 106, 109, 112, 32, 97, 100, 100, 114, 95, 0
str_458: db 73, 78, 86, 65, 76, 73, 68, 32, 72, 69, 76, 80, 32, 73, 68, 0
str_459: db 72, 101, 108, 112, 0
str_460: db 69, 82, 82, 79, 82, 58, 32, 89, 111, 117, 32, 109, 117, 115, 116, 32, 99, 111, 109, 112, 105, 108, 101, 32, 101, 120, 97, 99, 116, 108, 121, 32, 49, 32, 102, 105, 108, 101, 0
str_461: db 69, 82, 82, 79, 82, 58, 32, 76, 97, 115, 116, 32, 97, 114, 103, 117, 109, 101, 110, 116, 32, 115, 117, 112, 112, 108, 105, 101, 100, 32, 114, 101, 113, 117, 105, 114, 101, 115, 32, 97, 32, 112, 97, 114, 97, 109, 101, 116, 101, 114, 0
str_462: db 115, 108, 105, 109, 32, 99, 111, 109, 112, 105, 108, 101, 114, 32, 117, 115, 97, 103, 101, 58, 0
str_463: db 115, 108, 105, 109, 32, 91, 45, 104, 93, 92, 32, 91, 45, 115, 93, 92, 32, 91, 45, 111, 32, 111, 117, 116, 112, 117, 116, 93, 92, 32, 102, 105, 108, 101, 0
str_464: db 45, 104, 44, 32, 45, 45, 104, 101, 108, 112, 92, 116, 92, 116, 115, 104, 111, 119, 115, 32, 116, 104, 105, 115, 32, 104, 101, 108, 112, 32, 109, 101, 115, 115, 97, 103, 101, 46, 0
str_465: db 45, 115, 44, 32, 45, 45, 115, 105, 108, 101, 110, 116, 92, 116, 100, 105, 115, 97, 98, 108, 101, 115, 32, 111, 117, 116, 112, 117, 116, 32, 116, 101, 120, 116, 46, 0
str_466: db 45, 111, 44, 32, 45, 45, 111, 117, 116, 112, 117, 116, 92, 116, 115, 101, 108, 101, 99, 116, 115, 32, 116, 104, 101, 32, 111, 117, 116, 112, 117, 116, 32, 102, 105, 108, 101, 46, 0
str_467: db 45, 104, 0
str_468: db 45, 45, 104, 101, 108, 112, 0
str_469: db 45, 111, 0
str_470: db 45, 45, 111, 117, 116, 112, 117, 116, 0
str_471: db 45, 115, 0
str_472: db 45, 45, 115, 105, 108, 101, 110, 116, 0
str_473: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 110, 97, 115, 109, 0
str_474: db 45, 102, 0
str_475: db 101, 108, 102, 54, 52, 0
str_476: db 45, 111, 0
str_477: db 116, 101, 109, 112, 46, 111, 0
str_478: db 116, 101, 109, 112, 46, 110, 97, 115, 109, 0
str_479: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 108, 100, 0
str_480: db 45, 100, 121, 110, 97, 109, 105, 99, 45, 108, 105, 110, 107, 101, 114, 0
str_481: db 47, 108, 105, 98, 54, 52, 47, 108, 100, 45, 108, 105, 110, 117, 120, 45, 120, 56, 54, 45, 54, 52, 46, 115, 111, 46, 50, 0
str_482: db 45, 111, 0
str_483: db 45, 108, 99, 0
str_484: db 116, 101, 109, 112, 46, 111, 0
str_485: db 111, 117, 116, 112, 117, 116, 0
str_486: db 116, 101, 109, 112, 46, 110, 97, 115, 109, 0
str_487: db 68, 79, 78, 69, 0
segment .bss
args_ptr: resq 1
ret_stack_rsp: resq 1
ret_stack: resb 25565
ret_stack_end: resb 25565
mem: resb 703664
