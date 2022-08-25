#!/usr/bin/env python3

iota_counter=0
def iota(reset=False):
    global iota_counter
    if reset:
        iota_counter = 0
    result = iota_counter
    iota_counter += 1
    return result

OP_PUSH = iota(True)
OP_SUB  = iota()
OP_PLUS = iota()
OP_SWAP = iota()
OP_DUMP = iota()
OP_COPY = iota()
OP_COVR = iota()
OP_GPTR = iota()
OP_READ = iota()
OP_PUTC = iota()
OP_DISC = iota()

OP_CONST = iota()
OP_CALL = iota()
OP_PROC = iota()
OP_RET = iota()

OP_JUMP = iota()
OP_JNZ  = iota()
OP_GETP = iota()
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
            if op[0] == OP_PUSH:
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
    print("done")
    print(stack)
    print(memory)

def compile_program(program):
    with open("output.asm", "w") as out:
        strs = []
        procs = {}
        
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
            out.write("addr_%d:\n" % ip)            
            if op[0] == OP_PUSH:
                out.write("    mov qword rax, %d\n" % op[1])
                out.write("    push rax\n")
            elif op[0] == OP_SUB:
                out.write("    pop rbx\n")
                out.write("    pop rax\n")
                out.write("    sub rax, rbx\n")
                out.write("    push rax\n")
            elif op[0] == OP_PLUS:
                out.write("    pop rax\n")
                out.write("    pop rbx\n")
                out.write("    add rax, rbx\n")
                out.write("    push rax\n")
            elif op[0] == OP_DUMP:
                out.write("    pop rax\n")
                out.write("    call print\n")
            elif op[0] == OP_COPY:
                out.write("    pop rax\n")
                out.write("    push rax\n")
                out.write("    push rax\n")
            elif op[0] == OP_GPTR:
                out.write("    pop rcx\n")
                out.write("    mov rax, 45\n")
                out.write("    mov rbx, rsi\n")
                out.write("    add rbx, rcx\n")
                out.write("    int 0x80\n")
                out.write("    push rsi\n")
            elif op[0] == OP_PUTC:
                out.write("    pop rbx\n")
                out.write("    pop rax\n")
                out.write("    mov byte [rax], bl\n")
                out.write("    push rax\n")
            elif op[0] == OP_READ:
                out.write("    pop rax\n")
                out.write("    xor rbx, rbx\n")
                out.write("    mov rbx, [rax]\n")
                out.write("    push rbx\n")
            elif op[0] == OP_DISC:
                out.write("    pop rax\n")
            elif op[0] == OP_GETP:
                out.write("    mov rax, addr_%d\n" % (ip + 1))
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
                out.write("    jz addr_%d\n" % (ip + 1))
                out.write("    jmp rax\n")
            elif op[0] == OP_PROC:
                out.write("    ; %s\n" % op[1])
                procs[op[1]] = ip
            elif op[0] == OP_CALL:
                out.write("    call addr_%d\n" % (procs[op[1]]))
            elif op[0] == OP_CONST:
                value = op[1].encode('utf-8')
                out.write("    push str_%d\n" % len(strs))
                strs.append(value)
            elif op[0] == OP_RET:
                out.write("    ret\n")
            else:
                assert False, "not implemented"

        assert "main" in procs, "No Main"

        out.write("addr_%d:\n" % len(program))
        out.write("    ret\n")
        out.write("global _start\n")
        out.write("_start:\n")
        out.write("    call addr_%d\n" % procs["main"])
        out.write("    mov rax, 60\n")
        out.write("    mov rdi, 0x0\n")
        out.write("    syscall\n")
        out.write("    ret\n")
        out.write("segment .data\n")
        for index, s in enumerate(strs):
            out.write("str_%d: db %s, 0\n" % (index, ','.join(map(str, list(s)))))
        out.write("segment .bss\n")
        out.write("args_ptr: resq 1\n")
        out.write("ret_stack_rsp: resq 1\n")
        out.write("ret_stack: resb %d\n" % (64 * 1024)) 
        out.write("ret_snack_end:\n")

singles = {
        "dump": [
            (OP_DUMP, )
            ],
        "getp": [
            (OP_GETP, )
            ],
        "+": [
            (OP_PLUS, )
            ],
        "-": [
            (OP_SUB, )
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
        "disc": [
            (OP_DISC, )
            ],
        }

def parse_program(text):
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
        while func[-1] == "\\" or (func[0] == "(" and func[-1] != ")"): 
            if func[-1] == "\\":
                func = func[0:-1]
            func += " " + tmp_data[idx]
            idx += 1
        data.append(func.replace("\\n", "\n"))
        
    result = []
    
    idx = 0

    ident_stack = []
    while idx < len(data):
        func = data[idx]
        idx += 1

        if func == "": continue
        
        if func == "inc":
            with open(data[idx], "r") as file:
                program = parse_program(file.read())
                result.extend(program)
            idx += 1

        elif func == "end":
            if ident_stack[-1] == "proc":
                result.append((OP_RET, ))
            elif ident_stack[-1] == "while":
                result.append((OP_JNZ, ))
                result.append((OP_DISC, ))
            else:
                assert False, "Unreachable"
            ident_stack.pop()

        elif func[0] == "\"" and func[-1] == "\"":
            result.append((OP_CONST, func[1:-1]))
        
        elif func == "proc":
            result.append((OP_PROC, data[idx]))
            print("proc " + data[idx])
            idx += 1
            ident_stack.append("proc")

        elif func == "while":
            result.append((OP_GETP, ))
            ident_stack.append("while")
        
        elif func[0] == "(" and func[-1] == ")":
            result.append((OP_CALL, func[1:-1]))

        elif func.isnumeric():
            result.append((OP_PUSH, int(func)))

        elif func in singles:
            result.extend(singles[func])
            if result[-1] == "ARGS":
                result.pop()
        else:
            print("builtin `%s` not found\n" % func)
            quit()
    return result

with open("lol.slm", "r") as file:
    program = parse_program(file.read())
print(program)

#simulate_program(program)
compile_program(program)
