#!/usr/bin/env python3
import argparse
import shlex
import subprocess

iota_counter=0
def iota(reset=False):
    global iota_counter
    if reset:
        iota_counter = 0
    result = iota_counter
    iota_counter += 1
    return result

OP_NOP  = iota()
OP_PUSH = iota()
OP_SUB  = iota()
OP_MUL  = iota()
OP_DIV  = iota()
OP_PLUS = iota()
OP_SWAP = iota()
OP_DUMP = iota()
OP_COPY = iota()
OP_COVR = iota()
OP_GPTR = iota()
OP_READ = iota()
OP_READC = iota()
OP_PUTC = iota()
OP_PUT = iota()
OP_DISC = iota()
OP_ARGV = iota()
OP_ARGC = iota()
OP_ENVP = iota()

OP_PUSHP = iota()
OP_CALLS = iota()
OP_MULTI = iota()

OP_CONST= iota()
OP_CALL = iota()
OP_PROC = iota()
OP_RET  = iota()
OP_QUIT = iota()

OP_LOCX = iota()
OP_JUMPX= iota()
OP_JUMP = iota()
OP_IF   = iota()
OP_JNZ  = iota()
OP_GETP = iota()
OP_CYCL = iota()


OP_NQ   = iota()
OP_EQ   = iota()
OP_LT   = iota()
OP_GT   = iota()
OP_AND  = iota()
OP_OR  = iota()
OP_NOT  = iota()

OP_SYS0 = iota()
OP_SYS1 = iota()
OP_SYS2 = iota()
OP_SYS3 = iota()
OP_SYS4 = iota()
OP_SYS5 = iota()
OP_SYS6 = iota()

COUNT_OPS = iota()

def simulate_program(program):
    stack = []
    memory = []
    procs = {}
    pcntr = -1
    for p in range(len(program)):
        op = program[p]
        if op[0] == OP_PROC and op[1] == "main":
            pcntr = p
    assert pcntr != -1, "Program has no main"
    while len(program) > pcntr:
        op = program[pcntr]
        pcntr += 1
        try:
            if op[0] == OP_NOP:
                pass
            elif op[0] == OP_PUSH:
                stack.append(op[1])
            elif op[0] == OP_PROC:
                procs[op[1]] = pcntr
            elif op[0] == OP_RET:
                a = stack.pop()
                pcntr = a
            elif op[0] == OP_PLUS:
                a = stack.pop()
                b = stack.pop()
                stack.append(a + b)
            elif op[0] == OP_MUL:
                a = stack.pop()
                b = stack.pop()
                stack.append(a * b)
            elif op[0] == OP_DUMP:
                a = stack.pop()
                print(chr(a), a)
            elif op[0] == OP_SWAP:
                a = stack.pop()
                b = stack.pop()
                stack.append(a)
                stack.append(b)
            elif op[0] == OP_COVR:
                a = stack.pop()
                b = stack.pop()
                stack.append(b)
                stack.append(a)
                stack.append(b)
            elif op[0] == OP_GPTR:
                size = stack.pop()
                a = len(memory)
                memory.extend([0] * size)
                stack.append(a)
            elif op[0] == OP_COPY:
                a = stack.pop()
                stack.append(a)
                stack.append(a)
            elif op[0] == OP_READ:
                location = stack.pop()
                a = memory[location]
                stack.append(a)
            elif op[0] == OP_READC:
                location = stack.pop()
                a = memory[location]
                stack.append(a)
            elif op[0] == OP_PUTC:
                data = stack.pop()
                location = stack.pop()
                memory[location] = data
                stack.append(location)
            elif op[0] == OP_DISC:
                stack.pop()
            elif op[0] == OP_GETP:
                stack.append(pcntr)
            elif op[0] == OP_CALL:
                stack.push(pcntr + 1)
                pcntr = procs[op[1]]
            elif op[0] == OP_JNZ:
                b = stack.pop()
                a = stack.pop()
                stack.append(a)
                if b != 0:
                    pcntr = a
            elif op[0] == OP_JUMP:
                a = stack.pop()
                pcntr = a
                stack.append(a)
            elif op[0] == OP_CONST:
                a = len(memory)
                for entry in op[1]:
                    if type(entry) is str:
                        memory.append(ord(entry))
                    elif type(entry) is int:
                        memory.append(entry)
                memory.append(0)
                stack.append(a)
            else:
                assert False, "not implemented"
        except Exception as e:
            print(e)
            print(pcntr)
            print(stack)
            print(memory)
            quit()
    print("done")
    print(stack)
    print(memory)

def compile_inst(out, op, ip, start):
    global procs
    global strs
    global locs
    global memsize
    out.write(start + "_%d: ; %s\n" % (ip, str(op)))            
    if op[0] == OP_NOP:
        pass
    elif op[0] == OP_NOT:
        out.write("    pop rax\n")
        out.write("    xor rax, 0x1\n")
        out.write("    push rax\n")
    elif op[0] == OP_PUSH:
        out.write("    mov qword rax, %d\n" % op[1])
        out.write("    push rax\n")
    elif op[0] == OP_SUB:
        out.write("    pop rbx\n")
        out.write("    pop rax\n")
        out.write("    sub rax, rbx\n")
        out.write("    push rax\n")
    elif op[0] == OP_AND:
        out.write("    pop rbx\n")
        out.write("    pop rax\n")
        out.write("    and rax, rbx\n")
        out.write("    push rax\n")
    elif op[0] == OP_OR:
        out.write("    pop rbx\n")
        out.write("    pop rax\n")
        out.write("    or rax, rbx\n")
        out.write("    push rax\n")
    elif op[0] == OP_PLUS:
        out.write("    pop rax\n")
        out.write("    pop rbx\n")
        out.write("    add rax, rbx\n")
        out.write("    push rax\n")
    elif op[0] == OP_MUL:
        out.write("    pop rax\n")
        out.write("    pop rbx\n")
        out.write("    imul rax, rbx\n")
        out.write("    push rax\n")
    elif op[0] == OP_DIV:
        out.write("    xor rdx, rdx\n");
        out.write("    pop rbx\n")
        out.write("    pop rax\n")
        out.write("    idiv rbx\n")
        out.write("    push rax\n")
        out.write("    push rdx\n")
    elif op[0] == OP_NQ:
        out.write("    mov rcx, 0\n")
        out.write("    mov rdx, 1\n")
        out.write("    pop rbx\n")
        out.write("    pop rax\n")
        out.write("    cmp rax, rbx\n")
        out.write("    cmovne rcx, rdx\n")
        out.write("    push rcx\n")
    elif op[0] == OP_EQ:
        out.write("    mov rcx, 0\n");
        out.write("    mov rdx, 1\n");
        out.write("    pop rax\n");
        out.write("    pop rbx\n");
        out.write("    cmp rax, rbx\n");
        out.write("    cmove rcx, rdx\n");
        out.write("    push rcx\n")
    elif op[0] == OP_GT:
        out.write("    mov rcx, 0\n");
        out.write("    mov rdx, 1\n");
        out.write("    pop rbx\n");
        out.write("    pop rax\n");
        out.write("    cmp rax, rbx\n");
        out.write("    cmovg rcx, rdx\n");
        out.write("    push rcx\n")
    elif op[0] == OP_LT:
        out.write("    mov rcx, 0\n");
        out.write("    mov rdx, 1\n");
        out.write("    pop rbx\n");
        out.write("    pop rax\n");
        out.write("    cmp rax, rbx\n");
        out.write("    cmovl rcx, rdx\n");
        out.write("    push rcx\n")
    elif op[0] == OP_CYCL:
        out.write("    pop rax\n")
        out.write("    pop rbx\n")
        out.write("    pop rcx\n")
        out.write("    push rbx\n")
        out.write("    push rax\n")
        out.write("    push rcx\n")
    elif op[0] == OP_DUMP:
        out.write("    pop rax\n")
        out.write("    call print\n")
    elif op[0] == OP_COPY:
        out.write("    pop rax\n")
        out.write("    push rax\n")
        out.write("    push rax\n")
    elif op[0] == OP_GPTR:
        out.write("    mov rax, mem\n")
        out.write("    add rax, %d\n" % memsize)
        out.write("    push rax\n")
        memsize += op[1]
    elif op[0] == OP_PUT:
        out.write("    pop rbx\n")
        out.write("    pop rax\n")
        out.write("    mov qword [rax], rbx\n")
        out.write("    push rax\n")
    elif op[0] == OP_PUTC:
        out.write("    pop rbx\n")
        out.write("    pop rax\n")
        out.write("    mov byte [rax], bl\n")
        out.write("    push rax\n")
    elif op[0] == OP_READC:
        out.write("    pop rax\n")
        out.write("    xor rbx, rbx\n")
        out.write("    mov bl, [rax]\n")
        out.write("    push rbx\n")
    elif op[0] == OP_READ:
        out.write("    pop rax\n")
        out.write("    mov rbx, [rax]\n")
        out.write("    push rbx\n")
    elif op[0] == OP_DISC:
        out.write("    pop rax\n")
    elif op[0] == OP_GETP:
        out.write("    mov mem, %s_%d\n" % (start, ip + 1))
        out.write("    push rax\n")
    elif op[0] == OP_SWAP:
        out.write("    pop rax\n")
        out.write("    pop rbx\n")
        out.write("    push rax\n")
        out.write("    push rbx\n")
    elif op[0] == OP_COVR:
        out.write("    pop rax\n")
        out.write("    pop rbx\n")
        out.write("    push rbx\n")
        out.write("    push rax\n")
        out.write("    push rbx\n")
    elif op[0] == OP_JNZ:
        out.write("    pop rbx\n")
        out.write("    pop rax\n")
        out.write("    test rbx, rbx\n")
        out.write("    push rax\n")
        out.write("    jz %s_%d\n" % (start, ip + 1))
        out.write("    jmp rax\n")
    elif op[0] == OP_PROC:
        procs[op[1]] = "%s_%d\n" % (start, ip)
        out.write("    ; %s\n" % op[1])
    elif op[0] == OP_ARGV:
        out.write("    mov rax, [args_ptr]\n")
        out.write("    add rax, 8\n")
        out.write("    push rax\n")
    elif op[0] == OP_MULTI:
        for op_id2 in range(len(op[1])):
            op2 = op[1][op_id2]
            compile_inst(out, op2, op_id2,"%s_%d" % (start, ip))
        out.write("%s_%d_%d:\n" % (start, ip, len(op[1])))          
    elif op[0] == OP_ARGC:
        out.write("    mov rax, [args_ptr]\n")
        out.write("    mov rax, [rax]\n")
        out.write("    push rax\n")
    elif op[0] == OP_ENVP:
        out.write("    mov rax, [args_ptr]\n" )
        out.write("    mov rax, [rax]\n"      )
        out.write("    add rax, 2\n"          )
        out.write("    shl rax, 3\n"          )
        out.write("    mov rbx, [args_ptr]\n" )
        out.write("    add rbx, rax\n"        )
        out.write("    push rbx\n"            )
    elif op[0] == OP_CALL:
        out.write("    mov rax, [ret_stack_rsp]\n")
        out.write("    add rax, 8\n")
        out.write("    mov qword [ret_stack_rsp], rax\n")
        out.write("    mov qword [rax], %s_%d\n" % (start, ip + 1))
        out.write("    jmp %s\n" % (procs[op[1]]))
    elif op[0] == OP_PUSHP:
        out.write("    mov rax, %s_%d\n" % (start, procs[op[1]]))
    elif op[0] == OP_CALLS:
        out.write("    pop rbx\n")
        out.write("    mov rax, [ret_stack_rsp]\n")
        out.write("    add rax, 8\n")
        out.write("    mov qword [ret_stack_rsp], rax\n")
        out.write("    mov qword [rax], %s_%d\n" % (start, ip + 1))
        out.write("    jmp [rbx]\n")
    elif op[0] == OP_QUIT:
        out.write("    jmp quit\n")
    elif op[0] == OP_IF:
        out.write("    pop rbx\n")
        out.write("    test rbx, rbx\n")
        out.write("    jz %s_%d\n" % (start, ip + 2))
    elif op[0] == OP_CONST:
        value = op[1].encode('utf-8')
        for s in range(len(strs)):
            if strs[s] == value:
                out.write("    push str_%d\n" % s)
                break
        else:        
            out.write("    push str_%d\n" % len(strs))
            strs.append(value + b"\x00")
    elif op[0] == OP_RET:
        out.write("    mov rax, [ret_stack_rsp]\n")
        out.write("    sub rax, 8\n")
        out.write("    mov qword [ret_stack_rsp], rax\n")
        out.write("    add rax, 8\n")
        out.write("    jmp [rax]\n")
    elif op[0] == OP_LOCX:
        locs[op[1]] = start + "_%d" % ip
    elif op[0] == OP_JUMPX:
        out.write("    jmp %s\n" % locs[op[1]])
    elif op[0] == OP_SYS0:
        out.write("    pop rax\n")
        out.write("    syscall\n")
        out.write("    push rax\n")
    elif op[0] == OP_SYS1:
        out.write("    pop rax\n")
        out.write("    pop rdi\n")
        out.write("    syscall\n")
        out.write("    push rax\n")
    elif op[0] == OP_SYS2:
        out.write("    pop rax\n")
        out.write("    pop rdi\n")
        out.write("    pop rsi\n")
        out.write("    syscall\n")
        out.write("    push rax\n")
    elif op[0] == OP_SYS3:
        out.write("    pop rax\n")
        out.write("    pop rdi\n")
        out.write("    pop rsi\n")
        out.write("    pop rdx\n")
        out.write("    syscall\n")
        out.write("    push rax\n")
    elif op[0] == OP_SYS4:
        out.write("    pop rax\n")
        out.write("    pop rdi\n")
        out.write("    pop rsi\n")
        out.write("    pop rdx\n")
        out.write("    pop r10\n")
        out.write("    syscall\n")
        out.write("    push rax\n")
    elif op[0] == OP_SYS5:
        out.write("    pop rax\n")
        out.write("    pop rdi\n")
        out.write("    pop rsi\n")
        out.write("    pop rdx\n")
        out.write("    pop r10\n")
        out.write("    pop r8\n")
        out.write("    syscall\n")
        out.write("    push rax\n")
    elif op[0] == OP_SYS6:
        out.write("    pop rax\n")
        out.write("    pop rdi\n")
        out.write("    pop rsi\n")
        out.write("    pop rdx\n")
        out.write("    pop r10\n")
        out.write("    pop r8\n")
        out.write("    pop r9\n")
        out.write("    syscall\n")
        out.write("    push rax\n")
    else:
        assert False, "not implemented" + str(op)



def compile_program(program):
    global procs
    global strs
    global locs
    global memsize
    with open("output.asm", "w") as out:
        strs = []
        locs = {}
        procs = {}
        memsize = 0 
        
        out.write("BITS 64\n")
        out.write("segment .text\n")
        out.write("extern malloc\n")
        out.write("print:\n")
        out.write("    mov r10, rsp\n")
        out.write("    sub rsp, 8\n")
        out.write("    mov [rsp], al\n")
        out.write("    mov edi, 1\n")
        out.write("    mov rsi, rsp\n")
        out.write("    mov edx, 1\n")
        out.write("    mov eax, 1\n")
        out.write("    syscall\n")
        out.write("    mov rsp, r10\n")
        out.write("    ret\n")

        for ip in range(len(program)):
            op = program[ip]
            compile_inst(out, op, ip, "addr")

        assert "main" in procs, "No Main"

        out.write("addr_%d:\n" % len(program))
        out.write("    ret\n")
        out.write("global _start\n")
        out.write("_start:\n")
        out.write("    mov qword [args_ptr], rsp\n")
        out.write("    mov qword [ret_stack_rsp], ret_stack\n")
        out.write("    mov rax, [ret_stack_rsp]\n")
        out.write("    mov qword [rax], quit\n")
        out.write("    jmp %s\n" % procs["main"])
        out.write("quit:\n")
        out.write("    mov rax, 60\n")
        out.write("    mov rdi, 0x0\n")
        out.write("    syscall\n")
        out.write("segment .data\n")
        for index, s in enumerate(strs):
            out.write("str_%d: db %s\n" % (index, ','.join(map(str, list(s)))))
        out.write("segment .bss\n")
        out.write("args_ptr: resq 1\n")
        out.write("ret_stack_rsp: resq 1\n")
        out.write("ret_stack: resb %d\n" % (64 * 1024)) 
        out.write("ret_stack_end:\n")
        out.write("mem: resb %d\n" % memsize)

singles = {
        "dump": [
            (OP_DUMP, )
            ],
        "+": [
            (OP_PLUS, )
            ],
        "*": [
            (OP_MUL, )
            ],
        "/": [
            (OP_DIV, )
            ],
        "-": [
            (OP_SUB, )
            ],
        "==": [
            (OP_EQ, )
            ],
        "!=": [
            (OP_NQ, )
            ],
        ">": [
            (OP_GT, )
            ],
        "cycl": [
            (OP_CYCL, )
            ],
        "<": [
            (OP_LT, )
            ],
        "swap": [
            (OP_SWAP, )
            ],
        "copy": [
            (OP_COPY, )
            ],
        "covr": [
            (OP_COVR, )
            ],
        "read": [
            (OP_READ, )
            ],
        "readc": [
            (OP_READC, )
            ],
        "disc": [
            (OP_DISC, )
            ],
        "put": [
            (OP_PUT, )
            ],
        "&&": [
            (OP_AND, )
            ],
        "||": [
            (OP_OR, )
            ],
        "!": [
            (OP_NOT, )
            ],
        "()": [
            (OP_CALLS, )
            ],
        "argv": [
            (OP_ARGV, )
            ],
        "argc": [
            (OP_ARGC, )
            ],
        "envp": [
            (OP_ENVP, )
            ],
        "nop": [
            (OP_NOP, )
            ],
        "quit": [
            (OP_QUIT, )
            ],
        "ret": [
            (OP_RET, )
            ],
        "putc": [
            (OP_PUTC, )
            ],
        
        "sys0": [
            (OP_SYS0, )
            ],
        "sys1": [
            (OP_SYS1, )
            ],
        "sys2": [
            (OP_SYS2, )
            ],
        "sys3": [
            (OP_SYS3, )
            ],
        "sys4": [
            (OP_SYS4, )
            ],
        "sys5": [
            (OP_SYS5, )
            ],
        "sys6": [
            (OP_SYS6, )
            ],
        }


# (remove, add)
op_values = {
        OP_NOP:  (0, 0),
        OP_PUSH: (0, 1),
        OP_PUSHP:(0, 1),
        OP_SUB:  (2, 1),
        OP_MUL:  (2, 1),
        OP_DIV:  (2, 2),
        OP_PLUS: (2, 1),
        OP_SWAP: (2, 2),
        OP_DUMP: (1, 0),
        OP_COPY: (1, 2),
        OP_COVR: (2, 3),
        OP_GPTR: (0, 1),
        OP_READ: (1, 1),
        OP_READC: (1, 1),
        OP_PUTC: (2, 1),
        OP_PUT: (2, 1),
        OP_DISC: (1, 0),
        OP_CONST:(0, 1),
        OP_ARGV: (0, 1),
        OP_ARGC: (0, 1),
        OP_ENVP: (0, 1),
        OP_CALLS:(0, 0),
        OP_PROC: (0, 0),
        OP_RET:  (0, 0),
        OP_JUMP: (1, 0),
        OP_JNZ:  (2, 1),
        OP_GETP: (0, 1),
        OP_NQ:   (2, 1),
        OP_EQ:   (2, 1),
        OP_LT:   (2, 1),
        OP_GT:   (2, 1),
        OP_AND:  (2, 1),
        OP_OR:   (2, 1),
        OP_NOT:  (1, 1),
        OP_IF:   (1, 0),
        OP_JUMPX:(0, 0),
        OP_LOCX: (0, 0),
        OP_CYCL: (0, 0),
        OP_SYS0: (1, 1),
        OP_SYS1: (2, 1),
        OP_SYS2: (3, 1),
        OP_SYS3: (4, 1),
        OP_SYS4: (5, 1),
        OP_SYS5: (6, 1),
        OP_SYS6: (7, 1),
        }

def check_proc(program, args, rets, values):
    def check_op(idx, stackoffset):
        op = program[idx]
        if op[0] == OP_IF:
            stackoffset -= 1
            start = stackoffset
            idx += 1
            idx, stackoffset, res = check_op(idx, stackoffset)
            if res[2] != "OK":
                return idx, stackoffset, res
            stackoffset = start
        elif op[0] == OP_QUIT:
            if stackoffset != 0:
                return idx, stackoffset, (stackoffset, op, "Quit wrong ammnt")
        elif op[0] == OP_RET:
            if stackoffset != rets:
                return idx, stackoffset, (stackoffset, op, "Return wrong ammnt")
        elif op[0] == OP_MULTI:
            bal = check_proc(op[1], stackoffset, rets, values)
            if bal[2] != "OK":
                print("internal unbalanced, " + str(bal[0]) + ", " + bal[2])
                quit()
            stack_offset = bal[0]
        elif op[0] == OP_CALL:
            stackoffset -= values[op[1]][0]
            if stackoffset < 0:
                return idx, stackoffset, (stackoffset, op, "Stack underflow")
            stackoffset += values[op[1]][1]
        elif op[0] in op_values:
            stackoffset -= op_values[op[0]][0]
            if stackoffset < 0:
                return idx, stackoffset, (stackoffset, op, "Stack underflow")
            stackoffset += op_values[op[0]][1]
        else:
            return  idx, stackoffset,(stackoffset, op, "Operation missing")
        return idx, stackoffset, (stackoffset, (0,), "OK")
    
    idx = 0
    stackoffset = args
    while idx < len(program):
        idx, stackoffset, res = check_op(idx, stackoffset)
        if res[2] != "OK":
            return res
        idx += 1
    
    return (stackoffset, (0,), "OK")

proc_values = {}

def parse_program(text, consts = {}, multi = False):
    global proc_values
    tmp_data = [y.split(" ") for y in text.split("\n")]
    data = []
    for i in tmp_data:
        data.extend(i)

    tmp_data = data
    data = []
    
    idx = 0
    while idx < len(tmp_data):
        func = tmp_data[idx]
        idx += 1
        if func == "": continue
        while func == "\"" or func == "\'" \
           or func[-1] == "\\" \
           or (func[0] == "\"" and func[-1] != "\"") \
           or (func[0] == "\'" and func[-1] != "\'") \
           or (func[0] == "[" and func[-1] != "]") \
           or (func[0] == "{" and func[-1] != "}"):
            if func[-1] == "\\":
                func = func[0:-1]
            func += " " + tmp_data[idx]
            idx += 1
        data.append(func)
        
    result = []
    
    idx = 0

    ident_stack = []

    proc_block = []
    proc_args = 0
    proc_rets = 0
    last_jumpx = 0

    do_ids = []

    while idx < len(data):
        func = data[idx]
        idx += 1

        if func == "": continue

        if func == "const":
            name = data[idx]
            idx += 1
            consts[name] = int(data[idx])
            idx += 1
        
        elif func == "enum":
            enumval = int(data[idx])
            idx += 1
            while data[idx] != "end": 
                if data[idx].isnumeric():
                    enumval = int(data[idx])
                    idx += 1
                else:
                    name = data[idx]
                    idx += 1
                    consts[name] = enumval
                    enumval += 1
            idx += 1

        elif func in singles:
            proc_block.extend(singles[func])
            if proc_block[-1] == "ARGS":
                proc_block.pop()
        
        elif func == "inc":
            with open(data[idx], "r") as file:
                (program, values) = parse_program(file.read())
                result.extend(program)
            idx += 1
        
        elif func == "var":
            size = int(data[idx])
            idx += 1
            proc_block.append((OP_GPTR, size))

        elif func == "end":
            if ident_stack[-1] == "proc":
                if proc_block[-1][0] != OP_RET:
                    assert False, "Proc doesnt return"
                bal = check_proc(proc_block, proc_args, proc_rets, proc_values)
                if bal[2] != "OK":
                    print("proc unbalanced, " + str(bal[0]) + ", " + bal[2])
                    quit()
                if bal[0] != proc_rets:
                    print("proc unbalanced, " + str(bal[0]) + ", " + bal[2])
                    quit()
                result.extend(proc_block)
                proc_block = []
                proc_args = -1
            elif ident_stack[-1] == "do":
                proc_block.append((OP_IF, ))
                proc_block.append((OP_JUMPX, do_ids.pop()))
            else:
                assert False, "Unreachable"
            ident_stack.pop()

        elif func[0] == "\"" and func[-1] == "\"":
            proc_block.append((OP_CONST, func[1:-1].replace("\\n", "\n").replace("\\t", "\t")))
        
        elif func[0] == "\'" and func[-1] == "\'":
            proc_block.append((OP_PUSH, len(func[1:-1].replace("\\n", "\n").replace("\\t", "\t"))))
            proc_block.append((OP_CONST, func[1:-1].replace("\\n", "\n").replace("\\t", "\t")))
        
        elif func == "proc":
            result.append((OP_PROC, data[idx]))
            idx += 1
            proc_args = int(data[idx])
            idx += 1
            proc_rets = int(data[idx])
            idx += 1
            print(f"proc `{data[idx - 3]}`, {proc_args} => {proc_rets}")
            ident_stack.append("proc")
            proc_values[data[idx - 3]] = (proc_args, proc_rets)

        elif func == "do":
            do_ids.append(last_jumpx)
            proc_block.append((OP_LOCX, last_jumpx))
            last_jumpx += 1
            ident_stack.append("do")

        elif func == "if":
            proc_block.append((OP_IF, ))
        
        elif func[0] == "(" and func[-1] == ")":
            proc_block.append((OP_CALL, func[1:-1]))
        
        elif func[0] == "[" and func[-1] == "]":
            cont = parse_program(func[1:-1], consts, True)
            proc_block.append((OP_MULTI, cont[0]))

        elif func[0] == "{" and func[-1] == "}":
            pass

        elif func.isnumeric():
            proc_block.append((OP_PUSH, int(func)))

        elif func in proc_values:
            proc_block.append((OP_PUSHP, func))
            
        elif func in consts:
            proc_block.append((OP_PUSH, consts[func]))
        
        else:
            print("builtin `%s` not found\n" % func)
            quit()
    if multi:
        return (proc_block, proc_values)
    else:
        return (result, proc_values)

def cmd_call_echoed(cmd, silent):
    if not silent:
        print("[CMD] %s" % " ".join(map(shlex.quote, cmd)))
    return subprocess.call(cmd)

def main():
    parser = argparse.ArgumentParser()

    parser.add_argument('file')
    parser.add_argument('-s', '--simulate', type=bool, default=False)
    parser.add_argument('-S', '--silent', type=bool, default=False)
    parser.add_argument('-o', '--output', type=str, default="output", help="The file to write to")
    parser.add_argument('-i', '--include', type=str, default="output", help="The file to write to")
    args = parser.parse_args()

    with open(args.file, "r") as file:
        (program, _) = parse_program(file.read())

    if args.simulate:
        simulate_program(program)
    else:
        compile_program(program)
        cmd_call_echoed(["nasm", "-f", "elf64", "output.asm"], args.silent)
        cmd_call_echoed(["ld", "-dynamic-linker", "/lib64/ld-linux-x86-64.so.2", "-o", args.output, "-lc", "output.o"], args.silent)

if __name__ == "__main__":
    main()
