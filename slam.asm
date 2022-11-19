format ELF64
section '.text' executable
public _start
class_bool:
class_cstr:
proc_cstr_len:
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
    pop rax
    push rax
    push rax
.blockstart_1: ; do
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rbx
    test rbx, rbx
    jnz .blockstart_1
.blockend_1: ; do
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_cstr_print:
    pop rax
    push rax
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_len
.blockend_0: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    push qword 1
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_cstr_cr:
    push qword 1
    push str_0
    push qword 1
    push qword 1
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_cstr_println:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_print
.blockend_0: ; call
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_cr
.blockend_1: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_cstr_eq:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_1: ; do
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    add rsp, 8
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    or rax, rbx
    push rax
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    add rsp, 8
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_1
.blockend_1: ; do
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_cstr_cpy:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_0: ; do
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_cstr_last:
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_0: ; do
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_cstr_clear:
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
    pop rax
    push rax
    push rax
.blockstart_1: ; do
    pop rax
    push rax
    push rax
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rbx
    test rbx, rbx
    jnz .blockstart_1
.blockend_1: ; do
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_cstr_cat:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    push rax
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_len
.blockend_0: ; call
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_cpy
.blockend_1: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_cstr_isnum:
    push mem+0
    push qword 48'
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    push mem+1
    push qword 57'
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
    pop rax
    push rax
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_len
.blockend_0: ; call
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 98'
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    push mem+1
    push qword 49'
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockend_1: ; if
    pop rax
    push rax
    push rax
    push qword 104
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    push mem+1
    push qword 102
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockend_2: ; if
    add rsp, 8
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 45'
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockend_3: ; if
.blockstart_4: ; do
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push mem+0
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push mem+1
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rax
    pop rbx
    or rax, rbx
    push rax
    pop rbx
    test rbx, rbx
.blockstart_5: ; if
    jz .blockend_5
    add rsp, 8
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 98'
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 104
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    or rax, rbx
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_cstr_len
.blockend_6: ; call
    push qword 1
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_5: ; if
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_4
.blockend_4: ; do
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_cstr_int:
    pop rax
    push rax
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_isnum
.blockend_0: ; call
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    push qword 0
.blockend_1: ; if
    push mem+2
    push qword 10
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
    pop rax
    push rax
    push rax
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_len
.blockend_2: ; call
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 98'
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push mem+2
    push qword 2
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockend_3: ; if
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 104
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_4: ; if
    jz .blockend_4
    push mem+2
    push qword 16
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockend_4: ; if
    add rsp, 8
    push qword 0
.blockstart_5: ; do
    push mem+2
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 70'
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 65'
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rbx
    test rbx, rbx
.blockstart_6: ; if
    jz .blockend_6
    push qword 65'
    push qword 10
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push qword 48'
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockend_6: ; if
    push qword 48'
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 98'
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 104
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    test rbx, rbx
    jnz .blockstart_5
.blockend_5: ; do
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_cstr_split:
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+3
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    push mem+4
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+4
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_clear
.blockend_0: ; call
.blockstart_1: ; do
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push mem+3
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+4
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_1
.blockend_1: ; do
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_int:
proc_int_gettmp:
    push mem+20
    push qword 30
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+12
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_int_inctmpidx:
    push mem+12
    push mem+12
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_int_cstr:
.blockstart_0: ; do
    push qword 10
    xor rdx, rdx
    pop rbx
    pop rax
    idiv rbx
    push rax
    push rdx
    push qword 48'
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_int_gettmp
.blockend_1: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_int_inctmpidx
.blockend_2: ; call
    pop rax
    push rax
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_int_gettmp
.blockend_3: ; call
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+12
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_int_cstrhex:
.blockstart_0: ; do
    push qword 16
    xor rdx, rdx
    pop rbx
    pop rax
    idiv rbx
    push rax
    push rdx
    pop rax
    push rax
    push rax
    push qword 9
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    push qword 97'
    push qword 10
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockend_1: ; if
    pop rax
    push rax
    push rax
    push qword 10
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    push qword 48'
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockend_2: ; if
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_int_gettmp
.blockend_3: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_int_inctmpidx
.blockend_4: ; call
    pop rax
    push rax
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_int_gettmp
.blockend_5: ; call
    push qword 36'
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_int_inctmpidx
.blockend_6: ; call
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_int_gettmp
.blockend_7: ; call
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+12
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_int_print:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_int_cstr
.blockend_0: ; call
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_print
.blockend_1: ; call
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_cr
.blockend_2: ; call
    push mem+12
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_int_printhex:
.blockstart_0: ; do
    push qword 16
    xor rdx, rdx
    pop rbx
    pop rax
    idiv rbx
    push rax
    push rdx
    pop rax
    push rax
    push rax
    push qword 9
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    push qword 97'
    push qword 10
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockend_1: ; if
    pop rax
    push rax
    push rax
    push qword 10
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    push qword 48'
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockend_2: ; if
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_int_gettmp
.blockend_3: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_int_inctmpidx
.blockend_4: ; call
    pop rax
    push rax
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_int_gettmp
.blockend_5: ; call
    push qword 120
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_int_inctmpidx
.blockend_6: ; call
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_int_gettmp
.blockend_7: ; call
    push qword 48'
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_int_inctmpidx
.blockend_8: ; call
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_int_gettmp
.blockend_9: ; call
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_cstr_print
.blockend_10: ; call
    push mem+12
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_cstr_cr
.blockend_11: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_slash:
    xor rdx, rdx
    pop rbx
    pop rax
    idiv rbx
    push rax
    push rdx
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
