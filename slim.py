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

OP_PUSHP = iota()
OP_CALLS = iota()

OP_CONST = iota()
OP_CALL = iota()
OP_PROC = iota()
OP_RET = iota()

OP_JUMP = iota()
OP_JNZ  = iota()
OP_GETP = iota()

OP_EQ   = iota()
OP_LT   = iota()
OP_GT   = iota()
OP_AND  = iota()

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
            quit()
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
            elif op[0] == OP_AND:
                out.write("    pop rbx\n")
                out.write("    pop rax\n")
                out.write("    and rax, rbx\n")
                out.write("    push rax\n")
            elif op[0] == OP_PLUS:
                out.write("    pop rax\n")
                out.write("    pop rbx\n")
                out.write("    add rax, rbx\n")
                out.write("    push rax\n")
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
                out.write("    mov rax, [ret_stack_rsp]\n")
                out.write("    add rax, 8\n")
                out.write("    mov qword [ret_stack_rsp], rax\n")
                out.write("    mov qword [rax], addr_%d\n" % (ip + 1))
                out.write("    jmp addr_%d\n" % (procs[op[1]]))
            elif op[0] == OP_PUSHP:
                out.write("    mov rax, addr_%d\n" % (procs[op[1]]))
            elif op[0] == OP_CALLS:
                out.write("    pop rbx\n")
                out.write("    mov rax, [ret_stack_rsp]\n")
                out.write("    add rax, 8\n")
                out.write("    mov qword [ret_stack_rsp], rax\n")
                out.write("    mov qword [rax], addr_%d\n" % (ip + 1))
                out.write("    jmp [rbx]\n" % (procs[op[1]]))
            elif op[0] == OP_CONST:
                value = op[1].encode('utf-8')
                for s in range(len(strs)):
                    if strs[s] == value:
                        out.write("    push str_%d\n" % s)
                        break
                else:        
                    out.write("    push str_%d\n" % len(strs))
                    strs.append(value)
            elif op[0] == OP_RET:
                out.write("    mov rax, [ret_stack_rsp]\n")
                out.write("    sub rax, 8\n")
                out.write("    mov qword [ret_stack_rsp], rax\n")
                out.write("    add rax, 8\n")
                out.write("    jmp [rax]\n")
            else:
                assert False, "not implemented" + str(op)

        assert "main" in procs, "No Main"

        out.write("addr_%d:\n" % len(program))
        out.write("    ret\n")
        out.write("global _start\n")
        out.write("_start:\n")
        out.write("    mov qword [ret_stack_rsp], ret_stack\n")
        out.write("    mov rax, [ret_stack_rsp]\n")
        out.write("    mov qword [rax], quit\n")
        out.write("    jmp addr_%d\n" % procs["main"])
        out.write("quit:\n")
        out.write("    mov rax, 60\n")
        out.write("    mov rdi, 0x0\n")
        out.write("    syscall\n")
        out.write("segment .data\n")
        for index, s in enumerate(strs):
            out.write("str_%d: db %s, 0\n" % (index, ','.join(map(str, list(s)))))
        out.write("segment .bss\n")
        out.write("args_ptr: resq 1\n")
        out.write("ret_stack_rsp: resq 1\n")
        out.write("ret_stack: resb %d\n" % (64 * 1024)) 
        out.write("ret_stack_end:\n")

singles = {
        "dump": [
            (OP_DUMP, )
            ],
        "ptr": [
            (OP_GETP, )
            ],
        "+": [
            (OP_PLUS, )
            ],
        "-": [
            (OP_SUB, )
            ],
        "==": [
            (OP_EQ, )
            ],
        ">": [
            (OP_GT, )
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
        "disc": [
            (OP_DISC, )
            ],
        "put": [
            (OP_PUTC, )
            ],
        "&&": [
            (OP_AND, )
            ],
        "()": [
            (OP_CALLS, )
            ]
        }


# (remove, add)
op_values = {
        OP_PUSH: (0, 1),
        OP_PUSHP:(0, 1),
        OP_SUB:  (2, 1),
        OP_PLUS: (2, 1),
        OP_SWAP: (2, 2),
        OP_DUMP: (1, 0),
        OP_COPY: (1, 2),
        OP_COVR: (2, 3),
        OP_GPTR: (0, 1),
        OP_READ: (1, 1),
        OP_PUTC: (2, 1),
        OP_DISC: (1, 0),
        OP_CONST:(0, 1),

        OP_CALLS:(0, 0),
        
        OP_PROC: (0, 0),
        OP_RET:  (0, 0),
        OP_JUMP: (1, 0),
        OP_JNZ:  (2, 1),
        OP_GETP: (0, 1),
        OP_EQ:   (2, 1),
        OP_LT:   (2, 1),
        OP_GT:   (2, 1),
        OP_AND:  (2, 1),
        }

def check_proc(program, args, values):
    stackoffset = args
    idx = 0
    for op in program:
        if op[0] == OP_CALL:
            stackoffset -= values[op[1]][0]
            if stackoffset < 0:
                return (stackoffset, op)
            stackoffset += values[op[1]][1]
        elif op[0] in op_values:
            stackoffset -= op_values[op[0]][0]
            if stackoffset < 0:
                return (stackoffset, op)
            stackoffset += op_values[op[0]][1]
        else:
            return (stackoffset, op)
    return (stackoffset, (0,))

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
        while func[-1] == "\\" \
           or (func[0] == "\"" and func[-1] != "\"") \
           or (func[0] == "{" and func[-1] != "}"):
            if func[-1] == "\\":
                func = func[0:-1]
            func += " " + tmp_data[idx]
            idx += 1
        data.append(func.replace("\\n", "\n"))
        
    result = []
    
    idx = 0

    ident_stack = []

    proc_block = []
    proc_args = 0
    proc_rets = 0
    proc_values = {}

    while idx < len(data):
        func = data[idx]
        idx += 1

        if func == "": continue

        if func in singles:
            proc_block.extend(singles[func])
            if proc_block[-1] == "ARGS":
                proc_block.pop()
        
        elif func == "inc":
            with open(data[idx], "r") as file:
                (program, values) = parse_program(file.read())
                result.extend(program)
                for key, value in values.items():
                    proc_values[key] = value
            idx += 1

        elif func == "end":
            if ident_stack[-1] == "proc":
                proc_block.append((OP_RET, ))
                bal = check_proc(proc_block, proc_args, proc_values)
                if bal[0] != proc_rets:
                    print("proc unbalanced, " + str(bal))
                    quit()
                result.extend(proc_block)
                proc_block = []
                proc_args = -1
            elif ident_stack[-1] == "while":
                proc_block.append((OP_JNZ, ))
                proc_block.append((OP_DISC, ))
                proc_block.append((OP_DISC, ))
            else:
                assert False, "Unreachable"
            ident_stack.pop()

        elif func[0] == "\"" and func[-1] == "\"":
            proc_block.append((OP_CONST, func[1:-1]))
        
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

        elif func == "while":
            proc_block.append((OP_GETP, ))
            ident_stack.append("while")
        
        elif func[0] == "(" and func[-1] == ")":
            proc_block.append((OP_CALL, func[1:-1]))

        elif func[0] == "{" and func[-1] == "}":
            pass

        elif func.isnumeric():
            proc_block.append((OP_PUSH, int(func)))

        elif func in proc_values:
            proc_block.append((OP_PUSHP, func))
            
        else:
            print("builtin `%s` not found\n" % func)
            quit()
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
    parser.add_argument('-o', '--output', type=str, default="output.o", help="The file to write to")
    args = parser.parse_args()

    with open(args.file, "r") as file:
        (program, _) = parse_program(file.read())

    if args.simulate:
        simulate_program(program)
    else:
        compile_program(program)
        cmd_call_echoed(["nasm", "-f", "elf64", "output.asm"], args.silent)
        cmd_call_echoed(["ld", "-dynamic-linker", "/lib64/ld-linux-x86-64.so.2", "-o", "main", "-lc", "output.o"], args.silent)

if __name__ == "__main__":
    main()
