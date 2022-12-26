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
    push mem+8
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
    push mem+8
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
    push mem+8
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
    push mem+8
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
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_1: ; if
    push mem+16
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
    push mem+16
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
    push mem+16
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
    push mem+16
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
    push mem+32
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    push mem+40
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+40
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
    push mem+32
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
    push mem+40
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
proc_cstr_iter:
    push mem+24
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+24
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
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
    push qword 0
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
    push mem+24
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+24
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_int:
proc_int_gettmp:
    push mem+56
    push qword 30
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+48
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
    push mem+48
    push mem+48
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
    push mem+48
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
    push mem+48
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
    push mem+48
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
    push mem+48
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
proc_perc:
    xor rdx, rdx
    pop rbx
    pop rax
    idiv rbx
    push rax
    push rdx
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
class_heapentry:
proc_heapentry_isentry:
    pop rax
    push rax
    push rax
    pop rax
    push rax
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
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
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 1
    pop rax
    pop rbx
    and rax, rbx
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
class_mem:
proc_mem_cpy:
    push mem+88
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
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
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
.blockstart_1: ; do
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
    push mem+88
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+88
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
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_1
.blockend_1: ; do
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_mem_eq:
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+88
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockstart_0: ; do
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push mem+88
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
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
.blockstart_1: ; if
    jz .blockend_1
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_1: ; if
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
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push mem+88
    pop rax
    push rax
    push rax
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
    mov qword [rax], rbx
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_mem_zero:
    push mem+88
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockstart_0: ; do
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
    push mem+88
    push mem+88
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+88
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
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_mem_set:
    push mem+88
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+112
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockstart_0: ; do
    pop rax
    push rax
    push rax
    push mem+112
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
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
    push mem+88
    push mem+88
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+88
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
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_heap:
proc_heap_allocpage:
    push mem+121
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 64000
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push mem+121
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 12
    pop rax
    pop rdi
    syscall
    push rax
    push mem+121
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
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
    push str_1
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_println
.blockend_1: ; call
.blockend_0: ; if
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_heap_init:
    push mem+145
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
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
    push mem+145
    push qword 1
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    push mem+113
    push qword 0
    push qword 12
    pop rax
    pop rdi
    syscall
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+121
    push mem+113
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_heap_allocpage
.blockend_1: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_heap_map:
    push mem+137
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push str_2
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_println
.blockend_0: ; call
    push str_3
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_println
.blockend_1: ; call
    push str_4
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_print
.blockend_2: ; call
    push mem+121
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+113
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_int_print
.blockend_3: ; call
    push mem+113
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 32
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_4: ; do
    push qword 32
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_heapentry_isentry
.blockend_5: ; call
    pop rbx
    test rbx, rbx
.blockstart_6: ; if
    jz .blockend_6
    push str_5
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_cstr_println
.blockend_7: ; call
    push str_6
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_cstr_print
.blockend_8: ; call
    pop rax
    push rax
    push rax
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_int_printhex
.blockend_9: ; call
    push str_7
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_cstr_print
.blockend_10: ; call
    pop rax
    push rax
    push rax
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push mem+137
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+137
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_int_print
.blockend_11: ; call
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 32
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockend_6: ; if
    pop rax
    push rax
    push rax
    push mem+121
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_4
.blockend_4: ; do
    add rsp, 8
    push str_8
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_cstr_print
.blockend_12: ; call
    push mem+137
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_int_print
.blockend_13: ; call
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_cstr_cr
.blockend_14: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_heap_alloc:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_init
.blockend_0: ; call
    push qword 17
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push qword 32
    xor rdx, rdx
    pop rbx
    pop rax
    idiv rbx
    push rax
    push rdx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push qword 32
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+129
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    push mem+113
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 32
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 32
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_1: ; do
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 32
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 32
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push mem+121
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_heap_allocpage
.blockend_3: ; call
.blockend_2: ; if
    pop rax
    push rax
    push rax
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_heapentry_isentry
.blockend_4: ; call
    pop rbx
    test rbx, rbx
.blockstart_5: ; if
    jz .blockend_5
    pop rax
    push rax
    push rax
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    push qword 0
    push qword 32
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 32
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockend_5: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push mem+129
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_1
.blockend_1: ; do
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    push mem+129
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+129
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
    pop rax
    push rax
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 1
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    push qword 17
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_heap_zalloc:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_init
.blockend_0: ; call
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_heap_alloc
.blockend_1: ; call
    pop rax
    push rax
    push rax
    pop rax
    push rax
    push rax
    push qword 17
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_mem_zero
.blockend_2: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_heap_free:
    push qword 17
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    push rax
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heapentry_isentry
.blockend_0: ; call
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    push str_9
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_println
.blockend_2: ; call
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_int_printhex
.blockend_3: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_1: ; if
    push qword 8
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
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_heap_tryfree:
    push qword 17
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    push rax
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heapentry_isentry
.blockend_0: ; call
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_1: ; if
    push qword 8
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
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_heap_realloc:
    push qword 17
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push qword 32
    xor rdx, rdx
    pop rbx
    pop rax
    idiv rbx
    push rax
    push rdx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push qword 32
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+129
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
    push qword 17
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heapentry_isentry
.blockend_0: ; call
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    push str_10
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_println
.blockend_2: ; call
    pop rax
    push rax
    push rax
    push qword 17
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_int_printhex
.blockend_3: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_1: ; if
    pop rax
    push rax
    push rax
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_heap_free
.blockend_4: ; call
    push mem+146
    push mem+129
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_heap_alloc
.blockend_5: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+146
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    push rax
    push rax
    push qword 17
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 17
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_mem_cpy
.blockend_6: ; call
    push mem+146
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_movemem:
    push mem+96
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+96
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_alloc
.blockend_0: ; call
    push mem+104
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+104
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+96
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_mem_cpy
.blockend_1: ; call
    push mem+104
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+96
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_mem_cpy
.blockend_2: ; call
    push mem+104
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_heap_free
.blockend_3: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_opt:
class_log:
proc_log_level:
    push mem+170
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+170
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
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
proc_log_msg:
    push mem+170
    push qword 13
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_clear
.blockend_0: ; call
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
    push mem+170
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 3
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_mem_cpy
.blockend_2: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_log_cat:
    push mem+170
    push qword 13
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_cat
.blockend_0: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_log_log:
    push mem+170
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 1
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
    push str_11
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_print
.blockend_1: ; call
    push str_12
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_print
.blockend_2: ; call
    push mem+170
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_print
.blockend_3: ; call
    push str_13
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_cstr_print
.blockend_4: ; call
    push mem+170
    push qword 13
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_cstr_print
.blockend_5: ; call
    push str_14
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_cstr_println
.blockend_6: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
    pop rax
    push rax
    push rax
    push qword 2
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_7: ; if
    jz .blockend_7
    push str_15
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_cstr_print
.blockend_8: ; call
    push str_16
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_cstr_print
.blockend_9: ; call
    push mem+170
    push qword 9
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
    push str_17
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_cstr_print
.blockend_11: ; call
    push mem+170
    push qword 13
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_cstr_print
.blockend_12: ; call
    push str_18
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_cstr_println
.blockend_13: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_7: ; if
    pop rax
    push rax
    push rax
    push qword 3
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_14: ; if
    jz .blockend_14
    push str_19
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_cstr_print
.blockend_15: ; call
    push str_20
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_cstr_print
.blockend_16: ; call
    push mem+170
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_cstr_print
.blockend_17: ; call
    push str_21
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_cstr_print
.blockend_18: ; call
    push mem+170
    push qword 13
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_cstr_print
.blockend_19: ; call
    push str_22
.blockstart_20: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_20
    jmp proc_cstr_println
.blockend_20: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_14: ; if
    add rsp, 8
    push str_23
.blockstart_21: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_21
    jmp proc_cstr_print
.blockend_21: ; call
    push mem+170
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_22: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_22
    jmp proc_cstr_print
.blockend_22: ; call
    push str_24
.blockstart_23: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_23
    jmp proc_cstr_print
.blockend_23: ; call
    push mem+170
    push qword 13
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_24: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_24
    jmp proc_cstr_println
.blockend_24: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_filepos:
proc_filepos_print:
    pop rax
    push rax
    push rax
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
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
    push str_25
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_print
.blockend_1: ; call
    pop rax
    push rax
    push rax
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_int_cstr
.blockend_2: ; call
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_print
.blockend_3: ; call
    push str_26
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_cstr_print
.blockend_4: ; call
    pop rax
    push rax
    push rax
    push qword 24
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_int_cstr
.blockend_5: ; call
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_cstr_print
.blockend_6: ; call
    push str_27
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_cstr_print
.blockend_7: ; call
    pop rax
    push rax
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
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
    pop rbx
    test rbx, rbx
.blockstart_8: ; if
    jz .blockend_8
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_cstr_print
.blockend_9: ; call
    push qword 0
.blockend_8: ; if
    push str_28
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_cstr_print
.blockend_10: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_filepos_advance:
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+298
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+298
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
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
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+298
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 24
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
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
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 10
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
    push mem+298
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 24
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 1
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+298
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
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
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockend_0: ; if
    push mem+298
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_slmtoken:
proc_slmtoken_print:
    push str_29
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_print
.blockend_0: ; call
    pop rax
    push rax
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push str_30
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
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    add rsp, 8
    push str_31
.blockend_1: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 1
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
    push str_32
.blockend_2: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 4
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
    add rsp, 8
    push str_33
.blockend_3: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 5
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
    add rsp, 8
    push str_34
.blockend_4: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 6
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_5: ; if
    jz .blockend_5
    add rsp, 8
    push str_35
.blockend_5: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 2
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_6: ; if
    jz .blockend_6
    add rsp, 8
    push str_36
.blockend_6: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 10
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_7: ; if
    jz .blockend_7
    add rsp, 8
    push str_37
.blockend_7: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 46
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_8: ; if
    jz .blockend_8
    add rsp, 8
    push str_38
.blockend_8: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 47
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_9: ; if
    jz .blockend_9
    add rsp, 8
    push str_39
.blockend_9: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 48
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_10: ; if
    jz .blockend_10
    add rsp, 8
    push str_40
.blockend_10: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 7
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_11: ; if
    jz .blockend_11
    add rsp, 8
    push str_41
.blockend_11: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 50
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_12: ; if
    jz .blockend_12
    add rsp, 8
    push str_42
.blockend_12: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 51
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_13: ; if
    jz .blockend_13
    add rsp, 8
    push str_43
.blockend_13: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 52
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_14: ; if
    jz .blockend_14
    add rsp, 8
    push str_44
.blockend_14: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 29
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_15: ; if
    jz .blockend_15
    add rsp, 8
    push str_45
.blockend_15: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 30
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_16: ; if
    jz .blockend_16
    add rsp, 8
    push str_46
.blockend_16: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 31
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_17: ; if
    jz .blockend_17
    add rsp, 8
    push str_47
.blockend_17: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 32
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_18: ; if
    jz .blockend_18
    add rsp, 8
    push str_48
.blockend_18: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 33
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_19: ; if
    jz .blockend_19
    add rsp, 8
    push str_49
.blockend_19: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 34
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_20: ; if
    jz .blockend_20
    add rsp, 8
    push str_50
.blockend_20: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 8
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_21: ; if
    jz .blockend_21
    add rsp, 8
    push str_51
.blockend_21: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 35
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_22: ; if
    jz .blockend_22
    add rsp, 8
    push str_52
.blockend_22: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 37
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_23: ; if
    jz .blockend_23
    add rsp, 8
    push str_53
.blockend_23: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 36
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_24: ; if
    jz .blockend_24
    add rsp, 8
    push str_54
.blockend_24: ; if
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
.blockstart_25: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_25
    jmp proc_cstr_print
.blockend_25: ; call
    push str_55
.blockstart_26: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_26
    jmp proc_cstr_print
.blockend_26: ; call
    pop rax
    push rax
    push rax
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_27: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_27
    jmp proc_filepos_print
.blockend_27: ; call
    push str_56
.blockstart_28: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_28
    jmp proc_cstr_print
.blockend_28: ; call
    pop rax
    push rax
    push rax
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_29: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_29
    jmp proc_filepos_print
.blockend_29: ; call
    push str_57
.blockstart_30: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_30
    jmp proc_cstr_print
.blockend_30: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_sysc:
class_fm:
class_time:
class_statresult:
class_os:
proc_os_fork:
    push qword 57
    pop rax
    syscall
    push rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_os_chkdeverr:
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rax
    xor rax, 1
    push rax
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
    push str_58
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_println
.blockend_1: ; call
    push qword -1
    mov rax, 60
    pop rdi
    syscall
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_os_fexists:
    push mem+314
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 4
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rax
    xor rax, 1
    push rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_os_execcmd:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_os_fork
.blockend_0: ; call
    pop rax
    push rax
    push rax
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
.blockstart_1: ; if
    jz .blockend_1
    push qword 1
    push qword 0
    push qword 0
    push str_59
    push qword -100
    push qword 257
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    syscall
    push rax
    pop rax
    push rax
    push rax
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_os_chkdeverr
.blockend_2: ; call
    push qword 33
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_os_chkdeverr
.blockend_3: ; call
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    mov rax, [args_ptr]
    mov rax, [rax]
    add rax, 2
    shl rax, 3
    mov rbx, [args_ptr]
    add rbx, rax
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 59
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.blockend_1: ; if
    pop rax
    push rax
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_4: ; if
    jz .blockend_4
    push qword 0
    push qword 0
    push mem+306
    push qword -1
    push qword 61
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    syscall
    push rax
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_os_chkdeverr
.blockend_5: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_4: ; if
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_6: ; if
    jz .blockend_6
    push str_60
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_cstr_println
.blockend_7: ; call
.blockend_6: ; if
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_os_execcmdloud:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_os_fork
.blockend_0: ; call
    pop rax
    push rax
    push rax
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
.blockstart_1: ; if
    jz .blockend_1
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    mov rax, [args_ptr]
    mov rax, [rax]
    add rax, 2
    shl rax, 3
    mov rbx, [args_ptr]
    add rbx, rax
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 59
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.blockend_1: ; if
    pop rax
    push rax
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    push qword 0
    push qword 0
    push mem+306
    push qword -1
    push qword 61
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    syscall
    push rax
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_os_chkdeverr
.blockend_3: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_4: ; if
    jz .blockend_4
    push str_61
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_cstr_println
.blockend_5: ; call
.blockend_4: ; if
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_os_execcmdecho:
    push qword 0
    push qword 1
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_log_level
.blockend_0: ; call
    push str_62
    push str_63
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_log_msg
.blockend_1: ; call
    pop rax
    push rax
    push rax
.blockstart_2: ; do
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_log_cat
.blockend_3: ; call
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rbx
    test rbx, rbx
.blockstart_4: ; if
    jz .blockend_4
    push str_64
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_log_cat
.blockend_5: ; call
.blockend_4: ; if
    pop rax
    push rax
    push rax
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
    jnz .blockstart_2
.blockend_2: ; do
    add rsp, 8
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_log_log
.blockend_6: ; call
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_os_execcmd
.blockend_7: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_os_execcmdecholoud:
    push qword 0
    push qword 1
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_log_level
.blockend_0: ; call
    push str_65
    push str_66
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_log_msg
.blockend_1: ; call
    pop rax
    push rax
    push rax
.blockstart_2: ; do
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_log_cat
.blockend_3: ; call
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rbx
    test rbx, rbx
.blockstart_4: ; if
    jz .blockend_4
    push str_67
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_log_cat
.blockend_5: ; call
.blockend_4: ; if
    pop rax
    push rax
    push rax
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
    jnz .blockstart_2
.blockend_2: ; do
    add rsp, 8
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_log_log
.blockend_6: ; call
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_os_execcmdloud
.blockend_7: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_os_args:
    pop rax
    push rax
    push rax
    mov rax, [args_ptr]
    mov rax, [rax]
    push rax
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    pop rax
    push rax
    push rax
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_int_print
.blockend_1: ; call
    push str_68
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_int_print
.blockend_2: ; call
    add rsp, 8
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.blockend_0: ; if
    push qword 8
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    mov rax, [args_ptr]
    add rax, 8
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_os_env:
    push mem+458
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [args_ptr]
    mov rax, [rax]
    add rax, 2
    shl rax, 3
    mov rbx, [args_ptr]
    add rbx, rax
    push rbx
.blockstart_0: ; do
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 61'
    push mem+466
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_split
.blockend_1: ; call
    push mem+458
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_eq
.blockend_2: ; call
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
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
.blockend_3: ; if
    add rsp, 8
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
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
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_os_open:
    push qword 257
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    syscall
    push rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_os_write:
    push qword 1
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    push str_69
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_println
.blockend_1: ; call
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.blockend_0: ; if
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_os_readf:
    push qword 0
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
    pop rax
    push rax
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    push str_70
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_println
.blockend_1: ; call
    add rsp, 8
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.blockend_0: ; if
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_os_close:
    push qword 3
    pop rax
    pop rdi
    syscall
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    push str_71
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_println
.blockend_1: ; call
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.blockend_0: ; if
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_os_cwd:
    push mem+530
    push qword 255
    push qword 79
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
    add rsp, 8
    push mem+530
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_filestream:
proc_filestream_free:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_free
.blockend_0: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_filestream_new:
    push mem+786
    push qword 2048
    push qword 2
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 8
    push qword 2
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_zalloc
.blockend_0: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 0
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 0
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 47'
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    add rsp, 8
    push qword -100
.blockend_1: ; if
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_os_open
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
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    add rsp, 8
    push mem+786
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_heap_free
.blockend_4: ; call
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    push mem+786
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
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
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 2048
    push qword 2
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+786
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 17
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+786
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_os_readf
.blockend_5: ; call
    add rsp, 8
    push mem+786
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_filestream_readchar:
    push mem+786
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+786
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 2048
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    push mem+786
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 17
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+786
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 2065
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 2048
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_mem_cpy
.blockend_1: ; call
    push mem+786
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 2065
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 2048
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_mem_zero
.blockend_2: ; call
    push qword 2048
    push mem+786
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 2065
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+786
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_os_readf
.blockend_3: ; call
    add rsp, 8
    push mem+786
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 2048
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockend_0: ; if
    push mem+786
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 17
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push mem+786
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
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
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_dirent:
proc_dirent_getreclen:
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 65535
    pop rax
    pop rbx
    and rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_path:
proc_path_new:
    push mem+794
    push qword 8
    push qword 2
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push qword 274
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_alloc
.blockend_0: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+794
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    push qword 65536
    push mem+794
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword -100
    push qword 257
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    syscall
    push rax
    push mem+794
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+794
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_path_iter:
    push mem+794
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 32
    push mem+794
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+794
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 78
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
    push qword 1
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    push mem+794
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_heap_free
.blockend_1: ; call
    push qword 0
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
    push mem+794
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+794
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_seq:
proc_seq_new:
    pop rax
    push rax
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_zalloc
.blockend_0: ; call
    push mem+802
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+810
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+810
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 24
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_seq_setlen:
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+802
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_seq_len:
    pop rax
    push rax
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_seq_pushint:
    push mem+810
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+802
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    push str_72
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_println
.blockend_1: ; call
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.blockend_0: ; if
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 24
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+810
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
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
    mov qword [rax], rbx
    push rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_seq_pushptr:
    push mem+810
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+802
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    push str_73
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_println
.blockend_1: ; call
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.blockend_0: ; if
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 24
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+810
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_mem_cpy
.blockend_2: ; call
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
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
    mov qword [rax], rbx
    push rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_seq_extend:
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+802
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_seq_getaddr:
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+802
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 24
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_seq_print:
    push mem+802
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push str_74
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_print
.blockend_0: ; call
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 24
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_print
.blockend_1: ; call
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
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
    push str_75
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_println
.blockend_3: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push qword 0
.blockstart_4: ; do
    push str_76
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_cstr_print
.blockend_5: ; call
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 24
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_cstr_print
.blockend_6: ; call
    pop rax
    push rax
    push rax
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
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
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_4
.blockend_4: ; do
    add rsp, 8
    push str_77
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_cstr_println
.blockend_7: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_seq_popaddr:
    push mem+802
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 24
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+810
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+810
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_seq_pop:
    push mem+802
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 24
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push mem+810
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_mem_cpy
.blockend_0: ; call
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_mem_zero
.blockend_1: ; call
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+802
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+810
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_seq_free:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_free
.blockend_0: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_llentry:
proc_llentry_new:
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_zalloc
.blockend_0: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_llentry_free:
    pop rax
    push rax
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
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
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    pop rax
    push rax
    push rax
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_llentry_free
.blockend_1: ; call
.blockend_0: ; if
    add rsp, 8
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_heap_free
.blockend_2: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_llentry_last:
    pop rax
    push rax
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
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
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_llentry_last
.blockend_1: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_llentry_pop:
    pop rax
    push rax
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
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
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_llentry_pop
.blockend_1: ; call
    pop rax
    push rax
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
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
.blockstart_2: ; if
    jz .blockend_2
    pop rax
    push rax
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockend_2: ; if
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_llentry_ptrat:
    pop rax
    push rax
    push rax
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
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
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
    push rbx
    push rax
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_llentry_ptrat
.blockend_1: ; call
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
proc_llentry_append:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_llist:
proc_llist_new:
    push qword 16
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_zalloc
.blockend_0: ; call
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
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
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
proc_llist_free:
    pop rax
    push rax
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
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
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    pop rax
    push rax
    push rax
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_llentry_free
.blockend_1: ; call
.blockend_0: ; if
    add rsp, 8
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_heap_free
.blockend_2: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_llist_last:
    pop rax
    push rax
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
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
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_llentry_last
.blockend_1: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_llist_pop:
    pop rax
    push rax
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
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
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_llentry_pop
.blockend_1: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_llist_len:
    pop rax
    push rax
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
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
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_1: ; do
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
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
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
proc_llist_foreach:
    push mem+850
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
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
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
.blockstart_1: ; do
    pop rax
    push rax
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+850
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    pop rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp qword rbx
.blockend_2: ; call
    add rsp, 8
    push 0
    add rsp, 8
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
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
proc_llist_ptrat:
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+842
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
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
    push mem+842
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
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
    push mem+842
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_llentry_ptrat
.blockend_1: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_llist_append:
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+842
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+842
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_llist_last
.blockend_0: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
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
.blockstart_1: ; if
    jz .blockend_1
    push mem+842
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_llentry_new
.blockend_2: ; call
    push mem+842
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+842
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_mem_cpy
.blockend_3: ; call
    push mem+842
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_1: ; if
    push mem+842
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_llentry_new
.blockend_4: ; call
    push mem+842
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_llist_last
.blockend_5: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_llentry_append
.blockend_6: ; call
    add rsp, 8
    push mem+842
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_llist_last
.blockend_7: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+842
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_mem_cpy
.blockend_8: ; call
    push mem+842
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_dlist:
proc_dlist_new:
    push mem+858
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 8
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push qword 24
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_zalloc
.blockend_0: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 8
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_dlist_free:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_free
.blockend_0: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_dlist_len:
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_dlist_ptrat:
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+858
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rax
    xor rax, 1
    push rax
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
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 24
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_dlist_pop:
    push mem+858
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_dlist_ptrat
.blockend_1: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_dlist_last:
    push mem+858
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_dlist_ptrat
.blockend_0: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_dlist_append:
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+858
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 24
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_heap_realloc
.blockend_1: ; call
    push mem+858
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockend_0: ; if
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 24
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_mem_cpy
.blockend_2: ; call
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
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
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+858
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_str:
proc_str_new:
    push qword 64
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_zalloc
.blockend_0: ; call
    pop rax
    push rax
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 64
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_str_print:
    push mem+866
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
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
proc_str_println:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_str_print
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
proc_str_len:
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_str_endaddr:
    push mem+866
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_str_len
.blockend_0: ; call
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_str_cat:
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+866
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_str_len
.blockend_0: ; call
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_str_len
.blockend_1: ; call
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    pop rax
    push rax
    push rax
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_str_len
.blockend_3: ; call
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_str_len
.blockend_4: ; call
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 64
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_heap_realloc
.blockend_5: ; call
    push mem+866
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockend_2: ; if
    pop rax
    push rax
    push rax
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_str_endaddr
.blockend_6: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    push rax
    push rax
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_heap_free
.blockend_7: ; call
    pop rax
    push rax
    push rax
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_str_len
.blockend_8: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_mem_cpy
.blockend_9: ; call
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_str_len
.blockend_10: ; call
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_str_len
.blockend_11: ; call
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_str_catc:
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+866
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
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
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_str_len
.blockend_1: ; call
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    pop rax
    push rax
    push rax
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_len
.blockend_3: ; call
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_str_len
.blockend_4: ; call
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 64
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_heap_realloc
.blockend_5: ; call
    push mem+866
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockend_2: ; if
    pop rax
    push rax
    push rax
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_str_endaddr
.blockend_6: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    push rax
    push rax
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_cstr_len
.blockend_7: ; call
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_mem_cpy
.blockend_8: ; call
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_cstr_len
.blockend_9: ; call
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_str_len
.blockend_10: ; call
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_str_sput:
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+874
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+866
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+874
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+874
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 64
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_heap_realloc
.blockend_1: ; call
    push mem+866
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockend_0: ; if
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+874
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_mem_cpy
.blockend_2: ; call
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+874
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+866
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_str_eq:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_str_len
.blockend_0: ; call
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_len
.blockend_1: ; call
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    add rsp, 8
    add rsp, 8
    push qword 0
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
    push qword 16
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
    push rax
    push rax
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_len
.blockend_3: ; call
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_mem_eq
.blockend_4: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
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
proc_str_seq:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_str_len
.blockend_0: ; call
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_str_len
.blockend_1: ; call
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    add rsp, 8
    add rsp, 8
    push qword 0
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
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_str_len
.blockend_3: ; call
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_mem_eq
.blockend_4: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
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
proc_str_free:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_free
.blockend_0: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_lexer:
proc_lexer_new:
    push str_78
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_print
.blockend_0: ; call
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_println
.blockend_1: ; call
    push mem+906
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_str_new
.blockend_2: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push str_79
    push qword 2
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_mem_eq
.blockend_3: ; call
    pop rax
    xor rax, 1
    push rax
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rbx
    test rbx, rbx
.blockstart_4: ; if
    jz .blockend_4
    push mem+906
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push str_80
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_os_env
.blockend_5: ; call
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_str_catc
.blockend_6: ; call
    push str_81
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_str_catc
.blockend_7: ; call
    push mem+906
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockend_4: ; if
    pop rax
    push rax
    push rax
    push str_82
    push qword 2
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_mem_eq
.blockend_8: ; call
    pop rbx
    test rbx, rbx
.blockstart_9: ; if
    jz .blockend_9
    push mem+906
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push str_83
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_os_env
.blockend_10: ; call
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_str_catc
.blockend_11: ; call
    push mem+906
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockend_9: ; if
    push mem+906
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_str_catc
.blockend_12: ; call
    push mem+906
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+890
    push qword 32
    push qword 2
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push qword 8
    push qword 4
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 80
    push qword 1
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_heap_zalloc
.blockend_13: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+906
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_filestream_new
.blockend_14: ; call
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+906
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_str_new
.blockend_15: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_lexer_advance:
    push mem+890
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 80
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_filepos_advance
.blockend_0: ; call
    add rsp, 8
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 80
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 80
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_filestream_readchar
.blockend_1: ; call
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_lexer_free:
    pop rax
    push rax
    push rax
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_str_free
.blockend_0: ; call
    pop rax
    push rax
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_filestream_free
.blockend_1: ; call
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_heap_free
.blockend_2: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_lexer_badword:
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 80
    pop rax
    pop rbx
    add rax, rbx
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 39'
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
    push qword 34'
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
    push qword 96'
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
    push qword 40'
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
    push qword 123
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
    push rax
    push rbx
    add rsp, 8
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_1: ; if
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 2
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 39'
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 2
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 39'
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
.blockstart_3: ; if
    jz .blockend_3
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 34'
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 2
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 34'
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
.blockstart_4: ; if
    jz .blockend_4
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_4: ; if
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 96'
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 2
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 96'
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
.blockstart_5: ; if
    jz .blockend_5
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_5: ; if
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 40'
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 2
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 41'
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
.blockstart_6: ; if
    jz .blockend_6
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_6: ; if
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 123
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 2
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 125
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
.blockstart_7: ; if
    jz .blockend_7
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_7: ; if
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_lexer_gettoken:
    pop rax
    push rax
    push rax
    push str_84
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_str_eq
.blockend_0: ; call
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 17
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_1: ; if
    pop rax
    push rax
    push rax
    push str_85
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_str_eq
.blockend_2: ; call
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 22
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    pop rax
    push rax
    push rax
    push str_86
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_str_eq
.blockend_4: ; call
    pop rbx
    test rbx, rbx
.blockstart_5: ; if
    jz .blockend_5
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 23
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_5: ; if
    pop rax
    push rax
    push rax
    push str_87
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_str_eq
.blockend_6: ; call
    pop rbx
    test rbx, rbx
.blockstart_7: ; if
    jz .blockend_7
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 21
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_7: ; if
    pop rax
    push rax
    push rax
    push str_88
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_str_eq
.blockend_8: ; call
    pop rbx
    test rbx, rbx
.blockstart_9: ; if
    jz .blockend_9
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 20
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_9: ; if
    pop rax
    push rax
    push rax
    push str_89
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_str_eq
.blockend_10: ; call
    pop rbx
    test rbx, rbx
.blockstart_11: ; if
    jz .blockend_11
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 19
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_11: ; if
    pop rax
    push rax
    push rax
    push str_90
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_str_eq
.blockend_12: ; call
    pop rbx
    test rbx, rbx
.blockstart_13: ; if
    jz .blockend_13
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 18
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_13: ; if
    pop rax
    push rax
    push rax
    push str_91
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_str_eq
.blockend_14: ; call
    pop rbx
    test rbx, rbx
.blockstart_15: ; if
    jz .blockend_15
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 1
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_15: ; if
    pop rax
    push rax
    push rax
    push str_92
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_str_eq
.blockend_16: ; call
    pop rbx
    test rbx, rbx
.blockstart_17: ; if
    jz .blockend_17
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 10
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_17: ; if
    pop rax
    push rax
    push rax
    push str_93
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_str_eq
.blockend_18: ; call
    pop rbx
    test rbx, rbx
.blockstart_19: ; if
    jz .blockend_19
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 2
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_19: ; if
    pop rax
    push rax
    push rax
    push str_94
.blockstart_20: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_20
    jmp proc_str_eq
.blockend_20: ; call
    pop rbx
    test rbx, rbx
.blockstart_21: ; if
    jz .blockend_21
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 3
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_21: ; if
    pop rax
    push rax
    push rax
    push str_95
.blockstart_22: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_22
    jmp proc_str_eq
.blockend_22: ; call
    pop rbx
    test rbx, rbx
.blockstart_23: ; if
    jz .blockend_23
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_23: ; if
    pop rax
    push rax
    push rax
    push str_96
.blockstart_24: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_24
    jmp proc_str_eq
.blockend_24: ; call
    pop rbx
    test rbx, rbx
.blockstart_25: ; if
    jz .blockend_25
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 9
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_25: ; if
    pop rax
    push rax
    push rax
    push str_97
.blockstart_26: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_26
    jmp proc_str_eq
.blockend_26: ; call
    pop rbx
    test rbx, rbx
.blockstart_27: ; if
    jz .blockend_27
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 36
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_27: ; if
    pop rax
    push rax
    push rax
    push str_98
.blockstart_28: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_28
    jmp proc_str_eq
.blockend_28: ; call
    pop rbx
    test rbx, rbx
.blockstart_29: ; if
    jz .blockend_29
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 5
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_29: ; if
    pop rax
    push rax
    push rax
    push str_99
.blockstart_30: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_30
    jmp proc_str_eq
.blockend_30: ; call
    pop rbx
    test rbx, rbx
.blockstart_31: ; if
    jz .blockend_31
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 4
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_31: ; if
    pop rax
    push rax
    push rax
    push str_100
.blockstart_32: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_32
    jmp proc_str_eq
.blockend_32: ; call
    pop rbx
    test rbx, rbx
.blockstart_33: ; if
    jz .blockend_33
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 46
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_33: ; if
    pop rax
    push rax
    push rax
    push str_101
.blockstart_34: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_34
    jmp proc_str_eq
.blockend_34: ; call
    pop rbx
    test rbx, rbx
.blockstart_35: ; if
    jz .blockend_35
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 16
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_35: ; if
    pop rax
    push rax
    push rax
    push str_102
.blockstart_36: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_36
    jmp proc_str_eq
.blockend_36: ; call
    pop rbx
    test rbx, rbx
.blockstart_37: ; if
    jz .blockend_37
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 6
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_37: ; if
    pop rax
    push rax
    push rax
    push str_103
.blockstart_38: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_38
    jmp proc_str_eq
.blockend_38: ; call
    pop rbx
    test rbx, rbx
.blockstart_39: ; if
    jz .blockend_39
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 29
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_39: ; if
    pop rax
    push rax
    push rax
    push str_104
.blockstart_40: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_40
    jmp proc_str_eq
.blockend_40: ; call
    pop rbx
    test rbx, rbx
.blockstart_41: ; if
    jz .blockend_41
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 30
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_41: ; if
    pop rax
    push rax
    push rax
    push str_105
.blockstart_42: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_42
    jmp proc_str_eq
.blockend_42: ; call
    pop rbx
    test rbx, rbx
.blockstart_43: ; if
    jz .blockend_43
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 31
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_43: ; if
    pop rax
    push rax
    push rax
    push str_106
.blockstart_44: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_44
    jmp proc_str_eq
.blockend_44: ; call
    pop rbx
    test rbx, rbx
.blockstart_45: ; if
    jz .blockend_45
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 7
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_45: ; if
    pop rax
    push rax
    push rax
    push str_107
.blockstart_46: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_46
    jmp proc_str_eq
.blockend_46: ; call
    pop rbx
    test rbx, rbx
.blockstart_47: ; if
    jz .blockend_47
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 52
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_47: ; if
    pop rax
    push rax
    push rax
    push str_108
.blockstart_48: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_48
    jmp proc_str_eq
.blockend_48: ; call
    pop rbx
    test rbx, rbx
.blockstart_49: ; if
    jz .blockend_49
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 46
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_49: ; if
    pop rax
    push rax
    push rax
    push str_109
.blockstart_50: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_50
    jmp proc_str_eq
.blockend_50: ; call
    pop rbx
    test rbx, rbx
.blockstart_51: ; if
    jz .blockend_51
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 37
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_51: ; if
    pop rax
    push rax
    push rax
    push str_110
.blockstart_52: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_52
    jmp proc_str_eq
.blockend_52: ; call
    pop rbx
    test rbx, rbx
.blockstart_53: ; if
    jz .blockend_53
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 32
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_53: ; if
    pop rax
    push rax
    push rax
    push str_111
.blockstart_54: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_54
    jmp proc_str_eq
.blockend_54: ; call
    pop rbx
    test rbx, rbx
.blockstart_55: ; if
    jz .blockend_55
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 33
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_55: ; if
    pop rax
    push rax
    push rax
    push str_112
.blockstart_56: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_56
    jmp proc_str_eq
.blockend_56: ; call
    pop rbx
    test rbx, rbx
.blockstart_57: ; if
    jz .blockend_57
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 34
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_57: ; if
    pop rax
    push rax
    push rax
    push str_113
.blockstart_58: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_58
    jmp proc_str_eq
.blockend_58: ; call
    pop rbx
    test rbx, rbx
.blockstart_59: ; if
    jz .blockend_59
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 40
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_59: ; if
    pop rax
    push rax
    push rax
    push str_114
.blockstart_60: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_60
    jmp proc_str_eq
.blockend_60: ; call
    pop rbx
    test rbx, rbx
.blockstart_61: ; if
    jz .blockend_61
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 35
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_61: ; if
    pop rax
    push rax
    push rax
    push str_115
.blockstart_62: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_62
    jmp proc_str_eq
.blockend_62: ; call
    pop rbx
    test rbx, rbx
.blockstart_63: ; if
    jz .blockend_63
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 42
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_63: ; if
    pop rax
    push rax
    push rax
    push str_116
.blockstart_64: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_64
    jmp proc_str_eq
.blockend_64: ; call
    pop rbx
    test rbx, rbx
.blockstart_65: ; if
    jz .blockend_65
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 43
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_65: ; if
    pop rax
    push rax
    push rax
    push str_117
.blockstart_66: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_66
    jmp proc_str_eq
.blockend_66: ; call
    pop rbx
    test rbx, rbx
.blockstart_67: ; if
    jz .blockend_67
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 45
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_67: ; if
    pop rax
    push rax
    push rax
    push str_118
.blockstart_68: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_68
    jmp proc_str_eq
.blockend_68: ; call
    pop rbx
    test rbx, rbx
.blockstart_69: ; if
    jz .blockend_69
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 44
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_69: ; if
    pop rax
    push rax
    push rax
    push str_119
.blockstart_70: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_70
    jmp proc_str_eq
.blockend_70: ; call
    pop rbx
    test rbx, rbx
.blockstart_71: ; if
    jz .blockend_71
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 38
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_71: ; if
    pop rax
    push rax
    push rax
    push str_120
.blockstart_72: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_72
    jmp proc_str_eq
.blockend_72: ; call
    pop rbx
    test rbx, rbx
.blockstart_73: ; if
    jz .blockend_73
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 39
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_73: ; if
    pop rax
    push rax
    push rax
    push str_121
.blockstart_74: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_74
    jmp proc_str_eq
.blockend_74: ; call
    pop rbx
    test rbx, rbx
.blockstart_75: ; if
    jz .blockend_75
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 41
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_75: ; if
    pop rax
    push rax
    push rax
    push str_122
.blockstart_76: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_76
    jmp proc_str_eq
.blockend_76: ; call
    pop rbx
    test rbx, rbx
.blockstart_77: ; if
    jz .blockend_77
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 15
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_77: ; if
    pop rax
    push rax
    push rax
    push str_123
.blockstart_78: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_78
    jmp proc_str_eq
.blockend_78: ; call
    pop rbx
    test rbx, rbx
.blockstart_79: ; if
    jz .blockend_79
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 11
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_79: ; if
    pop rax
    push rax
    push rax
    push str_124
.blockstart_80: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_80
    jmp proc_str_eq
.blockend_80: ; call
    pop rbx
    test rbx, rbx
.blockstart_81: ; if
    jz .blockend_81
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 12
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_81: ; if
    pop rax
    push rax
    push rax
    push str_125
.blockstart_82: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_82
    jmp proc_str_eq
.blockend_82: ; call
    pop rbx
    test rbx, rbx
.blockstart_83: ; if
    jz .blockend_83
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 14
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_83: ; if
    pop rax
    push rax
    push rax
    push str_126
.blockstart_84: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_84
    jmp proc_str_eq
.blockend_84: ; call
    pop rbx
    test rbx, rbx
.blockstart_85: ; if
    jz .blockend_85
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 24
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_85: ; if
    pop rax
    push rax
    push rax
    push str_127
.blockstart_86: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_86
    jmp proc_str_eq
.blockend_86: ; call
    pop rbx
    test rbx, rbx
.blockstart_87: ; if
    jz .blockend_87
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 25
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_87: ; if
    pop rax
    push rax
    push rax
    push str_128
.blockstart_88: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_88
    jmp proc_str_eq
.blockend_88: ; call
    pop rbx
    test rbx, rbx
.blockstart_89: ; if
    jz .blockend_89
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 26
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_89: ; if
    pop rax
    push rax
    push rax
    push str_129
.blockstart_90: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_90
    jmp proc_str_eq
.blockend_90: ; call
    pop rbx
    test rbx, rbx
.blockstart_91: ; if
    jz .blockend_91
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 27
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_91: ; if
    pop rax
    push rax
    push rax
    push str_130
.blockstart_92: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_92
    jmp proc_str_eq
.blockend_92: ; call
    pop rbx
    test rbx, rbx
.blockstart_93: ; if
    jz .blockend_93
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 28
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_93: ; if
    pop rax
    push rax
    push rax
    push str_131
.blockstart_94: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_94
    jmp proc_str_eq
.blockend_94: ; call
    pop rbx
    test rbx, rbx
.blockstart_95: ; if
    jz .blockend_95
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 55
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_95: ; if
    pop rax
    push rax
    push rax
    push str_132
.blockstart_96: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_96
    jmp proc_str_eq
.blockend_96: ; call
    pop rbx
    test rbx, rbx
.blockstart_97: ; if
    jz .blockend_97
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 54
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_97: ; if
    pop rax
    push rax
    push rax
    push str_133
.blockstart_98: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_98
    jmp proc_str_eq
.blockend_98: ; call
    pop rbx
    test rbx, rbx
.blockstart_99: ; if
    jz .blockend_99
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 53
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_99: ; if
    pop rax
    push rax
    push rax
    push str_134
.blockstart_100: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_100
    jmp proc_str_eq
.blockend_100: ; call
    pop rbx
    test rbx, rbx
.blockstart_101: ; if
    jz .blockend_101
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 56
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_101: ; if
    pop rax
    push rax
    push rax
    push str_135
.blockstart_102: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_102
    jmp proc_str_eq
.blockend_102: ; call
    pop rbx
    test rbx, rbx
.blockstart_103: ; if
    jz .blockend_103
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 57
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_103: ; if
    pop rax
    push rax
    push rax
    push str_136
.blockstart_104: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_104
    jmp proc_str_eq
.blockend_104: ; call
    pop rbx
    test rbx, rbx
.blockstart_105: ; if
    jz .blockend_105
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 58
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_105: ; if
    pop rax
    push rax
    push rax
    push str_137
.blockstart_106: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_106
    jmp proc_str_eq
.blockend_106: ; call
    pop rbx
    test rbx, rbx
.blockstart_107: ; if
    jz .blockend_107
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 59
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_107: ; if
    pop rax
    push rax
    push rax
    push str_138
.blockstart_108: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_108
    jmp proc_str_eq
.blockend_108: ; call
    pop rbx
    test rbx, rbx
.blockstart_109: ; if
    jz .blockend_109
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 60
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_109: ; if
    pop rax
    push rax
    push rax
    push str_139
.blockstart_110: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_110
    jmp proc_str_eq
.blockend_110: ; call
    pop rbx
    test rbx, rbx
.blockstart_111: ; if
    jz .blockend_111
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 61
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_111: ; if
    pop rax
    push rax
    push rax
    push str_140
.blockstart_112: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_112
    jmp proc_str_eq
.blockend_112: ; call
    pop rbx
    test rbx, rbx
.blockstart_113: ; if
    jz .blockend_113
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 62
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_113: ; if
    pop rax
    push rax
    push rax
    push str_141
.blockstart_114: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_114
    jmp proc_str_eq
.blockend_114: ; call
    pop rbx
    test rbx, rbx
.blockstart_115: ; if
    jz .blockend_115
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 13
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_115: ; if
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
.blockstart_116: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_116
    jmp proc_cstr_isnum
.blockend_116: ; call
    pop rbx
    test rbx, rbx
.blockstart_117: ; if
    jz .blockend_117
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 47
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_117: ; if
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 123
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_118: ; if
    jz .blockend_118
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 52
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_118: ; if
    pop rax
    push rax
    push rax
    push qword 34'
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_119: ; if
    jz .blockend_119
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 48
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_120: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_120
    jmp proc_str_sput
.blockend_120: ; call
    pop rax
    push rax
    push rax
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
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
.blockend_119: ; if
    pop rax
    push rax
    push rax
    push qword 96'
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_121: ; if
    jz .blockend_121
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 49
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_122: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_122
    jmp proc_str_sput
.blockend_122: ; call
    pop rax
    push rax
    push rax
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
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
.blockend_121: ; if
    pop rax
    push rax
    push rax
    push qword 39'
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_123: ; if
    jz .blockend_123
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 47
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
.blockstart_124: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_124
    jmp proc_int_cstr
.blockend_124: ; call
    pop rax
    push rax
    push rax
.blockstart_125: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_125
    jmp proc_cstr_len
.blockend_125: ; call
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_126: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_126
    jmp proc_str_sput
.blockend_126: ; call
    add rsp, 8
.blockend_123: ; if
    pop rax
    push rax
    push rax
    push qword 40'
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_127: ; if
    jz .blockend_127
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 51
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_128: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_128
    jmp proc_str_sput
.blockend_128: ; call
    pop rax
    push rax
    push rax
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
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
.blockend_127: ; if
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_lexer_run:
    push mem+890
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+898
    push qword 80
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_dlist_new
.blockend_0: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockstart_1: ; do
.blockstart_2: ; do
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_lexer_advance
.blockend_3: ; call
    push qword 80
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 1
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_str_sput
.blockend_4: ; call
    add rsp, 8
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 80
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 9
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
    push qword 10
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
    push qword 13
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
    push qword 32
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
    push rax
    push rbx
    add rsp, 8
    pop rbx
    test rbx, rbx
    jnz .blockstart_2
.blockend_2: ; do
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 32
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_mem_cpy
.blockend_5: ; call
.blockstart_6: ; do
.blockstart_7: ; do
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_lexer_advance
.blockend_8: ; call
    push qword 80
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_str_catc
.blockend_9: ; call
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 80
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 9
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
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 10
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
    push qword 13
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
    push qword 32
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
    xor rax, 1
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    test rbx, rbx
    jnz .blockstart_7
.blockend_7: ; do
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_lexer_badword
.blockend_10: ; call
    pop rbx
    test rbx, rbx
    jnz .blockstart_6
.blockend_6: ; do
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 50
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_str_new
.blockend_11: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_str_sput
.blockend_12: ; call
    add rsp, 8
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
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
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 32
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_mem_cpy
.blockend_13: ; call
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 32
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_mem_cpy
.blockend_14: ; call
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_lexer_gettoken
.blockend_15: ; call
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
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
.blockstart_16: ; if
    jz .blockend_16
    push mem+898
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 96
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_dlist_append
.blockend_17: ; call
    push mem+898
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockend_16: ; if
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 80
    pop rax
    pop rbx
    add rax, rbx
    push rax
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
    push mem+890
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_lexer_free
.blockend_18: ; call
    push mem+898
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_nodedata:
proc_nodedata_free:
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_calldata:
proc_calldata_free:  jmp proc_nodedata_free
proc_calldata_new:
    push mem+914
    push qword 8
    push qword 2
    pop rax
    pop rbx
    imul rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_alloc
.blockend_0: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 7
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_calldata_print:
    push str_142
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_print
.blockend_0: ; call
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_str_print
.blockend_1: ; call
    push str_143
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_print
.blockend_2: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_asmdata:
proc_asmdata_free:  jmp proc_nodedata_free
proc_asmdata_new:
    push mem+914
    push qword 8
    push qword 2
    pop rax
    pop rbx
    imul rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_alloc
.blockend_0: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 3
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_asmdata_print:
    push str_144
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_print
.blockend_0: ; call
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_str_print
.blockend_1: ; call
    push str_145
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_print
.blockend_2: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_incdata:
proc_incdata_free:  jmp proc_nodedata_free
proc_incdata_new:
    push mem+914
    push qword 8
    push qword 2
    pop rax
    pop rbx
    imul rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_alloc
.blockend_0: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 2
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_incdata_print:
    push str_146
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_print
.blockend_0: ; call
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_str_print
.blockend_1: ; call
    push str_147
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_print
.blockend_2: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_ofdata:
proc_ofdata_free:  jmp proc_nodedata_free
proc_ofdata_new:
    push mem+914
    push qword 8
    push qword 2
    pop rax
    pop rbx
    imul rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_alloc
.blockend_0: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 4
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_ofdata_print:
    push str_148
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_print
.blockend_0: ; call
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_str_print
.blockend_1: ; call
    push str_149
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_print
.blockend_2: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_casedata:
proc_casedata_free:  jmp proc_nodedata_free
proc_casedata_new:
    push mem+914
    push qword 8
    push qword 2
    pop rax
    pop rbx
    imul rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_alloc
.blockend_0: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 13
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_casedata_print:
    push str_150
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_print
.blockend_0: ; call
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_str_print
.blockend_1: ; call
    push str_151
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_print
.blockend_2: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_commentdata:
proc_commentdata_free:  jmp proc_nodedata_free
proc_commentdata_new:
    push mem+914
    push qword 8
    push qword 1
    pop rax
    pop rbx
    imul rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_alloc
.blockend_0: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 12
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_intrdata:
proc_intrdata_free:  jmp proc_nodedata_free
proc_intrdata_new:
    push mem+914
    push qword 8
    push qword 2
    pop rax
    pop rbx
    imul rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_alloc
.blockend_0: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 6
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_intrdata_print:
    pop rax
    push rax
    push rax
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
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
    push mem+914
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_int_cstr
.blockend_1: ; call
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
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    add rsp, 8
    push str_152
.blockend_2: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 1
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
    add rsp, 8
    push str_153
.blockend_3: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 2
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
    add rsp, 8
    push str_154
.blockend_4: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 22
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_5: ; if
    jz .blockend_5
    add rsp, 8
    push str_155
.blockend_5: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 7
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_6: ; if
    jz .blockend_6
    add rsp, 8
    push str_156
.blockend_6: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 3
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_7: ; if
    jz .blockend_7
    add rsp, 8
    push str_157
.blockend_7: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 4
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_8: ; if
    jz .blockend_8
    add rsp, 8
    push str_158
.blockend_8: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 8
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_9: ; if
    jz .blockend_9
    add rsp, 8
    push str_159
.blockend_9: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 12
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_10: ; if
    jz .blockend_10
    add rsp, 8
    push str_160
.blockend_10: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 13
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_11: ; if
    jz .blockend_11
    add rsp, 8
    push str_161
.blockend_11: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 14
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_12: ; if
    jz .blockend_12
    add rsp, 8
    push str_162
.blockend_12: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 15
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_13: ; if
    jz .blockend_13
    add rsp, 8
    push str_163
.blockend_13: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 16
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_14: ; if
    jz .blockend_14
    add rsp, 8
    push str_164
.blockend_14: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 17
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_15: ; if
    jz .blockend_15
    add rsp, 8
    push str_165
.blockend_15: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 23
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_16: ; if
    jz .blockend_16
    add rsp, 8
    push str_166
.blockend_16: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 24
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_17: ; if
    jz .blockend_17
    add rsp, 8
    push str_167
.blockend_17: ; if
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_cstr_print
.blockend_18: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_vardata:
proc_vardata_free:  jmp proc_nodedata_free
proc_vardata_new:
    push mem+914
    push qword 8
    push qword 4
    pop rax
    pop rbx
    imul rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_alloc
.blockend_0: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 9
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 24
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_vardata_print:
    pop rax
    push rax
    push rax
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
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
    push mem+914
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push str_168
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
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    add rsp, 8
    push str_169
.blockend_1: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 3
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
    push str_170
.blockend_2: ; if
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_print
.blockend_3: ; call
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 24
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
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
    pop rbx
    test rbx, rbx
.blockstart_4: ; if
    jz .blockend_4
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_int_cstr
.blockend_5: ; call
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_cstr_print
.blockend_6: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_4: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 3
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_7: ; if
    jz .blockend_7
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_str_print
.blockend_8: ; call
    add rsp, 8
    push str_171
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_cstr_print
.blockend_9: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_7: ; if
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_defdata:
proc_defdata_free:  jmp proc_nodedata_free
proc_defdata_new:
    push mem+914
    push qword 8
    push qword 4
    pop rax
    pop rbx
    imul rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_alloc
.blockend_0: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 10
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 24
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_defdata_print:
    pop rax
    push rax
    push rax
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
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
    push mem+914
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push str_172
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
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    add rsp, 8
    push str_173
.blockend_1: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 3
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
    push str_174
.blockend_2: ; if
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_print
.blockend_3: ; call
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 24
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
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
    pop rbx
    test rbx, rbx
.blockstart_4: ; if
    jz .blockend_4
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_int_cstr
.blockend_5: ; call
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_cstr_print
.blockend_6: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_4: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 3
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_7: ; if
    jz .blockend_7
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_str_print
.blockend_8: ; call
    add rsp, 8
    push str_175
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_cstr_print
.blockend_9: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_7: ; if
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_propdata:
proc_propdata_free:  jmp proc_nodedata_free
proc_propdata_new:
    push mem+914
    push qword 8
    push qword 4
    pop rax
    pop rbx
    imul rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_alloc
.blockend_0: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 11
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 24
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_propdata_print:
    pop rax
    push rax
    push rax
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
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
    push mem+914
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push str_176
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
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    add rsp, 8
    push str_177
.blockend_1: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 3
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
    push str_178
.blockend_2: ; if
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_print
.blockend_3: ; call
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 24
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
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
    pop rbx
    test rbx, rbx
.blockstart_4: ; if
    jz .blockend_4
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_int_cstr
.blockend_5: ; call
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_cstr_print
.blockend_6: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_4: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 3
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_7: ; if
    jz .blockend_7
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_str_print
.blockend_8: ; call
    add rsp, 8
    push str_179
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_cstr_print
.blockend_9: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_7: ; if
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_constdata:
proc_constdata_free:  jmp proc_nodedata_free
proc_constdata_new:
    push mem+914
    push qword 8
    push qword 3
    pop rax
    pop rbx
    imul rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_alloc
.blockend_0: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_constdata_print:
    pop rax
    push rax
    push rax
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
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
    push mem+914
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push str_180
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
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    add rsp, 8
    push str_181
.blockend_1: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 1
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
    push str_182
.blockend_2: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 3
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
    add rsp, 8
    push str_183
.blockend_3: ; if
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_cstr_print
.blockend_4: ; call
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
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
    pop rbx
    test rbx, rbx
.blockstart_5: ; if
    jz .blockend_5
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_str_print
.blockend_6: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_5: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 1
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_7: ; if
    jz .blockend_7
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_str_print
.blockend_8: ; call
    add rsp, 8
    push str_184
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_cstr_print
.blockend_9: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_7: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 3
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_10: ; if
    jz .blockend_10
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_str_print
.blockend_11: ; call
    add rsp, 8
    push str_185
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_cstr_print
.blockend_12: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_10: ; if
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_filedata:
proc_filedata_free:  jmp proc_nodedata_free
proc_filedata_new:
    push mem+914
    push qword 8
    push qword 3
    pop rax
    pop rbx
    imul rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_alloc
.blockend_0: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 1
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_filedata_append:
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+914
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 8
    push qword 6
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_realloc
.blockend_0: ; call
    push mem+914
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 24
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
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
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_filedata_print:
    pop rax
    push rax
    push rax
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
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
    push mem+914
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+922
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push str_186
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_print
.blockend_1: ; call
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_print
.blockend_2: ; call
    push str_187
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_print
.blockend_3: ; call
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
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
.blockstart_4: ; if
    jz .blockend_4
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_4: ; if
    push qword 0
.blockstart_5: ; do
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 8
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 24
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+922
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_6: ; call
    pop rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp qword rbx
.blockend_6: ; call
    push mem+914
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_5
.blockend_5: ; do
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_blockdata:
proc_blockdata_free:  jmp proc_nodedata_free
proc_blockdata_new:
    push mem+914
    push qword 8
    push qword 7
    pop rax
    pop rbx
    imul rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_alloc
.blockend_0: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 5
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 40
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 32
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 24
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_blockdata_append:
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+914
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 8
    push qword 4
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_realloc
.blockend_0: ; call
    push mem+914
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 56
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
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
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_blockdata_print:
    pop rax
    push rax
    push rax
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
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
    push mem+914
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+922
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push str_188
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 8
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
    add rsp, 8
    push str_189
.blockend_1: ; if
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
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    add rsp, 8
    push str_190
.blockend_2: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 1
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
    add rsp, 8
    push str_191
.blockend_3: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 4
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
    add rsp, 8
    push str_192
.blockend_4: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 7
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_5: ; if
    jz .blockend_5
    add rsp, 8
    push str_193
.blockend_5: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 5
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_6: ; if
    jz .blockend_6
    add rsp, 8
    push str_194
.blockend_6: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 6
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_7: ; if
    jz .blockend_7
    add rsp, 8
    push str_195
.blockend_7: ; if
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_cstr_print
.blockend_8: ; call
    push str_196
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_cstr_print
.blockend_9: ; call
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
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
.blockstart_10: ; if
    jz .blockend_10
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_10: ; if
    push qword 0
.blockstart_11: ; do
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 8
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 56
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+922
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_12: ; call
    pop rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp qword rbx
.blockend_12: ; call
    push mem+914
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+914
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_11
.blockend_11: ; do
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_slmnode:
proc_slmnode_print:
    pop rax
    push rax
    push rax
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
    push str_197
    push str_198
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_log_msg
.blockend_1: ; call
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_log_log
.blockend_2: ; call
    push qword 1
    mov rax, 60
    pop rdi
    syscall
.blockend_0: ; if
    push mem+930
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+930
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
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
.blockstart_3: ; if
    jz .blockend_3
    push str_199
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_cstr_print
.blockend_4: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    pop rax
    push rax
    push rax
    push qword 1
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_5: ; if
    jz .blockend_5
    push str_200
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_cstr_print
.blockend_6: ; call
    push mem+930
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push proc_slmnode_print
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_filedata_print
.blockend_7: ; call
    push str_201
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_cstr_println
.blockend_8: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_5: ; if
    pop rax
    push rax
    push rax
    push qword 5
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_9: ; if
    jz .blockend_9
    push str_202
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_cstr_print
.blockend_10: ; call
    push mem+930
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push proc_slmnode_print
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_blockdata_print
.blockend_11: ; call
    push str_203
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_cstr_print
.blockend_12: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_9: ; if
    pop rax
    push rax
    push rax
    push qword 2
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_13: ; if
    jz .blockend_13
    push str_204
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_cstr_print
.blockend_14: ; call
    push mem+930
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_incdata_print
.blockend_15: ; call
    push str_205
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_cstr_print
.blockend_16: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_13: ; if
    pop rax
    push rax
    push rax
    push qword 3
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_17: ; if
    jz .blockend_17
    push str_206
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_cstr_print
.blockend_18: ; call
    push mem+930
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_asmdata_print
.blockend_19: ; call
    push str_207
.blockstart_20: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_20
    jmp proc_cstr_print
.blockend_20: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_17: ; if
    pop rax
    push rax
    push rax
    push qword 4
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_21: ; if
    jz .blockend_21
    push str_208
.blockstart_22: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_22
    jmp proc_cstr_print
.blockend_22: ; call
    push mem+930
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_23: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_23
    jmp proc_ofdata_print
.blockend_23: ; call
    push str_209
.blockstart_24: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_24
    jmp proc_cstr_print
.blockend_24: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_21: ; if
    pop rax
    push rax
    push rax
    push qword 13
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_25: ; if
    jz .blockend_25
    push str_210
.blockstart_26: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_26
    jmp proc_cstr_print
.blockend_26: ; call
    push mem+930
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_27: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_27
    jmp proc_casedata_print
.blockend_27: ; call
    push str_211
.blockstart_28: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_28
    jmp proc_cstr_print
.blockend_28: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_25: ; if
    pop rax
    push rax
    push rax
    push qword 7
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_29: ; if
    jz .blockend_29
    push str_212
.blockstart_30: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_30
    jmp proc_cstr_print
.blockend_30: ; call
    push mem+930
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_31: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_31
    jmp proc_calldata_print
.blockend_31: ; call
    push str_213
.blockstart_32: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_32
    jmp proc_cstr_print
.blockend_32: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_29: ; if
    pop rax
    push rax
    push rax
    push qword 6
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_33: ; if
    jz .blockend_33
    push str_214
.blockstart_34: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_34
    jmp proc_cstr_print
.blockend_34: ; call
    push mem+930
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_35: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_35
    jmp proc_intrdata_print
.blockend_35: ; call
    push str_215
.blockstart_36: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_36
    jmp proc_cstr_print
.blockend_36: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_33: ; if
    pop rax
    push rax
    push rax
    push qword 8
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_37: ; if
    jz .blockend_37
    push str_216
.blockstart_38: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_38
    jmp proc_cstr_print
.blockend_38: ; call
    push mem+930
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_39: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_39
    jmp proc_constdata_print
.blockend_39: ; call
    push str_217
.blockstart_40: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_40
    jmp proc_cstr_print
.blockend_40: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_37: ; if
    pop rax
    push rax
    push rax
    push qword 9
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_41: ; if
    jz .blockend_41
    push str_218
.blockstart_42: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_42
    jmp proc_cstr_print
.blockend_42: ; call
    push mem+930
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_43: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_43
    jmp proc_vardata_print
.blockend_43: ; call
    push str_219
.blockstart_44: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_44
    jmp proc_cstr_print
.blockend_44: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_41: ; if
    pop rax
    push rax
    push rax
    push qword 10
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_45: ; if
    jz .blockend_45
    push str_220
.blockstart_46: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_46
    jmp proc_cstr_print
.blockend_46: ; call
    push mem+930
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_47: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_47
    jmp proc_defdata_print
.blockend_47: ; call
    push str_221
.blockstart_48: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_48
    jmp proc_cstr_print
.blockend_48: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_45: ; if
    pop rax
    push rax
    push rax
    push qword 11
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_49: ; if
    jz .blockend_49
    push str_222
.blockstart_50: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_50
    jmp proc_cstr_print
.blockend_50: ; call
    push mem+930
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_51: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_51
    jmp proc_propdata_print
.blockend_51: ; call
    push str_223
.blockstart_52: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_52
    jmp proc_cstr_print
.blockend_52: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_49: ; if
    pop rax
    push rax
    push rax
    push qword 12
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_53: ; if
    jz .blockend_53
    push str_224
.blockstart_54: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_54
    jmp proc_cstr_print
.blockend_54: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_53: ; if
    push str_225
    push str_226
.blockstart_55: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_55
    jmp proc_log_msg
.blockend_55: ; call
    pop rax
    push rax
    push rax
.blockstart_56: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_56
    jmp proc_int_cstr
.blockend_56: ; call
.blockstart_57: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_57
    jmp proc_log_cat
.blockend_57: ; call
    push str_227
.blockstart_58: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_58
    jmp proc_log_cat
.blockend_58: ; call
.blockstart_59: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_59
    jmp proc_log_log
.blockend_59: ; call
    push qword 1
    mov rax, 60
    pop rdi
    syscall
proc_slmnode_new:
    push qword 8
    push qword 1
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push qword 32
    push qword 2
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_alloc
.blockend_0: ; call
    push mem+938
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+938
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+938
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 32
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_mem_cpy
.blockend_1: ; call
    push mem+938
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 40
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 32
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_mem_cpy
.blockend_2: ; call
    push mem+938
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_error:
proc_error_new:
    push qword 8
    push qword 2
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push qword 32
    push qword 2
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_zalloc
.blockend_0: ; call
    push mem+946
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+946
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 72
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+946
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+946
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 40
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+946
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+946
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_error_name:
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push str_228
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
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    add rsp, 8
    add rsp, 8
    push str_229
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockend_0: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 1
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
    add rsp, 8
    add rsp, 8
    push str_230
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockend_1: ; if
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
proc_error_eval:
    push mem+946
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+946
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_error_name
.blockend_0: ; call
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_print
.blockend_1: ; call
    push str_231
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_print
.blockend_2: ; call
    push mem+946
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 72
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_print
.blockend_3: ; call
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_cstr_cr
.blockend_4: ; call
    push str_232
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_cstr_print
.blockend_5: ; call
    push mem+946
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_filepos_print
.blockend_6: ; call
    push str_233
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_cstr_print
.blockend_7: ; call
    push mem+946
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_filepos_print
.blockend_8: ; call
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_cstr_cr
.blockend_9: ; call
    mov rax, 60
    pop rdi
    syscall
class_parserresult:
proc_parserresult_register:
    push mem+954
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+962
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+954
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
.blockstart_0: ; if
    jz .blockend_0
    push mem+954
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
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
.blockstart_1: ; if
    jz .blockend_1
    push mem+962
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+954
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockend_1: ; if
    push mem+954
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_heap_free
.blockend_2: ; call
    push mem+954
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parserresult_success:
    push mem+954
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+962
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+962
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+954
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+962
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parserresult_failure:
    push mem+954
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+962
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+962
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+954
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+962
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_parser:
proc_parser_new:
    push mem+986
    push qword 8
    push qword 3
    pop rax
    pop rbx
    imul rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_zalloc
.blockend_0: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+986
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+986
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword -1
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+986
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_free:
    pop rax
    push rax
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_dlist_free
.blockend_0: ; call
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_heap_free
.blockend_1: ; call
    push mem+978
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_seq_free
.blockend_2: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_advance:
    push mem+986
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+986
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    add rsp, 8
    push qword 0
.blockend_0: ; if
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+986
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+986
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+986
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_dlist_len
.blockend_1: ; call
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
    push mem+986
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+986
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+986
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_dlist_ptrat
.blockend_3: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockend_2: ; if
    push mem+986
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_initres:
    push qword 16
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_alloc
.blockend_0: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_subintr:
    push mem+986
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
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
.blockstart_0: ; if
    jz .blockend_0
    push mem+986
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+986
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_dlist_ptrat
.blockend_1: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+986
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_intrdata_new
.blockend_2: ; call
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_slmnode_new
.blockend_3: ; call
    push mem+978
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_seq_popaddr
.blockend_4: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_parseintr:
    push proc_parser_initres
    push mem+978
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+986
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_seq_pushint
.blockend_0: ; call
    add rsp, 8
    push mem+986
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_parser_advance
.blockend_1: ; call
    add rsp, 8
    push mem+986
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
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
.blockstart_2: ; if
    jz .blockend_2
    push mem+986
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_dlist_ptrat
.blockend_3: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    push rax
    push rax
    ; Word EKunderSYNTAX
