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
    push qword 0
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
class_heap:
proc_heap_allocpage:
    push mem+104
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
    push qword 12
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
    push mem+128
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
    push mem+128
    push qword 1
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    push mem+96
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
    push mem+104
    push mem+96
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
    push mem+120
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
    push mem+96
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 128
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_4: ; do
    push qword 128
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
    push mem+120
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+120
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
    push qword 128
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockend_6: ; if
    pop rax
    push rax
    push rax
    push mem+104
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
    push mem+120
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
    push qword 128
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
    push qword 128
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+112
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
    push mem+96
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 128
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 128
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_1: ; do
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 128
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 128
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push mem+104
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
    push qword 128
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 128
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
    push mem+112
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
    push mem+112
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
    push mem+112
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
    push qword 128
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
    push qword 128
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+112
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
    push mem+129
    push mem+112
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
    push mem+129
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
    push mem+129
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_opt:
class_log:
proc_log_level:
    push mem+153
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
    push mem+153
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
    push mem+153
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
    push mem+153
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
    push mem+153
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
    push mem+153
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
    push mem+153
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
    push mem+153
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
    push mem+153
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
    push mem+153
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
    push mem+153
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
    push mem+153
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
    push mem+153
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
    push mem+153
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
    push mem+281
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+281
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
    push mem+281
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
    push mem+281
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
    push mem+281
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
    push mem+281
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
    push qword 44
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
    push qword 45
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
    push qword 49
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
    push qword 27
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
    push qword 28
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
    push mem+297
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
    push mem+289
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
    push mem+289
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
    push mem+441
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
    push mem+449
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_split
.blockend_1: ; call
    push mem+441
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
    push str_69
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
    push str_70
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
    push str_71
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
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_os_cwd:
    push mem+513
    push qword 255
    push qword 79
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
    add rsp, 8
    push mem+513
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
    push mem+769
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
    push mem+769
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
    push mem+769
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 17
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+769
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
    push mem+769
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
    push mem+769
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+769
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
    push mem+769
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 17
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+769
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
    push mem+769
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
    push mem+769
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 2065
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+769
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
    push mem+769
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
    push mem+769
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
    push mem+769
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
    push mem+777
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
    push mem+777
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
    push mem+777
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
    push mem+777
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
    push mem+777
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
    push mem+777
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
    push mem+777
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+777
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
    push qword 0
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
    push mem+777
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+777
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
class_arr:
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
    push mem+785
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+793
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+785
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
    push mem+785
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+793
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
    push mem+785
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
    push mem+785
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
    push mem+785
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+785
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
    push mem+785
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
    push mem+793
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+785
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+785
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
    push mem+785
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
    push mem+785
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
    push mem+785
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
    push mem+785
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
    push mem+785
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
    push mem+793
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+785
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
    push mem+793
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+785
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+785
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
    push mem+785
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
    push mem+785
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
    push str_74
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
    push mem+785
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
    push mem+785
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
    push mem+785
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
    push mem+793
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+785
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
    push mem+785
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
    push mem+785
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+785
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
    push mem+785
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
    push mem+785
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
    push mem+785
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
    push mem+785
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
    push mem+785
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
    push mem+785
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
    push mem+785
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
    push mem+785
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push str_75
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_print
.blockend_0: ; call
    push mem+785
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
    push mem+785
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
    push str_76
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
    push str_77
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
    push mem+785
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
    push mem+785
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
    push mem+785
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
    push str_78
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
    push mem+785
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+785
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
    push mem+785
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
    push mem+785
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
    push mem+793
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+785
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
    push mem+785
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+793
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
    push mem+785
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+785
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
    push mem+785
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
    push mem+785
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
    push mem+793
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+785
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
    push mem+785
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
    push mem+785
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
    push mem+785
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+793
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
proc_llentry_print:
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
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_0: ; call
    pop rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp qword rbx
.blockend_0: ; call
    add rsp, 8
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
    push rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
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
    push str_79
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_print
.blockend_2: ; call
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_llentry_print
.blockend_3: ; call
    push qword 0
.blockend_1: ; if
    add rsp, 8
    add rsp, 8
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
    push mem+833
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
    push mem+833
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
    push mem+825
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
    push mem+825
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
    push mem+825
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
    push mem+825
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+825
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
    push mem+825
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
    push mem+825
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
    push mem+825
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
    push mem+825
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
    push mem+825
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
    push mem+825
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
    push mem+825
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
    push mem+825
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
    push mem+825
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_llist_print:
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
    mov rbx, [rax]
    push rbx
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
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_llentry_print
.blockend_1: ; call
    push qword 0
.blockend_0: ; if
    add rsp, 8
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_dlist:
proc_dlist_new:
    push mem+841
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
    push mem+841
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
    push mem+841
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
    push mem+841
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
    push mem+841
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
    push mem+841
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+841
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
    push mem+841
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
    push mem+841
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
    push mem+841
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+841
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
    push mem+841
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+841
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+841
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
    push mem+841
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
    push mem+841
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+841
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+841
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+841
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
    push mem+841
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+841
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
    push mem+841
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
    push mem+841
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
    push mem+841
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
    push mem+841
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
    push mem+841
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
    push mem+841
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+841
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+841
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
    push mem+841
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
    push mem+841
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
    push mem+841
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
    push mem+841
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
    push mem+841
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
    push mem+841
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
    push mem+841
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
    push mem+849
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+849
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
    push mem+849
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
    push mem+849
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+849
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+849
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
    push mem+849
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
    push mem+849
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
    push mem+849
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
    push mem+849
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
    push mem+849
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
    push mem+849
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
    push mem+849
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
    push mem+849
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
    push mem+849
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
    push mem+849
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
    push mem+849
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
    push mem+849
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
    push mem+849
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
    push mem+849
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
    push mem+849
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
    push mem+849
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
    push mem+849
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
    push mem+849
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
    push mem+849
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
    push mem+849
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
    push mem+849
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
    push mem+849
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
    push mem+857
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
    push mem+849
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+857
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+849
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
    push mem+849
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+857
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
    push mem+849
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
    push mem+849
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
    push mem+849
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
    push mem+857
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
    push mem+849
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+857
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+849
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
    push str_80
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_print
.blockend_0: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    push mem+889
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
    push mem+889
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push str_81
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_os_env
.blockend_3: ; call
    pop rax
    push rax
    push rax
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_cstr_len
.blockend_4: ; call
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_str_sput
.blockend_5: ; call
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
    jmp proc_cstr_println
.blockend_6: ; call
    push str_82
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_str_catc
.blockend_7: ; call
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_str_catc
.blockend_8: ; call
    add rsp, 8
.blockend_1: ; if
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_9: ; if
    jz .blockend_9
    push mem+889
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_str_new
.blockend_10: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+889
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    push rax
    push rax
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_cstr_len
.blockend_11: ; call
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_str_sput
.blockend_12: ; call
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_str_println
.blockend_13: ; call
.blockend_9: ; if
    push mem+873
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
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_heap_zalloc
.blockend_14: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+889
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_filestream_new
.blockend_15: ; call
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 88
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_str_new
.blockend_16: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+873
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
    push mem+873
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+873
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+873
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
    push mem+873
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
    push mem+873
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 80
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push str_83
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
    push mem+873
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
.blockend_1: ; if
    pop rax
    push rax
    push rax
    push str_84
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
    push mem+873
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
.blockend_3: ; if
    pop rax
    push rax
    push rax
    push str_85
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
    push mem+873
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
.blockend_5: ; if
    pop rax
    push rax
    push rax
    push str_86
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
    push mem+873
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
.blockend_7: ; if
    pop rax
    push rax
    push rax
    push str_87
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
    push mem+873
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
.blockend_9: ; if
    pop rax
    push rax
    push rax
    push str_88
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
    push mem+873
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
.blockend_11: ; if
    pop rax
    push rax
    push rax
    push str_89
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
    push mem+873
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
.blockend_13: ; if
    pop rax
    push rax
    push rax
    push str_90
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
    push mem+873
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
    push str_91
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
    push mem+873
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
    push str_92
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
    push mem+873
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
    push str_93
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
    push mem+873
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
    push str_94
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
    push mem+873
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
    push str_95
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
    push mem+873
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
    push str_96
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
    push mem+873
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
.blockend_27: ; if
    pop rax
    push rax
    push rax
    push str_97
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
    push mem+873
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
    push str_98
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
    push mem+873
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
    push str_99
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
    push mem+873
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
.blockend_33: ; if
    pop rax
    push rax
    push rax
    push str_100
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
    push mem+873
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
.blockend_35: ; if
    pop rax
    push rax
    push rax
    push str_101
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
    push mem+873
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
    push str_102
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
    push mem+873
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
.blockend_39: ; if
    pop rax
    push rax
    push rax
    push str_103
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
    push mem+873
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
.blockend_41: ; if
    pop rax
    push rax
    push rax
    push str_104
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
    push mem+873
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
.blockend_43: ; if
    pop rax
    push rax
    push rax
    push str_105
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
    push mem+873
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
    push str_106
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
    push mem+873
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
    push str_107
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
    push mem+873
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
.blockend_49: ; if
    pop rax
    push rax
    push rax
    push str_108
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
    push mem+873
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
.blockend_51: ; if
    pop rax
    push rax
    push rax
    push str_109
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
    push mem+873
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
.blockend_53: ; if
    pop rax
    push rax
    push rax
    push str_110
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
    push mem+873
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
.blockend_55: ; if
    pop rax
    push rax
    push rax
    push str_111
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
    push mem+873
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
.blockend_57: ; if
    pop rax
    push rax
    push rax
    push str_112
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
    push mem+873
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
.blockend_59: ; if
    pop rax
    push rax
    push rax
    push str_113
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
    push mem+873
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
.blockend_61: ; if
    pop rax
    push rax
    push rax
    push str_114
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
    push mem+873
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
.blockend_63: ; if
    pop rax
    push rax
    push rax
    push str_115
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
    push mem+873
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
.blockend_65: ; if
    pop rax
    push rax
    push rax
    push str_116
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
    push mem+873
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
.blockend_67: ; if
    pop rax
    push rax
    push rax
    push str_117
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
    push mem+873
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
.blockend_69: ; if
    pop rax
    push rax
    push rax
    push str_118
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
    push mem+873
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
.blockend_71: ; if
    pop rax
    push rax
    push rax
    push str_119
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
    push mem+873
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
.blockend_73: ; if
    pop rax
    push rax
    push rax
    push str_120
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
    push mem+873
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
.blockend_75: ; if
    pop rax
    push rax
    push rax
    push str_121
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
    push mem+873
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
.blockend_77: ; if
    pop rax
    push rax
    push rax
    push str_122
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
    push mem+873
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
    push str_123
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
    push mem+873
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
    push str_124
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
    push mem+873
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
.blockend_83: ; if
    pop rax
    push rax
    push rax
    push str_125
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
    push mem+873
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
.blockend_85: ; if
    pop rax
    push rax
    push rax
    push str_126
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
    push mem+873
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
.blockend_87: ; if
    pop rax
    push rax
    push rax
    push str_127
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
    push mem+873
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
.blockend_89: ; if
    pop rax
    push rax
    push rax
    push str_128
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
    push mem+873
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
.blockend_91: ; if
    pop rax
    push rax
    push rax
    push str_129
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
    push mem+873
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
.blockend_93: ; if
    pop rax
    push rax
    push rax
    push str_130
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
    push mem+873
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
.blockend_95: ; if
    pop rax
    push rax
    push rax
    push str_131
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
    push mem+873
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
    push str_132
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
    push mem+873
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
.blockend_99: ; if
    pop rax
    push rax
    push rax
    push str_133
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
    push mem+873
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
.blockend_101: ; if
    pop rax
    push rax
    push rax
    push str_134
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
    push mem+873
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
.blockend_103: ; if
    pop rax
    push rax
    push rax
    push str_135
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
    push mem+873
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
.blockend_105: ; if
    pop rax
    push rax
    push rax
    push str_136
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
    push mem+873
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
.blockend_107: ; if
    pop rax
    push rax
    push rax
    push str_137
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
    push mem+873
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
.blockend_109: ; if
    pop rax
    push rax
    push rax
    push str_138
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
    push mem+873
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
.blockend_111: ; if
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
.blockstart_112: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_112
    jmp proc_cstr_isnum
.blockend_112: ; call
    pop rbx
    test rbx, rbx
.blockstart_113: ; if
    jz .blockend_113
    push mem+873
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
.blockend_113: ; if
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
.blockstart_114: ; if
    jz .blockend_114
    push mem+873
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
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_114: ; if
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
.blockstart_115: ; if
    jz .blockend_115
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
.blockstart_116: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_116
    jmp proc_str_sput
.blockend_116: ; call
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
.blockend_115: ; if
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
.blockstart_117: ; if
    jz .blockend_117
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
.blockstart_118: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_118
    jmp proc_str_sput
.blockend_118: ; call
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
.blockend_117: ; if
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
.blockstart_119: ; if
    jz .blockend_119
    push mem+873
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
    push mem+873
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
    push mem+873
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
.blockstart_120: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_120
    jmp proc_int_cstr
.blockend_120: ; call
    pop rax
    push rax
    push rax
.blockstart_121: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_121
    jmp proc_cstr_len
.blockend_121: ; call
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_122: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_122
    jmp proc_str_sput
.blockend_122: ; call
    add rsp, 8
.blockend_119: ; if
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
.blockstart_123: ; if
    jz .blockend_123
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
.blockstart_124: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_124
    jmp proc_str_sput
.blockend_124: ; call
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
.blockend_123: ; if
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_lexer_run:
    push mem+873
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+881
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+873
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
    push mem+881
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+873
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
    push mem+881
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
    push mem+873
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
    push mem+873
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
    push mem+881
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
class_calldata:
proc_calldata_new:
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push str_139
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
    push str_140
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
proc_asmdata_new:
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push str_141
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
    push str_142
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
proc_incdata_new:
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push str_143
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
    push str_144
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
proc_ofdata_new:
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push str_145
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
    push str_146
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
proc_casedata_new:
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push str_147
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
    push str_148
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
proc_commentdata_new:
    push mem+897
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
    push mem+897
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
    push mem+897
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
proc_intrdata_new:
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+897
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
    push str_149
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
    push str_150
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
    push str_151
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
    push str_152
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
    push str_153
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
    push str_154
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
    push str_155
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
    push str_156
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
    push str_157
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
    push str_158
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
    push str_159
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
    push str_160
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
    push str_161
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
    push str_162
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
    push str_163
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
    push str_164
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
proc_vardata_new:
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+897
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
    push str_165
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
    push str_166
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
    push str_167
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
    push mem+897
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
    push mem+897
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
    push str_168
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
proc_defdata_new:
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+897
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
    push str_169
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
    push str_170
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
    push str_171
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
    push mem+897
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
    push mem+897
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
    push str_172
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
proc_propdata_new:
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+897
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
    push str_173
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
    push str_174
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
    push str_175
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
    push mem+897
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
    push mem+897
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
    push str_176
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
proc_constdata_new:
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+897
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
    push str_177
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
    push str_178
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
    push str_179
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
    push str_180
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
    push mem+897
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
    push mem+897
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
    push str_181
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
    push str_182
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
proc_filedata_new:
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+905
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push str_183
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_print
.blockend_1: ; call
    push mem+897
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
    push str_184
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_print
.blockend_3: ; call
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+905
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
    push 0
    add rsp, 8
    push mem+897
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
    push mem+897
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
proc_blockdata_new:
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+897
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+905
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+897
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
    push str_185
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
    push str_186
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
    push str_187
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
    push str_188
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
    push str_189
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
    push str_190
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
    push str_191
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
    push str_192
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
    push str_193
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_cstr_print
.blockend_9: ; call
    push mem+897
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
    push mem+897
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
    push mem+897
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
    push mem+905
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
    push 0
    add rsp, 8
    push mem+897
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
    push mem+897
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
    push str_194
    push str_195
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
    push mem+913
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+913
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
    push str_196
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
    push str_197
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_cstr_print
.blockend_6: ; call
    push mem+913
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
    push str_198
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
    push str_199
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_cstr_print
.blockend_10: ; call
    push mem+913
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
    push str_200
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
    push str_201
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_cstr_print
.blockend_14: ; call
    push mem+913
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
    push str_202
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
    push str_203
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_cstr_print
.blockend_18: ; call
    push mem+913
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
    push str_204
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
    push str_205
.blockstart_22: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_22
    jmp proc_cstr_print
.blockend_22: ; call
    push mem+913
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
    push str_206
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
    push str_207
.blockstart_26: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_26
    jmp proc_cstr_print
.blockend_26: ; call
    push mem+913
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
    push str_208
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
    push str_209
.blockstart_30: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_30
    jmp proc_cstr_print
.blockend_30: ; call
    push mem+913
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
    push str_210
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
    push str_211
.blockstart_34: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_34
    jmp proc_cstr_print
.blockend_34: ; call
    push mem+913
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
    push str_212
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
    push str_213
.blockstart_38: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_38
    jmp proc_cstr_print
.blockend_38: ; call
    push mem+913
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
    push str_214
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
    push str_215
.blockstart_42: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_42
    jmp proc_cstr_print
.blockend_42: ; call
    push mem+913
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
    push str_216
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
    push str_217
.blockstart_46: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_46
    jmp proc_cstr_print
.blockend_46: ; call
    push mem+913
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
    push str_218
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
    push str_219
.blockstart_50: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_50
    jmp proc_cstr_print
.blockend_50: ; call
    push mem+913
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
    push str_220
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
    push str_221
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
    push str_222
    push str_223
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
    push str_224
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
    push mem+921
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+921
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
    push mem+921
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
    push mem+921
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
    push mem+921
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
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push mem+937
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
    push mem+945
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
    push mem+945
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
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_parseret:
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push mem+945
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
    push qword 8
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
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
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    push mem+945
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
    push mem+945
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
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_dlist_ptrat
.blockend_5: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
    push qword 0
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_intrdata_new
.blockend_6: ; call
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_slmnode_new
.blockend_7: ; call
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_seq_popaddr
.blockend_8: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_parseelse:
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push mem+945
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
    push qword 19
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
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
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    push mem+945
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
    push mem+945
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
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_dlist_ptrat
.blockend_5: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
    push qword 1
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_intrdata_new
.blockend_6: ; call
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_slmnode_new
.blockend_7: ; call
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_seq_popaddr
.blockend_8: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_subintr:
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push mem+937
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
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push qword 2
    push qword 27
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_parser_subintr
.blockend_3: ; call
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
.blockstart_4: ; if
    jz .blockend_4
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_4: ; if
    add rsp, 8
    push qword 13
    push qword 28
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_parser_subintr
.blockend_5: ; call
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
.blockstart_6: ; if
    jz .blockend_6
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_6: ; if
    add rsp, 8
    push qword 7
    push qword 29
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_parser_subintr
.blockend_7: ; call
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
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_8: ; if
    add rsp, 8
    push qword 18
    push qword 36
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_parser_subintr
.blockend_9: ; call
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
.blockstart_10: ; if
    jz .blockend_10
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_10: ; if
    add rsp, 8
    push qword 21
    push qword 37
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_parser_subintr
.blockend_11: ; call
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
.blockstart_12: ; if
    jz .blockend_12
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_12: ; if
    add rsp, 8
    push qword 20
    push qword 39
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_parser_subintr
.blockend_13: ; call
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
.blockstart_14: ; if
    jz .blockend_14
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_14: ; if
    add rsp, 8
    push qword 19
    push qword 38
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_parser_subintr
.blockend_15: ; call
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
.blockstart_16: ; if
    jz .blockend_16
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_16: ; if
    add rsp, 8
    push qword 3
    push qword 22
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_parser_subintr
.blockend_17: ; call
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
.blockstart_18: ; if
    jz .blockend_18
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_18: ; if
    add rsp, 8
    push qword 4
    push qword 23
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_parser_subintr
.blockend_19: ; call
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
.blockstart_20: ; if
    jz .blockend_20
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_20: ; if
    add rsp, 8
    push qword 5
    push qword 24
.blockstart_21: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_21
    jmp proc_parser_subintr
.blockend_21: ; call
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
.blockstart_22: ; if
    jz .blockend_22
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_22: ; if
    add rsp, 8
    push qword 6
    push qword 25
.blockstart_23: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_23
    jmp proc_parser_subintr
.blockend_23: ; call
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
.blockstart_24: ; if
    jz .blockend_24
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_24: ; if
    add rsp, 8
    push qword 14
    push qword 26
.blockstart_25: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_25
    jmp proc_parser_subintr
.blockend_25: ; call
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
.blockstart_26: ; if
    jz .blockend_26
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_26: ; if
    add rsp, 8
    push qword 15
    push qword 30
.blockstart_27: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_27
    jmp proc_parser_subintr
.blockend_27: ; call
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
.blockstart_28: ; if
    jz .blockend_28
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_28: ; if
    add rsp, 8
    push qword 16
    push qword 31
.blockstart_29: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_29
    jmp proc_parser_subintr
.blockend_29: ; call
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
.blockstart_30: ; if
    jz .blockend_30
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_30: ; if
    add rsp, 8
    push qword 17
    push qword 32
.blockstart_31: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_31
    jmp proc_parser_subintr
.blockend_31: ; call
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
.blockstart_32: ; if
    jz .blockend_32
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_32: ; if
    add rsp, 8
    push qword 23
    push qword 33
.blockstart_33: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_33
    jmp proc_parser_subintr
.blockend_33: ; call
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
.blockstart_34: ; if
    jz .blockend_34
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_34: ; if
    add rsp, 8
    push qword 12
    push qword 35
.blockstart_35: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_35
    jmp proc_parser_subintr
.blockend_35: ; call
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
.blockstart_36: ; if
    jz .blockend_36
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_36: ; if
    add rsp, 8
    push qword 8
    push qword 40
.blockstart_37: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_37
    jmp proc_parser_subintr
.blockend_37: ; call
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
.blockstart_38: ; if
    jz .blockend_38
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_38: ; if
    add rsp, 8
    push qword 9
    push qword 41
.blockstart_39: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_39
    jmp proc_parser_subintr
.blockend_39: ; call
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
.blockstart_40: ; if
    jz .blockend_40
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_40: ; if
    add rsp, 8
    push qword 10
    push qword 42
.blockstart_41: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_41
    jmp proc_parser_subintr
.blockend_41: ; call
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
.blockstart_42: ; if
    jz .blockend_42
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_42: ; if
    add rsp, 8
    push qword 11
    push qword 43
.blockstart_43: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_43
    jmp proc_parser_subintr
.blockend_43: ; call
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
.blockstart_44: ; if
    jz .blockend_44
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_44: ; if
    add rsp, 8
    push qword 22
    push qword 9
.blockstart_45: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_45
    jmp proc_parser_subintr
.blockend_45: ; call
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
.blockstart_46: ; if
    jz .blockend_46
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_46: ; if
    add rsp, 8
    push qword 25
    push qword 53
.blockstart_47: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_47
    jmp proc_parser_subintr
.blockend_47: ; call
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
.blockstart_48: ; if
    jz .blockend_48
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_48: ; if
    add rsp, 8
    push qword 26
    push qword 52
.blockstart_49: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_49
    jmp proc_parser_subintr
.blockend_49: ; call
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
.blockstart_50: ; if
    jz .blockend_50
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_50: ; if
    add rsp, 8
    push qword 27
    push qword 51
.blockstart_51: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_51
    jmp proc_parser_subintr
.blockend_51: ; call
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
.blockstart_52: ; if
    jz .blockend_52
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_52: ; if
    add rsp, 8
    push qword 24
    push qword 14
.blockstart_53: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_53
    jmp proc_parser_subintr
.blockend_53: ; call
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
.blockstart_54: ; if
    jz .blockend_54
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_54: ; if
    add rsp, 8
    push qword 28
    push qword 54
.blockstart_55: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_55
    jmp proc_parser_subintr
.blockend_55: ; call
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
.blockstart_56: ; if
    jz .blockend_56
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_56: ; if
    add rsp, 8
    push qword 29
    push qword 55
.blockstart_57: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_57
    jmp proc_parser_subintr
.blockend_57: ; call
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
.blockstart_58: ; if
    jz .blockend_58
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_58: ; if
    add rsp, 8
    push qword 30
    push qword 56
.blockstart_59: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_59
    jmp proc_parser_subintr
.blockend_59: ; call
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
.blockstart_60: ; if
    jz .blockend_60
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_60: ; if
    add rsp, 8
    push qword 31
    push qword 57
.blockstart_61: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_61
    jmp proc_parser_subintr
.blockend_61: ; call
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
.blockstart_62: ; if
    jz .blockend_62
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_62: ; if
    add rsp, 8
    push qword 32
    push qword 58
.blockstart_63: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_63
    jmp proc_parser_subintr
.blockend_63: ; call
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
.blockstart_64: ; if
    jz .blockend_64
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_64: ; if
    add rsp, 8
    push qword 33
    push qword 59
.blockstart_65: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_65
    jmp proc_parser_subintr
.blockend_65: ; call
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
.blockstart_66: ; if
    jz .blockend_66
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_66: ; if
    add rsp, 8
    push qword 34
    push qword 60
.blockstart_67: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_67
    jmp proc_parser_subintr
.blockend_67: ; call
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
.blockstart_68: ; if
    jz .blockend_68
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_68: ; if
    add rsp, 8
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_69: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_69
    jmp proc_seq_popaddr
.blockend_69: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_parsenum:
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push mem+945
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
    push qword 45
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
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
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    push mem+945
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
    push mem+945
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
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_dlist_ptrat
.blockend_5: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
    push qword 0
    push mem+945
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
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_constdata_new
.blockend_6: ; call
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_slmnode_new
.blockend_7: ; call
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_seq_popaddr
.blockend_8: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_parsestring:
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push mem+945
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
    push qword 46
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
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
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    push mem+945
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
    push mem+945
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
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_dlist_ptrat
.blockend_5: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
    push qword 1
    push mem+945
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
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_constdata_new
.blockend_6: ; call
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_slmnode_new
.blockend_7: ; call
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_seq_popaddr
.blockend_8: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_parsesstring:
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push mem+945
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
    push qword 47
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
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
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    push mem+945
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
    push mem+945
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
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_dlist_ptrat
.blockend_5: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
    push qword 2
    push mem+945
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
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_constdata_new
.blockend_6: ; call
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_slmnode_new
.blockend_7: ; call
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_seq_popaddr
.blockend_8: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_parseword:
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push mem+945
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
    push qword 48
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
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
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    push mem+945
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
    push mem+945
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
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_dlist_ptrat
.blockend_5: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
    push qword 3
    push mem+945
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
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_constdata_new
.blockend_6: ; call
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_slmnode_new
.blockend_7: ; call
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_seq_popaddr
.blockend_8: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_parsecall:
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push mem+945
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
    push qword 49
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
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
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    push mem+945
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
    push mem+945
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
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_dlist_ptrat
.blockend_5: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
    push mem+945
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
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_calldata_new
.blockend_6: ; call
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_slmnode_new
.blockend_7: ; call
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_seq_popaddr
.blockend_8: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_parseinc:
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push mem+945
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
    push qword 1
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
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
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_parser_advance
.blockend_5: ; call
    add rsp, 8
    push mem+945
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
.blockstart_6: ; if
    jz .blockend_6
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_6: ; if
    push mem+945
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
    push qword 46
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_7: ; if
    jz .blockend_7
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_seq_popaddr
.blockend_8: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_7: ; if
    push mem+945
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
    push mem+945
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
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_dlist_ptrat
.blockend_9: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
    push mem+945
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
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_incdata_new
.blockend_10: ; call
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_slmnode_new
.blockend_11: ; call
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_seq_popaddr
.blockend_12: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_parseasm:
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push mem+945
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
    push qword 16
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
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
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_parser_advance
.blockend_5: ; call
    add rsp, 8
    push mem+945
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
.blockstart_6: ; if
    jz .blockend_6
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_6: ; if
    push mem+945
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
    push qword 46
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_7: ; if
    jz .blockend_7
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_seq_popaddr
.blockend_8: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_7: ; if
    push mem+945
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
    push mem+945
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
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_dlist_ptrat
.blockend_9: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
    push mem+945
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
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_asmdata_new
.blockend_10: ; call
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_slmnode_new
.blockend_11: ; call
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_seq_popaddr
.blockend_12: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_parseof:
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push mem+945
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
    push qword 13
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
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
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_parser_advance
.blockend_5: ; call
    add rsp, 8
    push mem+945
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
.blockstart_6: ; if
    jz .blockend_6
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_6: ; if
    push mem+945
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
    push qword 48
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_7: ; if
    jz .blockend_7
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_seq_popaddr
.blockend_8: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_7: ; if
    push mem+945
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
    push mem+945
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
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_dlist_ptrat
.blockend_9: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
    push mem+945
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
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_ofdata_new
.blockend_10: ; call
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_slmnode_new
.blockend_11: ; call
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_seq_popaddr
.blockend_12: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_parsecase:
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push mem+945
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
    push qword 18
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
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
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_parser_advance
.blockend_5: ; call
    add rsp, 8
    push mem+945
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
.blockstart_6: ; if
    jz .blockend_6
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_6: ; if
    push mem+945
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
    push qword 45
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_7: ; if
    jz .blockend_7
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_seq_popaddr
.blockend_8: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_7: ; if
    push mem+945
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
    push mem+945
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
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_dlist_ptrat
.blockend_9: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
    push mem+945
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
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_casedata_new
.blockend_10: ; call
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_slmnode_new
.blockend_11: ; call
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_seq_popaddr
.blockend_12: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_parsecomment:
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push mem+945
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
    push qword 50
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
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
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    push mem+945
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
    push mem+945
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
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_dlist_ptrat
.blockend_5: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_commentdata_new
.blockend_6: ; call
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_slmnode_new
.blockend_7: ; call
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_seq_popaddr
.blockend_8: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_parseif:
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push mem+945
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
    push qword 2
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
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
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    push mem+945
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
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_dlist_ptrat
.blockend_5: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_dlist_last
.blockend_6: ; call
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    push qword 0
    push qword 0
    push qword 6
    push qword 0
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_blockdata_new
.blockend_7: ; call
.blockstart_8: ; do
    push qword 0
    push mem+929
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_9: ; call
    pop rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp qword rbx
.blockend_9: ; call
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
.blockstart_10: ; if
    jz .blockend_10
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_blockdata_append
.blockend_11: ; call
    pop rax
    pop rbx
    push rax
    push rbx
.blockend_10: ; if
    pop rbx
    test rbx, rbx
    jnz .blockstart_8
.blockend_8: ; do
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_parser_advance
.blockend_12: ; call
    add rsp, 8
    push mem+945
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
.blockstart_13: ; if
    jz .blockend_13
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_13: ; if
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_slmnode_new
.blockend_14: ; call
    push mem+945
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
    push qword 44
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_15: ; if
    jz .blockend_15
    add rsp, 8
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_seq_popaddr
.blockend_16: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_15: ; if
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_seq_popaddr
.blockend_17: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_parseswitch:
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push mem+945
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
    push qword 17
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
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
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    push mem+945
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
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_dlist_ptrat
.blockend_5: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_dlist_last
.blockend_6: ; call
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    push qword 0
    push qword 0
    push qword 9
    push qword 0
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_blockdata_new
.blockend_7: ; call
.blockstart_8: ; do
    push qword 0
    push mem+929
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_9: ; call
    pop rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp qword rbx
.blockend_9: ; call
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
.blockstart_10: ; if
    jz .blockend_10
    add rsp, 8
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_parser_parsecase
.blockend_11: ; call
.blockend_10: ; if
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
.blockstart_12: ; if
    jz .blockend_12
    add rsp, 8
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_parser_parseelse
.blockend_13: ; call
.blockend_12: ; if
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
.blockstart_14: ; if
    jz .blockend_14
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_blockdata_append
.blockend_15: ; call
    pop rax
    pop rbx
    push rax
    push rbx
.blockend_14: ; if
    pop rbx
    test rbx, rbx
    jnz .blockstart_8
.blockend_8: ; do
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_parser_advance
.blockend_16: ; call
    add rsp, 8
    push mem+945
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
.blockstart_17: ; if
    jz .blockend_17
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_17: ; if
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_slmnode_new
.blockend_18: ; call
    push mem+945
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
    push qword 44
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_19: ; if
    jz .blockend_19
    add rsp, 8
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_20: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_20
    jmp proc_seq_popaddr
.blockend_20: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_19: ; if
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_21: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_21
    jmp proc_seq_popaddr
.blockend_21: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_parsesim:
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push mem+945
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
    push qword 15
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
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
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    push mem+945
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
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_dlist_ptrat
.blockend_5: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_dlist_last
.blockend_6: ; call
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    push qword 0
    push qword 0
    push qword 7
    push qword 0
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_blockdata_new
.blockend_7: ; call
.blockstart_8: ; do
    push qword 0
    push mem+929
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_9: ; call
    pop rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp qword rbx
.blockend_9: ; call
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
.blockstart_10: ; if
    jz .blockend_10
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_blockdata_append
.blockend_11: ; call
    pop rax
    pop rbx
    push rax
    push rbx
.blockend_10: ; if
    pop rbx
    test rbx, rbx
    jnz .blockstart_8
.blockend_8: ; do
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_parser_advance
.blockend_12: ; call
    add rsp, 8
    push mem+945
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
.blockstart_13: ; if
    jz .blockend_13
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_13: ; if
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_slmnode_new
.blockend_14: ; call
    push mem+945
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
    push qword 44
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_15: ; if
    jz .blockend_15
    add rsp, 8
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_seq_popaddr
.blockend_16: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_15: ; if
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_seq_popaddr
.blockend_17: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_parsedo:
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push mem+945
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
    push qword 3
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
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
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    push mem+945
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
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_dlist_ptrat
.blockend_5: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_dlist_last
.blockend_6: ; call
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    push qword 0
    push qword 0
    push qword 5
    push qword 0
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_blockdata_new
.blockend_7: ; call
.blockstart_8: ; do
    push qword 0
    push mem+929
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_9: ; call
    pop rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp qword rbx
.blockend_9: ; call
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
.blockstart_10: ; if
    jz .blockend_10
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_blockdata_append
.blockend_11: ; call
    pop rax
    pop rbx
    push rax
    push rbx
.blockend_10: ; if
    pop rbx
    test rbx, rbx
    jnz .blockstart_8
.blockend_8: ; do
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_parser_advance
.blockend_12: ; call
    add rsp, 8
    push mem+945
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
.blockstart_13: ; if
    jz .blockend_13
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_13: ; if
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_slmnode_new
.blockend_14: ; call
    push mem+945
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
    push qword 44
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_15: ; if
    jz .blockend_15
    add rsp, 8
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_seq_popaddr
.blockend_16: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_15: ; if
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_seq_popaddr
.blockend_17: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_parseproc:
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push mem+977
    push qword 1
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+945
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
.blockstart_3: ; if
    jz .blockend_3
    push mem+977
    push qword 1
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_parser_advance
.blockend_4: ; call
    add rsp, 8
.blockend_3: ; if
    push mem+945
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
.blockstart_5: ; if
    jz .blockend_5
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_5: ; if
    push mem+945
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
.blockstart_6: ; if
    jz .blockend_6
    push mem+977
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_parser_advance
.blockend_7: ; call
    add rsp, 8
.blockend_6: ; if
    push mem+945
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
.blockstart_8: ; if
    jz .blockend_8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_8: ; if
    push mem+945
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
    push qword 4
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_9: ; if
    jz .blockend_9
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_seq_popaddr
.blockend_10: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_9: ; if
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_parser_advance
.blockend_11: ; call
    add rsp, 8
    push mem+945
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
.blockstart_12: ; if
    jz .blockend_12
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_12: ; if
    push mem+945
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
    push qword 48
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_13: ; if
    jz .blockend_13
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_seq_popaddr
.blockend_14: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_13: ; if
    push mem+953
    push mem+945
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
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_parser_advance
.blockend_15: ; call
    add rsp, 8
    push mem+945
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
.blockstart_16: ; if
    jz .blockend_16
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_16: ; if
    push mem+945
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
    push qword 45
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_17: ; if
    jz .blockend_17
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_seq_popaddr
.blockend_18: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_17: ; if
    push mem+961
    push mem+945
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
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_parser_advance
.blockend_19: ; call
    add rsp, 8
    push mem+945
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
.blockstart_20: ; if
    jz .blockend_20
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_20: ; if
    push mem+945
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
    push qword 45
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_21: ; if
    jz .blockend_21
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_22: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_22
    jmp proc_seq_popaddr
.blockend_22: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_21: ; if
    push mem+969
    push mem+945
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
    push mem+945
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
.blockstart_23: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_23
    jmp proc_dlist_ptrat
.blockend_23: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
.blockstart_24: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_24
    jmp proc_dlist_last
.blockend_24: ; call
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+953
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+961
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+969
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    push mem+977
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_25: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_25
    jmp proc_blockdata_new
.blockend_25: ; call
.blockstart_26: ; do
    push qword 0
    push mem+929
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_27: ; call
    pop rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_27
    jmp qword rbx
.blockend_27: ; call
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
.blockstart_28: ; if
    jz .blockend_28
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_29: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_29
    jmp proc_blockdata_append
.blockend_29: ; call
    pop rax
    pop rbx
    push rax
    push rbx
.blockend_28: ; if
    pop rbx
    test rbx, rbx
    jnz .blockstart_26
.blockend_26: ; do
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_30: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_30
    jmp proc_parser_advance
.blockend_30: ; call
    add rsp, 8
    push mem+945
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
.blockstart_31: ; if
    jz .blockend_31
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_31: ; if
.blockstart_32: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_32
    jmp proc_slmnode_new
.blockend_32: ; call
    push mem+945
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
    push qword 44
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_33: ; if
    jz .blockend_33
    add rsp, 8
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_34: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_34
    jmp proc_seq_popaddr
.blockend_34: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_33: ; if
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_35: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_35
    jmp proc_seq_popaddr
.blockend_35: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_parselambda:
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push mem+945
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
    push qword 20
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
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
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_parser_advance
.blockend_5: ; call
    add rsp, 8
    push mem+945
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
.blockstart_6: ; if
    jz .blockend_6
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_6: ; if
    push mem+945
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
    push qword 45
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_7: ; if
    jz .blockend_7
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_seq_popaddr
.blockend_8: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_7: ; if
    push mem+961
    push mem+945
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
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_parser_advance
.blockend_9: ; call
    add rsp, 8
    push mem+945
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
.blockstart_10: ; if
    jz .blockend_10
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_10: ; if
    push mem+945
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
    push qword 45
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_11: ; if
    jz .blockend_11
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_seq_popaddr
.blockend_12: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_11: ; if
    push mem+969
    push mem+945
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
    push mem+945
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
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_dlist_ptrat
.blockend_13: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_dlist_last
.blockend_14: ; call
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    push mem+961
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+969
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 2
    push mem+977
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_blockdata_new
.blockend_15: ; call
.blockstart_16: ; do
    push qword 0
    push mem+929
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_17: ; call
    pop rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp qword rbx
.blockend_17: ; call
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
.blockstart_18: ; if
    jz .blockend_18
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_blockdata_append
.blockend_19: ; call
    pop rax
    pop rbx
    push rax
    push rbx
.blockend_18: ; if
    pop rbx
    test rbx, rbx
    jnz .blockstart_16
.blockend_16: ; do
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_20: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_20
    jmp proc_parser_advance
.blockend_20: ; call
    add rsp, 8
    push mem+945
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
.blockstart_21: ; if
    jz .blockend_21
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_21: ; if
.blockstart_22: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_22
    jmp proc_slmnode_new
.blockend_22: ; call
    push mem+945
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
    push qword 44
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_23: ; if
    jz .blockend_23
    add rsp, 8
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_24: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_24
    jmp proc_seq_popaddr
.blockend_24: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_23: ; if
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_25: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_25
    jmp proc_seq_popaddr
.blockend_25: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_parsenamed:
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push mem+945
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
    push qword 48
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
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
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    push mem+953
    push mem+945
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
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_parser_advance
.blockend_5: ; call
    add rsp, 8
    push mem+945
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
.blockstart_6: ; if
    jz .blockend_6
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_6: ; if
    push mem+945
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
    push qword 21
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_7: ; if
    jz .blockend_7
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_seq_popaddr
.blockend_8: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_7: ; if
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_parser_advance
.blockend_9: ; call
    add rsp, 8
    push mem+945
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
.blockstart_10: ; if
    jz .blockend_10
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_10: ; if
    push mem+945
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
    push qword 45
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_11: ; if
    jz .blockend_11
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_seq_popaddr
.blockend_12: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_11: ; if
    push mem+961
    push mem+945
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
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_parser_advance
.blockend_13: ; call
    add rsp, 8
    push mem+945
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
.blockstart_14: ; if
    jz .blockend_14
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_14: ; if
    push mem+945
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
    push qword 45
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_15: ; if
    jz .blockend_15
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_seq_popaddr
.blockend_16: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_15: ; if
    push mem+969
    push mem+945
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
    push mem+945
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
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_dlist_ptrat
.blockend_17: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_dlist_last
.blockend_18: ; call
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+953
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+961
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+969
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 3
    push mem+977
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_blockdata_new
.blockend_19: ; call
.blockstart_20: ; do
    push qword 0
    push mem+929
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_21: ; call
    pop rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_21
    jmp qword rbx
.blockend_21: ; call
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
.blockstart_22: ; if
    jz .blockend_22
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_23: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_23
    jmp proc_blockdata_append
.blockend_23: ; call
    pop rax
    pop rbx
    push rax
    push rbx
.blockend_22: ; if
    pop rbx
    test rbx, rbx
    jnz .blockstart_20
.blockend_20: ; do
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_24: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_24
    jmp proc_parser_advance
.blockend_24: ; call
    add rsp, 8
    push mem+945
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
.blockstart_25: ; if
    jz .blockend_25
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_25: ; if
.blockstart_26: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_26
    jmp proc_slmnode_new
.blockend_26: ; call
    push mem+945
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
    push qword 44
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_27: ; if
    jz .blockend_27
    add rsp, 8
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_28: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_28
    jmp proc_seq_popaddr
.blockend_28: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_27: ; if
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_29: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_29
    jmp proc_seq_popaddr
.blockend_29: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_parseenum:
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push mem+945
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
    push qword 10
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
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
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    push mem+945
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
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_dlist_ptrat
.blockend_5: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_dlist_last
.blockend_6: ; call
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    push qword 0
    push qword 0
    push qword 4
    push qword 0
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_blockdata_new
.blockend_7: ; call
.blockstart_8: ; do
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_parser_parseword
.blockend_9: ; call
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
.blockstart_10: ; if
    jz .blockend_10
    add rsp, 8
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_parser_parsenum
.blockend_11: ; call
.blockend_10: ; if
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
.blockstart_12: ; if
    jz .blockend_12
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_blockdata_append
.blockend_13: ; call
    pop rax
    pop rbx
    push rax
    push rbx
.blockend_12: ; if
    pop rbx
    test rbx, rbx
    jnz .blockstart_8
.blockend_8: ; do
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_parser_advance
.blockend_14: ; call
    add rsp, 8
    push mem+945
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
.blockstart_15: ; if
    jz .blockend_15
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_15: ; if
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_slmnode_new
.blockend_16: ; call
    push mem+945
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
    push qword 44
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_17: ; if
    jz .blockend_17
    add rsp, 8
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_seq_popaddr
.blockend_18: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_17: ; if
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_seq_popaddr
.blockend_19: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_parseprop:
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push mem+945
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
    push qword 7
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
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
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_parser_advance
.blockend_5: ; call
    add rsp, 8
    push mem+945
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
.blockstart_6: ; if
    jz .blockend_6
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_6: ; if
    push mem+945
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
    push qword 48
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_7: ; if
    jz .blockend_7
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_seq_popaddr
.blockend_8: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_7: ; if
    push mem+985
    push mem+945
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
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_parser_advance
.blockend_9: ; call
    add rsp, 8
    push mem+945
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
.blockstart_10: ; if
    jz .blockend_10
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_10: ; if
    push qword 0
    push mem+945
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
.blockstart_11: ; if
    jz .blockend_11
    add rsp, 8
    push mem+945
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
    push mem+945
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
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_dlist_ptrat
.blockend_12: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
    push mem+985
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 3
    push mem+945
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
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_propdata_new
.blockend_13: ; call
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_slmnode_new
.blockend_14: ; call
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_seq_popaddr
.blockend_15: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_11: ; if
    push mem+945
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
    push qword 45
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
    push mem+945
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
    push mem+945
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
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_dlist_ptrat
.blockend_17: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
    push mem+985
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    push mem+945
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
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_cstr_int
.blockend_18: ; call
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_propdata_new
.blockend_19: ; call
.blockstart_20: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_20
    jmp proc_slmnode_new
.blockend_20: ; call
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_21: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_21
    jmp proc_seq_popaddr
.blockend_21: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_16: ; if
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_22: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_22
    jmp proc_seq_popaddr
.blockend_22: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
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
proc_parser_parseconst:
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push mem+945
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
    push qword 34
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
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
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_parser_advance
.blockend_5: ; call
    add rsp, 8
    push mem+945
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
.blockstart_6: ; if
    jz .blockend_6
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_6: ; if
    push mem+945
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
    push qword 48
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_7: ; if
    jz .blockend_7
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_seq_popaddr
.blockend_8: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_7: ; if
    push mem+985
    push mem+945
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
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_parser_advance
.blockend_9: ; call
    add rsp, 8
    push mem+945
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
.blockstart_10: ; if
    jz .blockend_10
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_10: ; if
    push qword 0
    push mem+945
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
.blockstart_11: ; if
    jz .blockend_11
    add rsp, 8
    push mem+945
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
    push mem+945
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
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_dlist_ptrat
.blockend_12: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
    push mem+985
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 3
    push mem+945
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
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_defdata_new
.blockend_13: ; call
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_slmnode_new
.blockend_14: ; call
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_seq_popaddr
.blockend_15: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_11: ; if
    push mem+945
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
    push qword 45
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
    push mem+945
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
    push mem+945
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
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_dlist_ptrat
.blockend_17: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
    push mem+985
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    push mem+945
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
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_defdata_new
.blockend_18: ; call
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_slmnode_new
.blockend_19: ; call
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_20: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_20
    jmp proc_seq_popaddr
.blockend_20: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_16: ; if
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_21: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_21
    jmp proc_seq_popaddr
.blockend_21: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
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
proc_parser_parsevar:
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push mem+945
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
    push qword 6
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
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
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_parser_advance
.blockend_5: ; call
    add rsp, 8
    push mem+945
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
.blockstart_6: ; if
    jz .blockend_6
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_6: ; if
    push mem+945
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
    push qword 48
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_7: ; if
    jz .blockend_7
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_seq_popaddr
.blockend_8: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_7: ; if
    push mem+985
    push mem+945
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
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_parser_advance
.blockend_9: ; call
    add rsp, 8
    push mem+945
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
.blockstart_10: ; if
    jz .blockend_10
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_10: ; if
    push qword 0
    push mem+945
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
.blockstart_11: ; if
    jz .blockend_11
    add rsp, 8
    push mem+945
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
    push mem+945
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
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_dlist_ptrat
.blockend_12: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
    push mem+985
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 3
    push mem+945
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
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_vardata_new
.blockend_13: ; call
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_slmnode_new
.blockend_14: ; call
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_seq_popaddr
.blockend_15: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_11: ; if
    push mem+945
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
    push qword 45
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
    push mem+945
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
    push mem+945
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
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_dlist_ptrat
.blockend_17: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
    push mem+985
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    push mem+945
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
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_cstr_int
.blockend_18: ; call
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_vardata_new
.blockend_19: ; call
.blockstart_20: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_20
    jmp proc_slmnode_new
.blockend_20: ; call
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_21: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_21
    jmp proc_seq_popaddr
.blockend_21: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_16: ; if
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_22: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_22
    jmp proc_seq_popaddr
.blockend_22: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
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
proc_parser_parseclass:
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+945
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
    push mem+945
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
    push mem+945
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push mem+945
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
    push qword 5
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
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
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_parser_advance
.blockend_5: ; call
    add rsp, 8
    push mem+945
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
.blockstart_6: ; if
    jz .blockend_6
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_6: ; if
    push mem+945
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
    push qword 48
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_7: ; if
    jz .blockend_7
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_seq_popaddr
.blockend_8: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_7: ; if
    push mem+993
    push mem+945
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
    push mem+945
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
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_dlist_ptrat
.blockend_9: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_dlist_last
.blockend_10: ; call
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+993
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    push qword 0
    push qword 0
    push qword 0
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_blockdata_new
.blockend_11: ; call
.blockstart_12: ; do
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_parser_parseproc
.blockend_13: ; call
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
.blockstart_14: ; if
    jz .blockend_14
    add rsp, 8
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_parser_parsecomment
.blockend_15: ; call
.blockend_14: ; if
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
.blockstart_16: ; if
    jz .blockend_16
    add rsp, 8
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_parser_parseenum
.blockend_17: ; call
.blockend_16: ; if
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
.blockstart_18: ; if
    jz .blockend_18
    add rsp, 8
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_parser_parseof
.blockend_19: ; call
.blockend_18: ; if
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
.blockstart_20: ; if
    jz .blockend_20
    add rsp, 8
.blockstart_21: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_21
    jmp proc_parser_parseprop
.blockend_21: ; call
.blockend_20: ; if
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
.blockstart_22: ; if
    jz .blockend_22
    add rsp, 8
.blockstart_23: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_23
    jmp proc_parser_parseconst
.blockend_23: ; call
.blockend_22: ; if
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
.blockstart_24: ; if
    jz .blockend_24
    add rsp, 8
.blockstart_25: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_25
    jmp proc_parser_parsevar
.blockend_25: ; call
.blockend_24: ; if
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
.blockstart_26: ; if
    jz .blockend_26
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_27: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_27
    jmp proc_blockdata_append
.blockend_27: ; call
    pop rax
    pop rbx
    push rax
    push rbx
.blockend_26: ; if
    pop rbx
    test rbx, rbx
    jnz .blockstart_12
.blockend_12: ; do
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_28: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_28
    jmp proc_parser_advance
.blockend_28: ; call
    add rsp, 8
    push mem+945
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
.blockstart_29: ; if
    jz .blockend_29
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_29: ; if
.blockstart_30: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_30
    jmp proc_slmnode_new
.blockend_30: ; call
    push mem+945
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
    push qword 44
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_31: ; if
    jz .blockend_31
.blockstart_32: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_32
    jmp proc_slmnode_print
.blockend_32: ; call
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_33: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_33
    jmp proc_seq_popaddr
.blockend_33: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_31: ; if
    push mem+937
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_34: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_34
    jmp proc_seq_popaddr
.blockend_34: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_parsefile:
    push mem+945
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
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_dlist_ptrat
.blockend_0: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
    jmp proc_dlist_last
.blockend_1: ; call
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+945
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
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_dlist_ptrat
.blockend_2: ; call
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
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_filedata_new
.blockend_3: ; call
.blockstart_4: ; do
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_parser_parseinc
.blockend_5: ; call
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
.blockstart_6: ; if
    jz .blockend_6
    add rsp, 8
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_parser_parseclass
.blockend_7: ; call
.blockend_6: ; if
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
.blockstart_8: ; if
    jz .blockend_8
    add rsp, 8
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_parser_parsecomment
.blockend_9: ; call
.blockend_8: ; if
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
.blockstart_10: ; if
    jz .blockend_10
    add rsp, 8
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_parser_parseproc
.blockend_11: ; call
.blockend_10: ; if
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
.blockstart_12: ; if
    jz .blockend_12
    add rsp, 8
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_parser_parsevar
.blockend_13: ; call
.blockend_12: ; if
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
.blockstart_14: ; if
    jz .blockend_14
    add rsp, 8
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_parser_parseconst
.blockend_15: ; call
.blockend_14: ; if
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
.blockstart_16: ; if
    jz .blockend_16
    add rsp, 8
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_parser_parseenum
.blockend_17: ; call
.blockend_16: ; if
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
.blockstart_18: ; if
    jz .blockend_18
    add rsp, 8
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_parser_parseasm
.blockend_19: ; call
.blockend_18: ; if
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
.blockstart_20: ; if
    jz .blockend_20
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_21: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_21
    jmp proc_filedata_append
.blockend_21: ; call
    pop rax
    pop rbx
    push rax
    push rbx
.blockend_20: ; if
    pop rbx
    test rbx, rbx
    jnz .blockstart_4
.blockend_4: ; do
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
.blockstart_22: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_22
    jmp proc_slmnode_new
.blockend_22: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_parseinblock:
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
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_parser_parsenamed
.blockend_1: ; call
.blockend_0: ; if
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
.blockstart_2: ; if
    jz .blockend_2
    add rsp, 8
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_parser_parsenum
.blockend_3: ; call
.blockend_2: ; if
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
.blockstart_4: ; if
    jz .blockend_4
    add rsp, 8
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_parser_parsecall
.blockend_5: ; call
.blockend_4: ; if
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
.blockstart_6: ; if
    jz .blockend_6
    add rsp, 8
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_parser_parsecomment
.blockend_7: ; call
.blockend_6: ; if
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
.blockstart_8: ; if
    jz .blockend_8
    add rsp, 8
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_parser_parseintr
.blockend_9: ; call
.blockend_8: ; if
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
.blockstart_10: ; if
    jz .blockend_10
    add rsp, 8
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_parser_parseword
.blockend_11: ; call
.blockend_10: ; if
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
.blockstart_12: ; if
    jz .blockend_12
    add rsp, 8
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_parser_parseret
.blockend_13: ; call
.blockend_12: ; if
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
.blockstart_14: ; if
    jz .blockend_14
    add rsp, 8
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_parser_parseif
.blockend_15: ; call
.blockend_14: ; if
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
.blockstart_16: ; if
    jz .blockend_16
    add rsp, 8
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_parser_parseswitch
.blockend_17: ; call
.blockend_16: ; if
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
.blockstart_18: ; if
    jz .blockend_18
    add rsp, 8
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_parser_parselambda
.blockend_19: ; call
.blockend_18: ; if
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
.blockstart_20: ; if
    jz .blockend_20
    add rsp, 8
.blockstart_21: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_21
    jmp proc_parser_parsesim
.blockend_21: ; call
.blockend_20: ; if
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
.blockstart_22: ; if
    jz .blockend_22
    add rsp, 8
.blockstart_23: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_23
    jmp proc_parser_parsedo
.blockend_23: ; call
.blockend_22: ; if
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
.blockstart_24: ; if
    jz .blockend_24
    add rsp, 8
.blockstart_25: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_25
    jmp proc_parser_parsestring
.blockend_25: ; call
.blockend_24: ; if
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
.blockstart_26: ; if
    jz .blockend_26
    add rsp, 8
.blockstart_27: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_27
    jmp proc_parser_parsesstring
.blockend_27: ; call
.blockend_26: ; if
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
.blockstart_28: ; if
    jz .blockend_28
    add rsp, 8
.blockstart_29: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_29
    jmp proc_parser_parseasm
.blockend_29: ; call
.blockend_28: ; if
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_parser_run:
    push str_225
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
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_dlist_len
.blockend_1: ; call
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
    push str_226
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_cstr_println
.blockend_4: ; call
    push mem+937
    push qword 8
    push qword 2048
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_seq_new
.blockend_5: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+929
    push proc_parser_parseinblock
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+945
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_parser_parsefile
.blockend_6: ; call
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_parser_advance
.blockend_7: ; call
    add rsp, 8
    push mem+945
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
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_8: ; if
    jz .blockend_8
    push mem+945
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
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_slmtoken_print
.blockend_9: ; call
    add rsp, 8
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_cstr_cr
.blockend_10: ; call
    push qword 1
    mov rax, 60
    pop rdi
    syscall
.blockend_8: ; if
    push mem+945
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_parser_free
.blockend_11: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_max:
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
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
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
class_writer:
proc_writer_write:
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
    push mem+1001
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_os_write
.blockend_1: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_writer_cr:
    push str_227
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_writer_write
.blockend_0: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_writer_writeln:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_writer_write
.blockend_0: ; call
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_writer_cr
.blockend_1: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_writer_getlen:
    push mem+1025
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1049
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
.blockstart_0: ; do
    push mem+1025
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
    push rbx
    push rax
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 92'
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
    push mem+1049
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
.blockend_1: ; if
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push mem+1025
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
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
    push mem+1049
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_writer_addstr:
    push mem+1025
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1009
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_dlist_len
.blockend_0: ; call
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
    push mem+1009
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1025
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_dlist_append
.blockend_2: ; call
    push mem+1009
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1009
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_dlist_len
.blockend_3: ; call
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_int_cstr
.blockend_4: ; call
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_writer_write
.blockend_5: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_1: ; if
    push qword -1
.blockstart_6: ; do
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1009
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_dlist_ptrat
.blockend_7: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1025
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_str_len
.blockend_8: ; call
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
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_str_len
.blockend_9: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_max
.blockend_10: ; call
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_mem_eq
.blockend_11: ; call
    pop rax
    xor rax, 1
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push mem+1009
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_dlist_len
.blockend_12: ; call
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
    cmovne rcx, rdx
    push rcx
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rbx
    test rbx, rbx
    jnz .blockstart_6
.blockend_6: ; do
    push mem+1009
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_dlist_len
.blockend_13: ; call
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
    push mem+1009
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1025
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_dlist_append
.blockend_15: ; call
    push mem+1009
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1009
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_dlist_len
.blockend_16: ; call
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_int_cstr
.blockend_17: ; call
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_writer_write
.blockend_18: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_14: ; if
    push str_228
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_cstr_println
.blockend_19: ; call
.blockstart_20: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_20
    jmp proc_int_cstr
.blockend_20: ; call
.blockstart_21: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_21
    jmp proc_writer_write
.blockend_21: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_writer_header:
    push str_229
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_writer_write
.blockend_0: ; call
    push str_230
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_writer_write
.blockend_1: ; call
    push str_231
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_writer_write
.blockend_2: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_writer_getescape:
    pop rax
    push rax
    push rax
    push qword 101
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
    push qword 27
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
    pop rax
    push rax
    push rax
    push qword 110
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
    push qword 10
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_1: ; if
    pop rax
    push rax
    push rax
    push qword 114
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
    push qword 13
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    pop rax
    push rax
    push rax
    push qword 116
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
    push qword 9
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_writer_writestring:
    push mem+1025
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
.blockstart_0: ; do
    push mem+1025
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
    push rbx
    push rax
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push mem+1057
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_writer_getescape
.blockend_2: ; call
.blockend_1: ; if
    push mem+1057
    push qword 1
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
    push qword 92'
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push mem+1057
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_int_cstr
.blockend_4: ; call
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_writer_write
.blockend_5: ; call
    push str_232
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_writer_write
.blockend_6: ; call
    push qword 0
.blockend_3: ; if
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push mem+1025
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
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
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
proc_writer_writestrings:
    push mem+1009
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_dlist_len
.blockend_0: ; call
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
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_1: ; if
    push qword 0
.blockstart_2: ; do
    push mem+1009
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_dlist_ptrat
.blockend_3: ; call
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
.blockstart_4: ; if
    jz .blockend_4
    push str_233
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_writer_write
.blockend_5: ; call
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
    jmp proc_int_cstr
.blockend_6: ; call
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_writer_write
.blockend_7: ; call
    push str_234
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_writer_write
.blockend_8: ; call
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_writer_writestring
.blockend_9: ; call
    push str_235
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_writer_write
.blockend_10: ; call
    push mem+1025
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_writer_writeln
.blockend_11: ; call
.blockend_4: ; if
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1009
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_dlist_len
.blockend_12: ; call
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
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_2
.blockend_2: ; do
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_writer_footer:
    push str_236
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_writer_write
.blockend_0: ; call
    push str_237
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_writer_write
.blockend_1: ; call
    push str_238
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_writer_write
.blockend_2: ; call
    push str_239
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_writer_write
.blockend_3: ; call
    push str_240
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_writer_write
.blockend_4: ; call
    push str_241
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_writer_write
.blockend_5: ; call
    push str_242
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_writer_write
.blockend_6: ; call
    push str_243
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_writer_write
.blockend_7: ; call
    push str_244
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_writer_write
.blockend_8: ; call
    push str_245
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_writer_write
.blockend_9: ; call
    push str_246
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_writer_write
.blockend_10: ; call
    push str_247
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_writer_write
.blockend_11: ; call
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_writer_writestrings
.blockend_12: ; call
    push str_248
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_writer_write
.blockend_13: ; call
    push str_249
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_writer_write
.blockend_14: ; call
    push str_250
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_writer_write
.blockend_15: ; call
    push str_251
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_writer_write
.blockend_16: ; call
    push str_252
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_writer_write
.blockend_17: ; call
    push mem+1017
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_int_cstr
.blockend_18: ; call
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_writer_writeln
.blockend_19: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_writer_write32:
    push qword 65535
    pop rax
    pop rbx
    and rax, rbx
    push rax
    push mem+1033
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1033
    push qword 4
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 4
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+1001
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_os_write
.blockend_0: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_writer_write64:
    push mem+1033
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1033
    push qword 8
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+1001
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_os_write
.blockend_0: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_writer_open:
    push qword 511
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 65
    pop rax
    pop rbx
    push rax
    push rbx
    push qword -100
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_os_open
.blockend_0: ; call
    push mem+1001
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1009
    push qword 8
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_dlist_new
.blockend_1: ; call
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
class_hash:
proc_hash_get:
    push mem+1065
    push qword 7
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockstart_0: ; do
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
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push mem+1065
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 31
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1065
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
    push rax
    push rax
    push qword 1
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
    add rsp, 8
    push mem+1065
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_map:
proc_map_new:
    push mem+1082
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
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+1074
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
    imul rax, rbx
    push rax
    push qword 3
    push qword 8
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
    push mem+1066
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1066
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
    push mem+1066
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1082
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1066
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1074
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1066
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_map_valsize:
    push mem+1066
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
    push mem+1066
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
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_map_putat:
    push mem+1082
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
    push mem+1066
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1082
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+1066
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
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_zalloc
.blockend_0: ; call
    push mem+1074
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
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+1066
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
    jmp proc_mem_cpy
.blockend_1: ; call
    push mem+1074
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1066
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
    jmp proc_map_valsize
.blockend_2: ; call
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_mem_cpy
.blockend_3: ; call
    push mem+1074
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1066
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
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_hash_get
.blockend_4: ; call
    push mem+1066
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
    push qword 8
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+1066
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
.blockstart_5: ; if
    jz .blockend_5
    pop rax
    push rax
    push rax
    push mem+1066
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
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_llist_new
.blockend_6: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1074
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_llist_append
.blockend_7: ; call
    add rsp, 8
    add rsp, 8
    push mem+1066
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1074
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_heap_free
.blockend_8: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_5: ; if
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
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_9: ; do
    push mem+1074
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
    add rax, rbx
    push rax
    push mem+1066
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
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_mem_eq
.blockend_10: ; call
    pop rbx
    test rbx, rbx
.blockstart_11: ; if
    jz .blockend_11
    push mem+1074
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
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+1066
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
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_mem_cpy
.blockend_12: ; call
    add rsp, 8
    add rsp, 8
    push mem+1074
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_heap_free
.blockend_13: ; call
    push mem+1066
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_11: ; if
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
    jnz .blockstart_9
.blockend_9: ; do
    add rsp, 8
    push mem+1074
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_llist_append
.blockend_14: ; call
    add rsp, 8
    push mem+1074
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_heap_free
.blockend_15: ; call
    push mem+1066
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_map_eprint:
    pop rax
    push rax
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_int_print
.blockend_0: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_map_comma:
    push mem+1090
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
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
    push str_253
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_print
.blockend_1: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_map_print:
    push mem+1090
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    push str_254
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_print
.blockend_0: ; call
    push mem+1066
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
.blockstart_1: ; do
    pop rax
    push rax
    push rax
    push qword 8
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+1066
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
.blockstart_2: ; if
    jz .blockend_2
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_map_comma
.blockend_3: ; call
    push mem+1090
    push qword 1
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
    push proc_map_eprint
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_llist_print
.blockend_4: ; call
    add rsp, 8
.blockend_2: ; if
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push mem+1066
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
    add rsp, 8
    push str_255
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_cstr_print
.blockend_5: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_map_foreach:
    push mem+1091
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1066
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
.blockstart_0: ; do
    pop rax
    push rax
    push rax
    push qword 8
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+1066
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
.blockstart_1: ; if
    jz .blockend_1
    pop rax
    push rax
    push rax
    push mem+1091
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_llist_foreach
.blockend_2: ; call
.blockend_1: ; if
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push mem+1066
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
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
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
proc_map_free:
    push mem+1066
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
.blockstart_0: ; do
    pop rax
    push rax
    push rax
    push qword 8
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+1066
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
.blockstart_1: ; if
    jz .blockend_1
    pop rax
    push rax
    push rax
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_llist_free
.blockend_2: ; call
.blockend_1: ; if
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push mem+1066
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
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
    push mem+1066
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
proc_map_get:
    push mem+1074
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1066
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1074
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1066
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
    jmp proc_hash_get
.blockend_0: ; call
    push mem+1066
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
    push qword 8
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+1066
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
    add rsp, 8
    push qword 0
    push mem+1066
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
.blockend_1: ; if
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_2: ; do
    push mem+1074
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
    add rax, rbx
    push rax
    push mem+1066
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
    jmp proc_mem_eq
.blockend_3: ; call
    pop rbx
    test rbx, rbx
.blockstart_4: ; if
    jz .blockend_4
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1066
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
    add rax, rbx
    push rax
    push mem+1066
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
.blockend_4: ; if
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
    jnz .blockstart_2
.blockend_2: ; do
    add rsp, 8
    push qword 0
    push mem+1066
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
proc_map_in:
    push mem+1074
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1066
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1074
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1066
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
    jmp proc_hash_get
.blockend_0: ; call
    push mem+1066
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
    push qword 8
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+1066
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
    add rsp, 8
    push qword 0
    push mem+1066
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
.blockend_1: ; if
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_2: ; do
    push mem+1074
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
    add rax, rbx
    push rax
    push mem+1066
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
    jmp proc_mem_eq
.blockend_3: ; call
    pop rbx
    test rbx, rbx
.blockstart_4: ; if
    jz .blockend_4
    add rsp, 8
    push qword 1
    push mem+1066
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
.blockend_4: ; if
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
    jnz .blockstart_2
.blockend_2: ; do
    add rsp, 8
    push qword 0
    push mem+1066
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
proc_map_len:
    push mem+1066
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1082
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
.blockstart_0: ; do
    pop rax
    push rax
    push rax
    push qword 8
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+1066
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
.blockstart_1: ; if
    jz .blockend_1
    pop rax
    push rax
    push rax
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_llist_len
.blockend_2: ; call
    push mem+1082
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1082
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockend_1: ; if
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push mem+1066
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
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
    push mem+1066
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1082
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_simstackentry:
class_simulator:
proc_simulator_getconst:
    push mem+1139
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
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
    jmp proc_map_in
.blockend_0: ; call
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_map_get
.blockend_2: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
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
.blockend_1: ; if
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_simulator_internalname:
    push mem+1229
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1203
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
    push qword 0
.blockstart_0: ; do
    pop rax
    push rax
    push rax
    push mem+1229
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
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push mem+1227
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
    push rax
    push rax
    push qword 47'
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
    push mem+1203
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push str_256
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_str_catc
.blockend_2: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
.blockend_1: ; if
    pop rax
    push rax
    push rax
    push qword 46'
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
    push mem+1203
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push str_257
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_str_catc
.blockend_4: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
.blockend_3: ; if
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
.blockstart_5: ; if
    jz .blockend_5
    push mem+1203
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1227
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_str_catc
.blockend_6: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
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
    push mem+1229
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
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
    push mem+1203
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
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
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_simulator_visitconst:
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
    pop rbx
    push rax
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
.blockstart_0: ; if
    jz .blockend_0
    push mem+1211
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1123
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
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
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_int
.blockend_1: ; call
    push mem+1211
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
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_dlist_append
.blockend_2: ; call
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
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
.blockstart_3: ; if
    jz .blockend_3
    push mem+1211
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 1
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1123
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
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
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1211
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
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_dlist_append
.blockend_4: ; call
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
.blockstart_5: ; if
    jz .blockend_5
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_5: ; if
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_simulator_visitdef:
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
    pop rax
    pop rbx
    push rax
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
.blockstart_0: ; if
    jz .blockend_0
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
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
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_1: ; if
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_simulator_visitprop:
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
    pop rax
    pop rbx
    push rax
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
.blockstart_0: ; if
    jz .blockend_0
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
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
.blockstart_1: ; if
    jz .blockend_1
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_1: ; if
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_simulator_visitvar:
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
    pop rax
    pop rbx
    push rax
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
.blockstart_0: ; if
    jz .blockend_0
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
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
.blockstart_1: ; if
    jz .blockend_1
    add rsp, 8
    add rsp, 8
    push qword 1
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
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_simulator_visitcall:
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_simulator_visitword:
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_simulator_visitintr:
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
    pop rbx
    push rax
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
.blockstart_0: ; if
    jz .blockend_0
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
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
.blockstart_1: ; if
    jz .blockend_1
    pop rax
    push rax
    push rax
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_dlist_pop
.blockend_2: ; call
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
    push mem+1211
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
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_dlist_pop
.blockend_3: ; call
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
    push mem+1211
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
    push mem+1123
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1211
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_dlist_append
.blockend_4: ; call
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_1: ; if
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_simulator_visitinc:
    push mem+1115
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
    push rax
    push rax
    push mem+1195
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
    jmp proc_map_in
.blockend_0: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_1: ; if
    push mem+1195
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push str_258
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_map_putat
.blockend_2: ; call
    add rsp, 8
    push qword 1
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_lexer_new
.blockend_3: ; call
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_lexer_run
.blockend_4: ; call
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_parser_new
.blockend_5: ; call
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_parser_run
.blockend_6: ; call
    push mem+1107
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_7: ; call
    pop rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp qword rbx
.blockend_7: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+1115
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
proc_simulator_visitfile:
    push mem+1115
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
    push qword 0
.blockstart_1: ; do
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 24
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
    push mem+1107
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
.blockstart_3: ; if
    jz .blockend_3
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_slmnode_print
.blockend_4: ; call
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    add rsp, 8
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
proc_simulator_addprochead:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_simulator_visitblock:
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
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
.blockend_0: ; if
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
.blockstart_1: ; if
    jz .blockend_1
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_simulator_addprochead
.blockend_2: ; call
.blockend_1: ; if
    add rsp, 8
    pop rax
    push rax
    push rax
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
.blockstart_3: ; if
    jz .blockend_3
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    push qword 0
.blockstart_4: ; do
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 56
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
    push mem+1107
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_5: ; call
    pop rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp qword rbx
.blockend_5: ; call
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
.blockstart_6: ; if
    jz .blockend_6
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_slmnode_print
.blockend_7: ; call
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_6: ; if
    add rsp, 8
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
    jnz .blockstart_4
.blockend_4: ; do
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
.blockstart_8: ; if
    jz .blockend_8
    push mem+1187
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockend_8: ; if
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_simulator_visitnode:
    push mem+1131
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
    push mem+1131
    push qword 8
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_llist_new
.blockend_1: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1123
    push qword 16
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_dlist_new
.blockend_2: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1139
    push qword 256
    push qword 8
    push qword 64
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_map_new
.blockend_3: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1147
    push qword 256
    push qword 8
    push qword 64
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_map_new
.blockend_4: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1195
    push qword 256
    push qword 8
    push qword 64
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_map_new
.blockend_5: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1203
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_str_new
.blockend_6: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockend_0: ; if
    push mem+1107
    push proc_simulator_visitnode
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
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
.blockstart_7: ; if
    jz .blockend_7
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_7: ; if
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
.blockstart_8: ; if
    jz .blockend_8
    add rsp, 8
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_simulator_visitinc
.blockend_9: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_8: ; if
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
.blockstart_10: ; if
    jz .blockend_10
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_10: ; if
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
.blockstart_11: ; if
    jz .blockend_11
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_11: ; if
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
.blockstart_12: ; if
    jz .blockend_12
    add rsp, 8
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_simulator_visitfile
.blockend_13: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_12: ; if
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
.blockstart_14: ; if
    jz .blockend_14
    add rsp, 8
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_simulator_visitblock
.blockend_15: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_14: ; if
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
.blockstart_16: ; if
    jz .blockend_16
    add rsp, 8
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_simulator_visitconst
.blockend_17: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_16: ; if
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
.blockstart_18: ; if
    jz .blockend_18
    add rsp, 8
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_simulator_visitdef
.blockend_19: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_18: ; if
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
.blockstart_20: ; if
    jz .blockend_20
    add rsp, 8
.blockstart_21: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_21
    jmp proc_simulator_visitintr
.blockend_21: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_20: ; if
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
.blockstart_22: ; if
    jz .blockend_22
    add rsp, 8
.blockstart_23: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_23
    jmp proc_simulator_visitprop
.blockend_23: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_22: ; if
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
.blockstart_24: ; if
    jz .blockend_24
    add rsp, 8
.blockstart_25: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_25
    jmp proc_simulator_visitvar
.blockend_25: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_24: ; if
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
.blockstart_26: ; if
    jz .blockend_26
    add rsp, 8
.blockstart_27: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_27
    jmp proc_simulator_visitcall
.blockend_27: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_26: ; if
    add rsp, 8
.blockstart_28: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_28
    jmp proc_slmnode_print
.blockend_28: ; call
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_assembler:
proc_assembler_getconst:
    push mem+1269
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
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
    jmp proc_map_in
.blockend_0: ; call
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_map_get
.blockend_2: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
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
.blockend_1: ; if
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_assembler_internalname:
    push mem+1415
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1341
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
    push qword 0
.blockstart_0: ; do
    pop rax
    push rax
    push rax
    push mem+1415
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
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push mem+1349
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
    push rax
    push rax
    push qword 47'
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
    push mem+1341
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push str_259
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_str_catc
.blockend_2: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
.blockend_1: ; if
    pop rax
    push rax
    push rax
    push qword 37'
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
    push mem+1341
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push str_260
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_str_catc
.blockend_4: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
.blockend_3: ; if
    pop rax
    push rax
    push rax
    push qword 46'
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
    push mem+1341
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push str_261
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_str_catc
.blockend_6: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
.blockend_5: ; if
    pop rax
    push rax
    push rax
    push qword 95'
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
    push mem+1341
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push str_262
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_str_catc
.blockend_8: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
.blockend_7: ; if
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
.blockstart_9: ; if
    jz .blockend_9
    push mem+1341
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1349
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_str_catc
.blockend_10: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
.blockend_9: ; if
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push mem+1415
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
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
    push mem+1341
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
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
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_assembler_addproctab:
    pop rax
    push rax
    push rax
    push mem+1431
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
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
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
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_mem_eq
.blockend_1: ; call
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push str_263
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_writer_write
.blockend_3: ; call
    push mem+1317
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_writer_write
.blockend_4: ; call
    pop rax
    push rax
    push rax
.blockstart_5: ; do
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
    push qword 95'
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_5
.blockend_5: ; do
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_writer_write
.blockend_6: ; call
    push str_264
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_writer_write
.blockend_7: ; call
    pop rax
    push rax
    push rax
    push str_265
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_writer_write
.blockend_8: ; call
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_writer_writeln
.blockend_9: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_assembler_visitof:
    push mem+1431
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1277
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push proc_assembler_addproctab
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_map_foreach
.blockend_0: ; call
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_assembler_addwordproc:
    push mem+1277
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1351
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_map_get
.blockend_0: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
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
.blockstart_1: ; if
    jz .blockend_1
    push str_266
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_writer_write
.blockend_2: ; call
    push mem+1351
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_writer_writeln
.blockend_3: ; call
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_1: ; if
    push str_267
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_writer_write
.blockend_4: ; call
    push mem+1301
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
    jmp proc_writer_write
.blockend_6: ; call
    push str_268
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_writer_writeln
.blockend_7: ; call
    push str_269
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_writer_write
.blockend_8: ; call
    push str_270
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_writer_write
.blockend_9: ; call
    push str_271
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_writer_write
.blockend_10: ; call
    push str_272
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_writer_write
.blockend_11: ; call
    push mem+1301
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_int_cstr
.blockend_12: ; call
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_writer_writeln
.blockend_13: ; call
    push str_273
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_writer_write
.blockend_14: ; call
    push mem+1351
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_writer_writeln
.blockend_15: ; call
    push str_274
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_writer_write
.blockend_16: ; call
    push mem+1301
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_int_cstr
.blockend_17: ; call
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_writer_write
.blockend_18: ; call
    push str_275
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_writer_writeln
.blockend_19: ; call
    push mem+1301
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_assembler_visitword:
    push mem+1423
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
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
    push rax
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_str_sput
.blockend_1: ; call
    add rsp, 8
    push mem+1423
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_assembler_internalname
.blockend_2: ; call
    add rsp, 8
    push mem+1351
    push qword 64
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_mem_zero
.blockend_3: ; call
    push mem+1351
    push mem+1341
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_cstr_cpy
.blockend_4: ; call
    add rsp, 8
    add rsp, 8
    push mem+1269
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_map_in
.blockend_5: ; call
    pop rbx
    test rbx, rbx
.blockstart_6: ; if
    jz .blockend_6
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_map_get
.blockend_7: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push str_276
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_writer_write
.blockend_8: ; call
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_int_cstr
.blockend_9: ; call
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_writer_write
.blockend_10: ; call
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_writer_cr
.blockend_11: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_6: ; if
    add rsp, 8
    push mem+1285
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_map_in
.blockend_12: ; call
    pop rbx
    test rbx, rbx
.blockstart_13: ; if
    jz .blockend_13
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_map_get
.blockend_14: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push str_277
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_writer_write
.blockend_15: ; call
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_int_cstr
.blockend_16: ; call
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_writer_write
.blockend_17: ; call
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_writer_cr
.blockend_18: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_13: ; if
    add rsp, 8
    push mem+1277
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1351
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_map_in
.blockend_19: ; call
    pop rbx
    test rbx, rbx
.blockstart_20: ; if
    jz .blockend_20
    add rsp, 8
    add rsp, 8
.blockstart_21: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_21
    jmp proc_assembler_addwordproc
.blockend_21: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_20: ; if
    add rsp, 8
    add rsp, 8
    push str_278
.blockstart_22: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_22
    jmp proc_writer_write
.blockend_22: ; call
    push mem+1341
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_23: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_23
    jmp proc_writer_writeln
.blockend_23: ; call
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_assembler_visitconst:
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
    pop rbx
    push rax
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
.blockstart_0: ; if
    jz .blockend_0
    push str_279
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_writer_write
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
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_writer_write
.blockend_2: ; call
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_writer_cr
.blockend_3: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
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
.blockstart_4: ; if
    jz .blockend_4
    push str_280
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_writer_write
.blockend_5: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_writer_addstr
.blockend_6: ; call
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_writer_cr
.blockend_7: ; call
    add rsp, 8
    push qword 0
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
.blockstart_8: ; if
    jz .blockend_8
    push str_281
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_writer_write
.blockend_9: ; call
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
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_writer_getlen
.blockend_10: ; call
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_int_cstr
.blockend_11: ; call
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_writer_writeln
.blockend_12: ; call
    push str_282
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_writer_write
.blockend_13: ; call
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
    jmp proc_writer_addstr
.blockend_14: ; call
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_writer_cr
.blockend_15: ; call
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_8: ; if
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
.blockstart_16: ; if
    jz .blockend_16
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    push qword 16
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
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_assembler_visitword
.blockend_17: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_16: ; if
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_assembler_getfullname:
    push mem+1447
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
    push mem+1447
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
.blockend_0: ; if
    push mem+1447
    push qword 64
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_heap_zalloc
.blockend_2: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1447
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1317
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
.blockstart_3: ; if
    jz .blockend_3
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_cstr_cpy
.blockend_4: ; call
    push mem+1447
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push str_283
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_cstr_cat
.blockend_5: ; call
    add rsp, 8
.blockend_3: ; if
    add rsp, 8
    add rsp, 8
    push mem+1447
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
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
    jmp proc_cstr_cat
.blockend_6: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_assembler_visitdef:
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
    pop rax
    pop rbx
    push rax
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
.blockstart_0: ; if
    jz .blockend_0
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
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_assembler_getfullname
.blockend_1: ; call
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
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_int
.blockend_2: ; call
    push mem+1455
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1269
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1447
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1455
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_map_putat
.blockend_3: ; call
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_assembler_visitprop:
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
    pop rax
    pop rbx
    push rax
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
.blockstart_0: ; if
    jz .blockend_0
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
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_assembler_getfullname
.blockend_1: ; call
    push mem+1269
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1447
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1293
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_map_putat
.blockend_2: ; call
    add rsp, 8
    push mem+1293
    pop rax
    pop rbx
    push rbx
    push rax
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
    push mem+1293
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
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
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_assembler_getfullname
.blockend_4: ; call
    push mem+1269
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1447
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1293
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_map_putat
.blockend_5: ; call
    add rsp, 8
    push mem+1293
    pop rax
    pop rbx
    push rbx
    push rax
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
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_assembler_getconst
.blockend_6: ; call
    push mem+1293
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
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
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_assembler_visitvar:
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
    pop rax
    pop rbx
    push rax
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
.blockstart_0: ; if
    jz .blockend_0
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
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_assembler_getfullname
.blockend_1: ; call
    push mem+1285
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1447
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1017
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_map_putat
.blockend_2: ; call
    add rsp, 8
    push mem+1017
    pop rax
    pop rbx
    push rbx
    push rax
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
    push mem+1017
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
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
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_assembler_getfullname
.blockend_4: ; call
    push mem+1285
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1447
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1017
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_map_putat
.blockend_5: ; call
    add rsp, 8
    push mem+1017
    pop rax
    pop rbx
    push rbx
    push rax
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
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_assembler_getconst
.blockend_6: ; call
    push mem+1017
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
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
proc_assembler_visitcall:
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
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_284
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_eq
.blockend_0: ; call
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    add rsp, 8
    push str_285
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_writer_write
.blockend_2: ; call
    push mem+1301
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_int_cstr
.blockend_3: ; call
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_writer_write
.blockend_4: ; call
    push str_286
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_writer_writeln
.blockend_5: ; call
    push str_287
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_writer_write
.blockend_6: ; call
    push str_288
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_writer_write
.blockend_7: ; call
    push str_289
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_writer_write
.blockend_8: ; call
    push str_290
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_writer_write
.blockend_9: ; call
    push str_291
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_writer_write
.blockend_10: ; call
    push mem+1301
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_int_cstr
.blockend_11: ; call
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_writer_writeln
.blockend_12: ; call
    push str_292
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_writer_write
.blockend_13: ; call
    push str_293
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_writer_write
.blockend_14: ; call
    push mem+1301
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_int_cstr
.blockend_15: ; call
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_writer_write
.blockend_16: ; call
    push str_294
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_writer_writeln
.blockend_17: ; call
    push mem+1301
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_1: ; if
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_assembler_internalname
.blockend_18: ; call
    push mem+1495
    push qword 64
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_mem_zero
.blockend_19: ; call
    push mem+1495
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_20: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_20
    jmp proc_cstr_cpy
.blockend_20: ; call
    add rsp, 8
    add rsp, 8
    push mem+1277
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1495
.blockstart_21: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_21
    jmp proc_map_in
.blockend_21: ; call
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
.blockstart_22: ; if
    jz .blockend_22
    push mem+1495
.blockstart_23: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_23
    jmp proc_cstr_println
.blockend_23: ; call
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_22: ; if
    push mem+1277
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1495
.blockstart_24: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_24
    jmp proc_map_get
.blockend_24: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
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
.blockstart_25: ; if
    jz .blockend_25
    push str_295
.blockstart_26: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_26
    jmp proc_writer_write
.blockend_26: ; call
    push mem+1495
.blockstart_27: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_27
    jmp proc_writer_writeln
.blockend_27: ; call
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_25: ; if
    push str_296
.blockstart_28: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_28
    jmp proc_writer_write
.blockend_28: ; call
    push mem+1301
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_29: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_29
    jmp proc_int_cstr
.blockend_29: ; call
.blockstart_30: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_30
    jmp proc_writer_write
.blockend_30: ; call
    push str_297
.blockstart_31: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_31
    jmp proc_writer_writeln
.blockend_31: ; call
    push str_298
.blockstart_32: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_32
    jmp proc_writer_write
.blockend_32: ; call
    push str_299
.blockstart_33: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_33
    jmp proc_writer_write
.blockend_33: ; call
    push str_300
.blockstart_34: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_34
    jmp proc_writer_write
.blockend_34: ; call
    push str_301
.blockstart_35: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_35
    jmp proc_writer_write
.blockend_35: ; call
    push mem+1301
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_36: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_36
    jmp proc_int_cstr
.blockend_36: ; call
.blockstart_37: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_37
    jmp proc_writer_writeln
.blockend_37: ; call
    push str_302
.blockstart_38: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_38
    jmp proc_writer_write
.blockend_38: ; call
    push mem+1495
.blockstart_39: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_39
    jmp proc_writer_writeln
.blockend_39: ; call
    push str_303
.blockstart_40: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_40
    jmp proc_writer_write
.blockend_40: ; call
    push mem+1301
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_41: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_41
    jmp proc_int_cstr
.blockend_41: ; call
.blockstart_42: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_42
    jmp proc_writer_write
.blockend_42: ; call
    push str_304
.blockstart_43: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_43
    jmp proc_writer_writeln
.blockend_43: ; call
    push mem+1301
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
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_assembler_visitintr:
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
    pop rbx
    push rax
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
.blockstart_0: ; if
    jz .blockend_0
    push str_305
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_writer_write
.blockend_1: ; call
    push str_306
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_writer_write
.blockend_2: ; call
    push str_307
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_writer_write
.blockend_3: ; call
    push str_308
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_writer_write
.blockend_4: ; call
    push str_309
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_writer_write
.blockend_5: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
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
.blockstart_6: ; if
    jz .blockend_6
    push mem+1487
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_seq_len
.blockend_7: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    push qword 2
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_seq_getaddr
.blockend_8: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    push str_310
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_writer_write
.blockend_9: ; call
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_int_cstr
.blockend_10: ; call
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_writer_writeln
.blockend_11: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_6: ; if
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
.blockstart_12: ; if
    jz .blockend_12
    push str_311
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_writer_write
.blockend_13: ; call
    push str_312
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_writer_write
.blockend_14: ; call
    push str_313
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_writer_write
.blockend_15: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_12: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 26
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
    push str_314
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_writer_write
.blockend_17: ; call
    push str_315
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_writer_write
.blockend_18: ; call
    push str_316
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_writer_write
.blockend_19: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_16: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 25
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
    push str_317
.blockstart_21: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_21
    jmp proc_writer_write
.blockend_21: ; call
    push str_318
.blockstart_22: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_22
    jmp proc_writer_write
.blockend_22: ; call
    push str_319
.blockstart_23: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_23
    jmp proc_writer_write
.blockend_23: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_20: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 27
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
    push str_320
.blockstart_25: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_25
    jmp proc_writer_write
.blockend_25: ; call
    push str_321
.blockstart_26: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_26
    jmp proc_writer_write
.blockend_26: ; call
    push str_322
.blockstart_27: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_27
    jmp proc_writer_write
.blockend_27: ; call
    push str_323
.blockstart_28: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_28
    jmp proc_writer_write
.blockend_28: ; call
    push str_324
.blockstart_29: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_29
    jmp proc_writer_write
.blockend_29: ; call
    push str_325
.blockstart_30: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_30
    jmp proc_writer_write
.blockend_30: ; call
    push str_326
.blockstart_31: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_31
    jmp proc_writer_write
.blockend_31: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_24: ; if
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
.blockstart_32: ; if
    jz .blockend_32
    push str_327
.blockstart_33: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_33
    jmp proc_writer_write
.blockend_33: ; call
    push str_328
.blockstart_34: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_34
    jmp proc_writer_write
.blockend_34: ; call
    push str_329
.blockstart_35: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_35
    jmp proc_writer_write
.blockend_35: ; call
    push str_330
.blockstart_36: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_36
    jmp proc_writer_write
.blockend_36: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_32: ; if
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
.blockstart_37: ; if
    jz .blockend_37
    push str_331
.blockstart_38: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_38
    jmp proc_writer_write
.blockend_38: ; call
    push str_332
.blockstart_39: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_39
    jmp proc_writer_write
.blockend_39: ; call
    push str_333
.blockstart_40: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_40
    jmp proc_writer_write
.blockend_40: ; call
    push str_334
.blockstart_41: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_41
    jmp proc_writer_write
.blockend_41: ; call
    push str_335
.blockstart_42: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_42
    jmp proc_writer_write
.blockend_42: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_37: ; if
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
.blockstart_43: ; if
    jz .blockend_43
    push str_336
.blockstart_44: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_44
    jmp proc_writer_write
.blockend_44: ; call
    push str_337
.blockstart_45: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_45
    jmp proc_writer_write
.blockend_45: ; call
    push str_338
.blockstart_46: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_46
    jmp proc_writer_write
.blockend_46: ; call
    push str_339
.blockstart_47: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_47
    jmp proc_writer_write
.blockend_47: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_43: ; if
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
.blockstart_48: ; if
    jz .blockend_48
    push str_340
.blockstart_49: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_49
    jmp proc_writer_write
.blockend_49: ; call
    push str_341
.blockstart_50: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_50
    jmp proc_writer_write
.blockend_50: ; call
    push str_342
.blockstart_51: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_51
    jmp proc_writer_write
.blockend_51: ; call
    push str_343
.blockstart_52: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_52
    jmp proc_writer_write
.blockend_52: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_48: ; if
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
.blockstart_53: ; if
    jz .blockend_53
    push str_344
.blockstart_54: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_54
    jmp proc_writer_write
.blockend_54: ; call
    push str_345
.blockstart_55: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_55
    jmp proc_writer_write
.blockend_55: ; call
    push str_346
.blockstart_56: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_56
    jmp proc_writer_write
.blockend_56: ; call
    push str_347
.blockstart_57: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_57
    jmp proc_writer_write
.blockend_57: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_53: ; if
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
.blockstart_58: ; if
    jz .blockend_58
    push str_348
.blockstart_59: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_59
    jmp proc_writer_write
.blockend_59: ; call
    push str_349
.blockstart_60: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_60
    jmp proc_writer_write
.blockend_60: ; call
    push str_350
.blockstart_61: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_61
    jmp proc_writer_write
.blockend_61: ; call
    push str_351
.blockstart_62: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_62
    jmp proc_writer_write
.blockend_62: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_58: ; if
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
.blockstart_63: ; if
    jz .blockend_63
    push str_352
.blockstart_64: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_64
    jmp proc_writer_write
.blockend_64: ; call
    push str_353
.blockstart_65: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_65
    jmp proc_writer_write
.blockend_65: ; call
    push str_354
.blockstart_66: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_66
    jmp proc_writer_write
.blockend_66: ; call
    push str_355
.blockstart_67: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_67
    jmp proc_writer_write
.blockend_67: ; call
    push str_356
.blockstart_68: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_68
    jmp proc_writer_write
.blockend_68: ; call
    push str_357
.blockstart_69: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_69
    jmp proc_writer_write
.blockend_69: ; call
    push str_358
.blockstart_70: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_70
    jmp proc_writer_write
.blockend_70: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_63: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
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
.blockstart_71: ; if
    jz .blockend_71
    push str_359
.blockstart_72: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_72
    jmp proc_writer_write
.blockend_72: ; call
    push str_360
.blockstart_73: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_73
    jmp proc_writer_write
.blockend_73: ; call
    push str_361
.blockstart_74: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_74
    jmp proc_writer_write
.blockend_74: ; call
    push str_362
.blockstart_75: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_75
    jmp proc_writer_write
.blockend_75: ; call
    push str_363
.blockstart_76: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_76
    jmp proc_writer_write
.blockend_76: ; call
    push str_364
.blockstart_77: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_77
    jmp proc_writer_write
.blockend_77: ; call
    push str_365
.blockstart_78: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_78
    jmp proc_writer_write
.blockend_78: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_71: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 20
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_79: ; if
    jz .blockend_79
    push str_366
.blockstart_80: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_80
    jmp proc_writer_write
.blockend_80: ; call
    push str_367
.blockstart_81: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_81
    jmp proc_writer_write
.blockend_81: ; call
    push str_368
.blockstart_82: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_82
    jmp proc_writer_write
.blockend_82: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_79: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 19
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_83: ; if
    jz .blockend_83
    push str_369
.blockstart_84: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_84
    jmp proc_writer_write
.blockend_84: ; call
    push str_370
.blockstart_85: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_85
    jmp proc_writer_write
.blockend_85: ; call
    push str_371
.blockstart_86: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_86
    jmp proc_writer_write
.blockend_86: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_83: ; if
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
.blockstart_87: ; if
    jz .blockend_87
    push str_372
.blockstart_88: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_88
    jmp proc_writer_write
.blockend_88: ; call
    push str_373
.blockstart_89: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_89
    jmp proc_writer_write
.blockend_89: ; call
    push str_374
.blockstart_90: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_90
    jmp proc_writer_write
.blockend_90: ; call
    push str_375
.blockstart_91: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_91
    jmp proc_writer_write
.blockend_91: ; call
    push str_376
.blockstart_92: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_92
    jmp proc_writer_write
.blockend_92: ; call
    push str_377
.blockstart_93: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_93
    jmp proc_writer_write
.blockend_93: ; call
    push str_378
.blockstart_94: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_94
    jmp proc_writer_write
.blockend_94: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_87: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
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
.blockstart_95: ; if
    jz .blockend_95
    push str_379
.blockstart_96: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_96
    jmp proc_writer_write
.blockend_96: ; call
    push str_380
.blockstart_97: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_97
    jmp proc_writer_write
.blockend_97: ; call
    push str_381
.blockstart_98: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_98
    jmp proc_writer_write
.blockend_98: ; call
    push str_382
.blockstart_99: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_99
    jmp proc_writer_write
.blockend_99: ; call
    push str_383
.blockstart_100: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_100
    jmp proc_writer_write
.blockend_100: ; call
    push str_384
.blockstart_101: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_101
    jmp proc_writer_write
.blockend_101: ; call
    push str_385
.blockstart_102: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_102
    jmp proc_writer_write
.blockend_102: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_95: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 18
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_103: ; if
    jz .blockend_103
    push str_386
.blockstart_104: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_104
    jmp proc_writer_write
.blockend_104: ; call
    push str_387
.blockstart_105: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_105
    jmp proc_writer_write
.blockend_105: ; call
    push str_388
.blockstart_106: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_106
    jmp proc_writer_write
.blockend_106: ; call
    push str_389
.blockstart_107: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_107
    jmp proc_writer_write
.blockend_107: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_103: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 21
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_108: ; if
    jz .blockend_108
    push str_390
.blockstart_109: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_109
    jmp proc_writer_write
.blockend_109: ; call
    push str_391
.blockstart_110: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_110
    jmp proc_writer_write
.blockend_110: ; call
    push str_392
.blockstart_111: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_111
    jmp proc_writer_write
.blockend_111: ; call
    push str_393
.blockstart_112: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_112
    jmp proc_writer_write
.blockend_112: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_108: ; if
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
.blockstart_113: ; if
    jz .blockend_113
    push str_394
.blockstart_114: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_114
    jmp proc_writer_write
.blockend_114: ; call
    push str_395
.blockstart_115: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_115
    jmp proc_writer_write
.blockend_115: ; call
    push str_396
.blockstart_116: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_116
    jmp proc_writer_write
.blockend_116: ; call
    push str_397
.blockstart_117: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_117
    jmp proc_writer_write
.blockend_117: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_113: ; if
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
.blockstart_118: ; if
    jz .blockend_118
    push str_398
.blockstart_119: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_119
    jmp proc_writer_write
.blockend_119: ; call
    push str_399
.blockstart_120: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_120
    jmp proc_writer_write
.blockend_120: ; call
    push str_400
.blockstart_121: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_121
    jmp proc_writer_write
.blockend_121: ; call
    push str_401
.blockstart_122: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_122
    jmp proc_writer_write
.blockend_122: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_118: ; if
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
.blockstart_123: ; if
    jz .blockend_123
    push str_402
.blockstart_124: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_124
    jmp proc_writer_write
.blockend_124: ; call
    push str_403
.blockstart_125: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_125
    jmp proc_writer_write
.blockend_125: ; call
    push str_404
.blockstart_126: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_126
    jmp proc_writer_write
.blockend_126: ; call
    push str_405
.blockstart_127: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_127
    jmp proc_writer_write
.blockend_127: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_123: ; if
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
.blockstart_128: ; if
    jz .blockend_128
    push str_406
.blockstart_129: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_129
    jmp proc_writer_write
.blockend_129: ; call
    push str_407
.blockstart_130: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_130
    jmp proc_writer_write
.blockend_130: ; call
    push str_408
.blockstart_131: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_131
    jmp proc_writer_write
.blockend_131: ; call
    push str_409
.blockstart_132: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_132
    jmp proc_writer_write
.blockend_132: ; call
    push str_410
.blockstart_133: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_133
    jmp proc_writer_write
.blockend_133: ; call
    push str_411
.blockstart_134: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_134
    jmp proc_writer_write
.blockend_134: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_128: ; if
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
.blockstart_135: ; if
    jz .blockend_135
    push str_412
.blockstart_136: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_136
    jmp proc_writer_write
.blockend_136: ; call
    push str_413
.blockstart_137: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_137
    jmp proc_writer_write
.blockend_137: ; call
    push str_414
.blockstart_138: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_138
    jmp proc_writer_write
.blockend_138: ; call
    push str_415
.blockstart_139: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_139
    jmp proc_writer_write
.blockend_139: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_135: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 28
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_140: ; if
    jz .blockend_140
    push str_416
.blockstart_141: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_141
    jmp proc_writer_write
.blockend_141: ; call
    push str_417
.blockstart_142: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_142
    jmp proc_writer_write
.blockend_142: ; call
    push str_418
.blockstart_143: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_143
    jmp proc_writer_write
.blockend_143: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_140: ; if
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
.blockstart_144: ; if
    jz .blockend_144
    push str_419
.blockstart_145: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_145
    jmp proc_writer_write
.blockend_145: ; call
    push str_420
.blockstart_146: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_146
    jmp proc_writer_write
.blockend_146: ; call
    push str_421
.blockstart_147: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_147
    jmp proc_writer_write
.blockend_147: ; call
    push str_422
.blockstart_148: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_148
    jmp proc_writer_write
.blockend_148: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_144: ; if
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
.blockstart_149: ; if
    jz .blockend_149
    push str_423
.blockstart_150: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_150
    jmp proc_writer_write
.blockend_150: ; call
    push str_424
.blockstart_151: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_151
    jmp proc_writer_write
.blockend_151: ; call
    push str_425
.blockstart_152: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_152
    jmp proc_writer_write
.blockend_152: ; call
    push str_426
.blockstart_153: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_153
    jmp proc_writer_write
.blockend_153: ; call
    push str_427
.blockstart_154: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_154
    jmp proc_writer_write
.blockend_154: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_149: ; if
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
.blockstart_155: ; if
    jz .blockend_155
    push str_428
.blockstart_156: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_156
    jmp proc_writer_write
.blockend_156: ; call
    push str_429
.blockstart_157: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_157
    jmp proc_writer_write
.blockend_157: ; call
    push str_430
.blockstart_158: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_158
    jmp proc_writer_write
.blockend_158: ; call
    push str_431
.blockstart_159: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_159
    jmp proc_writer_write
.blockend_159: ; call
    push str_432
.blockstart_160: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_160
    jmp proc_writer_write
.blockend_160: ; call
    push str_433
.blockstart_161: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_161
    jmp proc_writer_write
.blockend_161: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_155: ; if
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
.blockstart_162: ; if
    jz .blockend_162
    push str_434
.blockstart_163: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_163
    jmp proc_writer_write
.blockend_163: ; call
    push str_435
.blockstart_164: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_164
    jmp proc_writer_write
.blockend_164: ; call
    push str_436
.blockstart_165: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_165
    jmp proc_writer_write
.blockend_165: ; call
    push str_437
.blockstart_166: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_166
    jmp proc_writer_write
.blockend_166: ; call
    push str_438
.blockstart_167: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_167
    jmp proc_writer_write
.blockend_167: ; call
    push str_439
.blockstart_168: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_168
    jmp proc_writer_write
.blockend_168: ; call
    push str_440
.blockstart_169: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_169
    jmp proc_writer_write
.blockend_169: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_162: ; if
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
.blockstart_170: ; if
    jz .blockend_170
    push str_441
.blockstart_171: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_171
    jmp proc_writer_write
.blockend_171: ; call
    push str_442
.blockstart_172: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_172
    jmp proc_writer_write
.blockend_172: ; call
    push str_443
.blockstart_173: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_173
    jmp proc_writer_write
.blockend_173: ; call
    push str_444
.blockstart_174: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_174
    jmp proc_writer_write
.blockend_174: ; call
    push str_445
.blockstart_175: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_175
    jmp proc_writer_write
.blockend_175: ; call
    push str_446
.blockstart_176: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_176
    jmp proc_writer_write
.blockend_176: ; call
    push str_447
.blockstart_177: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_177
    jmp proc_writer_write
.blockend_177: ; call
    push str_448
.blockstart_178: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_178
    jmp proc_writer_write
.blockend_178: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_170: ; if
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
.blockstart_179: ; if
    jz .blockend_179
    push str_449
.blockstart_180: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_180
    jmp proc_writer_write
.blockend_180: ; call
    push str_450
.blockstart_181: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_181
    jmp proc_writer_write
.blockend_181: ; call
    push str_451
.blockstart_182: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_182
    jmp proc_writer_write
.blockend_182: ; call
    push str_452
.blockstart_183: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_183
    jmp proc_writer_write
.blockend_183: ; call
    push str_453
.blockstart_184: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_184
    jmp proc_writer_write
.blockend_184: ; call
    push str_454
.blockstart_185: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_185
    jmp proc_writer_write
.blockend_185: ; call
    push str_455
.blockstart_186: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_186
    jmp proc_writer_write
.blockend_186: ; call
    push str_456
.blockstart_187: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_187
    jmp proc_writer_write
.blockend_187: ; call
    push str_457
.blockstart_188: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_188
    jmp proc_writer_write
.blockend_188: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_179: ; if
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
.blockstart_189: ; if
    jz .blockend_189
    push str_458
.blockstart_190: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_190
    jmp proc_writer_write
.blockend_190: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_189: ; if
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
.blockstart_191: ; if
    jz .blockend_191
    push str_459
.blockstart_192: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_192
    jmp proc_writer_write
.blockend_192: ; call
    push str_460
.blockstart_193: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_193
    jmp proc_writer_write
.blockend_193: ; call
    push str_461
.blockstart_194: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_194
    jmp proc_writer_write
.blockend_194: ; call
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_191: ; if
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_assembler_visitasm:
    push str_462
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_writer_write
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
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_writer_write
.blockend_1: ; call
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_writer_cr
.blockend_2: ; call
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_assembler_visitinc:
    push mem+1261
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
    push rax
    push rax
    push mem+1333
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
    jmp proc_map_in
.blockend_0: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_1: ; if
    push mem+1333
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push str_463
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_map_putat
.blockend_2: ; call
    add rsp, 8
    push qword 1
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_lexer_new
.blockend_3: ; call
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_lexer_run
.blockend_4: ; call
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_parser_new
.blockend_5: ; call
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_parser_run
.blockend_6: ; call
    push mem+1253
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_7: ; call
    pop rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp qword rbx
.blockend_7: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+1261
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
proc_assembler_visitfile:
    push str_464
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
    jmp proc_cstr_println
.blockend_1: ; call
    push mem+1261
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
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_2: ; if
    push qword 0
.blockstart_3: ; do
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 24
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
    push mem+1253
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_4: ; call
    pop rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp qword rbx
.blockend_4: ; call
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
.blockstart_5: ; if
    jz .blockend_5
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_slmnode_print
.blockend_6: ; call
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_cstr_cr
.blockend_7: ; call
    add rsp, 8
    add rsp, 8
    push qword 1
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
    jnz .blockstart_3
.blockend_3: ; do
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_assembler_addprochead:
    push mem+1471
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
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push mem+1463
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 40
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
    push mem+1301
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push str_465
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_writer_write
.blockend_0: ; call
    push mem+1317
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
.blockstart_1: ; if
    jz .blockend_1
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_assembler_internalname
.blockend_2: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1471
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_str_catc
.blockend_3: ; call
    push str_466
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_str_catc
.blockend_4: ; call
.blockend_1: ; if
    add rsp, 8
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
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_assembler_internalname
.blockend_5: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1471
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_str_catc
.blockend_6: ; call
    add rsp, 8
    push mem+1471
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
    push mem+1351
    push qword 64
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_mem_zero
.blockend_7: ; call
    push mem+1351
    push mem+1471
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_cstr_cpy
.blockend_8: ; call
    add rsp, 8
    add rsp, 8
    push mem+1277
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1351
    push mem+1463
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_map_putat
.blockend_9: ; call
    add rsp, 8
    push mem+1471
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_writer_write
.blockend_10: ; call
    push str_467
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_writer_writeln
.blockend_11: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_assembler_visitenum:
    pop rax
    push rax
    push rax
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
    push mem+1479
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
.blockstart_1: ; do
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 56
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
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_int
.blockend_3: ; call
    push mem+1479
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
.blockstart_4: ; if
    jz .blockend_4
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
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_assembler_getfullname
.blockend_5: ; call
    push mem+1269
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1447
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1479
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_map_putat
.blockend_6: ; call
    add rsp, 8
    push mem+1479
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
.blockend_4: ; if
    add rsp, 8
    add rsp, 8
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
proc_assembler_visitsim:
    pop rax
    push rax
    push rax
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
    push qword 0
.blockstart_1: ; do
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 56
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
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_simulator_visitnode
.blockend_2: ; call
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
.blockstart_3: ; if
    jz .blockend_3
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_slmnode_print
.blockend_4: ; call
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_cstr_cr
.blockend_5: ; call
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_3: ; if
    add rsp, 8
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
    jnz .blockstart_1
.blockend_1: ; do
    add rsp, 8
    add rsp, 8
    push mem+1123
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_6: ; do
    push qword 0
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_dlist_pop
.blockend_7: ; call
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
    push str_468
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_writer_write
.blockend_10: ; call
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
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_int_cstr
.blockend_11: ; call
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_writer_writeln
.blockend_12: ; call
    push qword -1
.blockend_9: ; if
    push qword -1
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_13: ; if
    jz .blockend_13
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_13: ; if
    add rsp, 8
    add rsp, 8
    push qword 0
    push qword 1
.blockend_8: ; if
    add rsp, 8
    pop rbx
    test rbx, rbx
    jnz .blockstart_6
.blockend_6: ; do
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_assembler_visitblock:
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
.blockstart_0: ; if
    jz .blockend_0
    add rsp, 8
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_assembler_visitsim
.blockend_1: ; call
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
    push mem+1293
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push str_469
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_writer_write
.blockend_3: ; call
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
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_assembler_internalname
.blockend_4: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_writer_write
.blockend_5: ; call
    push str_470
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_writer_writeln
.blockend_6: ; call
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
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1317
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
    jmp proc_assembler_addprochead
.blockend_8: ; call
.blockend_7: ; if
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
.blockstart_9: ; if
    jz .blockend_9
    add rsp, 8
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_assembler_visitenum
.blockend_10: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_9: ; if
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
.blockstart_11: ; if
    jz .blockend_11
    push str_471
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_writer_write
.blockend_12: ; call
    push str_472
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_writer_write
.blockend_13: ; call
    push str_473
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_writer_write
.blockend_14: ; call
    push mem+1301
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_int_cstr
.blockend_15: ; call
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_writer_write
.blockend_16: ; call
    push str_474
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_writer_writeln
.blockend_17: ; call
    push str_475
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_writer_write
.blockend_18: ; call
    push mem+1301
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_int_cstr
.blockend_19: ; call
.blockstart_20: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_20
    jmp proc_writer_writeln
.blockend_20: ; call
    push mem+1487
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1301
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_21: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_21
    jmp proc_seq_pushint
.blockend_21: ; call
    add rsp, 8
    push mem+1301
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
.blockend_11: ; if
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
.blockstart_22: ; if
    jz .blockend_22
    push str_476
.blockstart_23: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_23
    jmp proc_writer_write
.blockend_23: ; call
    push mem+1301
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_24: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_24
    jmp proc_int_cstr
.blockend_24: ; call
.blockstart_25: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_25
    jmp proc_writer_write
.blockend_25: ; call
    push str_477
.blockstart_26: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_26
    jmp proc_writer_writeln
.blockend_26: ; call
    push mem+1487
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1301
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_27: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_27
    jmp proc_seq_pushint
.blockend_27: ; call
    add rsp, 8
    push mem+1301
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
.blockend_22: ; if
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
.blockstart_28: ; if
    jz .blockend_28
    push str_478
.blockstart_29: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_29
    jmp proc_writer_write
.blockend_29: ; call
    push mem+1301
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_30: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_30
    jmp proc_int_cstr
.blockend_30: ; call
.blockstart_31: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_31
    jmp proc_writer_writeln
.blockend_31: ; call
    push str_479
.blockstart_32: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_32
    jmp proc_writer_write
.blockend_32: ; call
    push mem+1301
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_33: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_33
    jmp proc_int_cstr
.blockend_33: ; call
.blockstart_34: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_34
    jmp proc_writer_write
.blockend_34: ; call
    push str_480
.blockstart_35: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_35
    jmp proc_writer_writeln
.blockend_35: ; call
    push mem+1487
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1301
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_36: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_36
    jmp proc_seq_pushint
.blockend_36: ; call
    add rsp, 8
    push mem+1301
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
.blockend_28: ; if
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
.blockstart_37: ; if
    jz .blockend_37
    push str_481
.blockstart_38: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_38
    jmp proc_writer_write
.blockend_38: ; call
    push mem+1301
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_39: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_39
    jmp proc_int_cstr
.blockend_39: ; call
.blockstart_40: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_40
    jmp proc_writer_writeln
.blockend_40: ; call
    push str_482
.blockstart_41: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_41
    jmp proc_writer_write
.blockend_41: ; call
    push mem+1301
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_42: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_42
    jmp proc_int_cstr
.blockend_42: ; call
.blockstart_43: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_43
    jmp proc_writer_write
.blockend_43: ; call
    push str_483
.blockstart_44: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_44
    jmp proc_writer_writeln
.blockend_44: ; call
    push mem+1487
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1301
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_45: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_45
    jmp proc_seq_pushint
.blockend_45: ; call
    add rsp, 8
    push mem+1301
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
.blockstart_46: ; if
    jz .blockend_46
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_46: ; if
    add rsp, 8
    pop rax
    push rax
    push rax
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
.blockstart_47: ; if
    jz .blockend_47
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_47: ; if
    push qword 0
.blockstart_48: ; do
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 56
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
    push mem+1253
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_49: ; call
    pop rbx
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_49
    jmp qword rbx
.blockend_49: ; call
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
.blockstart_50: ; if
    jz .blockend_50
.blockstart_51: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_51
    jmp proc_slmnode_print
.blockend_51: ; call
.blockstart_52: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_52
    jmp proc_cstr_cr
.blockend_52: ; call
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_50: ; if
    add rsp, 8
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
    jnz .blockstart_48
.blockend_48: ; do
    add rsp, 8
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
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_53: ; if
    jz .blockend_53
    push str_484
.blockstart_54: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_54
    jmp proc_assembler_getfullname
.blockend_54: ; call
    push mem+1269
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1447
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1293
.blockstart_55: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_55
    jmp proc_map_putat
.blockend_55: ; call
    add rsp, 8
    push mem+1317
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockend_53: ; if
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
.blockstart_56: ; if
    jz .blockend_56
    push str_485
.blockstart_57: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_57
    jmp proc_writer_write
.blockend_57: ; call
    push mem+1487
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_58: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_58
    jmp proc_seq_popaddr
.blockend_58: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_59: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_59
    jmp proc_int_cstr
.blockend_59: ; call
.blockstart_60: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_60
    jmp proc_writer_write
.blockend_60: ; call
    push str_486
.blockstart_61: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_61
    jmp proc_writer_writeln
.blockend_61: ; call
    add rsp, 8
.blockend_56: ; if
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
.blockstart_62: ; if
    jz .blockend_62
    push mem+1487
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_63: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_63
    jmp proc_seq_popaddr
.blockend_63: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push str_487
.blockstart_64: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_64
    jmp proc_writer_write
.blockend_64: ; call
    pop rax
    push rax
    push rax
.blockstart_65: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_65
    jmp proc_int_cstr
.blockend_65: ; call
.blockstart_66: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_66
    jmp proc_writer_write
.blockend_66: ; call
    push str_488
.blockstart_67: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_67
    jmp proc_writer_writeln
.blockend_67: ; call
    push str_489
.blockstart_68: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_68
    jmp proc_writer_write
.blockend_68: ; call
    pop rax
    push rax
    push rax
.blockstart_69: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_69
    jmp proc_int_cstr
.blockend_69: ; call
.blockstart_70: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_70
    jmp proc_writer_writeln
.blockend_70: ; call
    add rsp, 8
    add rsp, 8
.blockend_62: ; if
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
.blockstart_71: ; if
    jz .blockend_71
    push mem+1487
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_72: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_72
    jmp proc_seq_popaddr
.blockend_72: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push str_490
.blockstart_73: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_73
    jmp proc_writer_write
.blockend_73: ; call
    pop rax
    push rax
    push rax
.blockstart_74: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_74
    jmp proc_int_cstr
.blockend_74: ; call
.blockstart_75: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_75
    jmp proc_writer_write
.blockend_75: ; call
    push str_491
.blockstart_76: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_76
    jmp proc_writer_writeln
.blockend_76: ; call
    push str_492
.blockstart_77: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_77
    jmp proc_writer_write
.blockend_77: ; call
    pop rax
    push rax
    push rax
.blockstart_78: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_78
    jmp proc_int_cstr
.blockend_78: ; call
.blockstart_79: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_79
    jmp proc_writer_writeln
.blockend_79: ; call
    add rsp, 8
    add rsp, 8
    push str_493
.blockstart_80: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_80
    jmp proc_writer_write
.blockend_80: ; call
    push str_494
.blockstart_81: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_81
    jmp proc_writer_write
.blockend_81: ; call
    push str_495
.blockstart_82: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_82
    jmp proc_writer_write
.blockend_82: ; call
    push str_496
.blockstart_83: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_83
    jmp proc_writer_write
.blockend_83: ; call
    push mem+1301
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_84: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_84
    jmp proc_int_cstr
.blockend_84: ; call
.blockstart_85: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_85
    jmp proc_writer_writeln
.blockend_85: ; call
    push str_497
.blockstart_86: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_86
    jmp proc_writer_write
.blockend_86: ; call
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
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_87: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_87
    jmp proc_assembler_internalname
.blockend_87: ; call
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_88: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_88
    jmp proc_writer_writeln
.blockend_88: ; call
    push str_498
.blockstart_89: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_89
    jmp proc_writer_write
.blockend_89: ; call
    push mem+1301
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_90: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_90
    jmp proc_int_cstr
.blockend_90: ; call
.blockstart_91: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_91
    jmp proc_writer_write
.blockend_91: ; call
    push str_499
.blockstart_92: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_92
    jmp proc_writer_writeln
.blockend_92: ; call
    push mem+1301
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
.blockend_71: ; if
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
.blockstart_93: ; if
    jz .blockend_93
    push str_500
.blockstart_94: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_94
    jmp proc_writer_write
.blockend_94: ; call
    push str_501
.blockstart_95: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_95
    jmp proc_writer_write
.blockend_95: ; call
    push str_502
.blockstart_96: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_96
    jmp proc_writer_write
.blockend_96: ; call
    push mem+1487
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_97: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_97
    jmp proc_seq_popaddr
.blockend_97: ; call
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_98: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_98
    jmp proc_int_cstr
.blockend_98: ; call
    pop rax
    push rax
    push rax
.blockstart_99: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_99
    jmp proc_writer_writeln
.blockend_99: ; call
    push str_503
.blockstart_100: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_100
    jmp proc_writer_write
.blockend_100: ; call
.blockstart_101: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_101
    jmp proc_writer_write
.blockend_101: ; call
    push str_504
.blockstart_102: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_102
    jmp proc_writer_writeln
.blockend_102: ; call
    add rsp, 8
.blockend_93: ; if
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_assembler_visitnode:
    push mem+1487
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
    push mem+1487
    push qword 8
    push qword 256
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_seq_new
.blockend_1: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1269
    push qword 256
    push qword 8
    push qword 64
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_map_new
.blockend_2: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1277
    push qword 256
    push qword 8
    push qword 64
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_map_new
.blockend_3: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1285
    push qword 256
    push qword 8
    push qword 64
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_map_new
.blockend_4: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1333
    push qword 256
    push qword 8
    push qword 64
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_map_new
.blockend_5: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1341
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_str_new
.blockend_6: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1471
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_str_new
.blockend_7: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1423
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_str_new
.blockend_8: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockend_0: ; if
    push mem+1253
    push proc_assembler_visitnode
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
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
.blockstart_9: ; if
    jz .blockend_9
    add rsp, 8
    add rsp, 8
    push qword 1
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
.blockstart_10: ; if
    jz .blockend_10
    add rsp, 8
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_assembler_visitinc
.blockend_11: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_10: ; if
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
.blockstart_12: ; if
    jz .blockend_12
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_12: ; if
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
.blockstart_13: ; if
    jz .blockend_13
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_13: ; if
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
.blockstart_14: ; if
    jz .blockend_14
    add rsp, 8
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_assembler_visitfile
.blockend_15: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_14: ; if
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
.blockstart_16: ; if
    jz .blockend_16
    add rsp, 8
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_assembler_visitblock
.blockend_17: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_16: ; if
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
.blockstart_18: ; if
    jz .blockend_18
    add rsp, 8
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_assembler_visitconst
.blockend_19: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_18: ; if
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
.blockstart_20: ; if
    jz .blockend_20
    add rsp, 8
.blockstart_21: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_21
    jmp proc_assembler_visitdef
.blockend_21: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_20: ; if
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
.blockstart_22: ; if
    jz .blockend_22
    add rsp, 8
.blockstart_23: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_23
    jmp proc_assembler_visitasm
.blockend_23: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_22: ; if
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
.blockstart_24: ; if
    jz .blockend_24
    add rsp, 8
.blockstart_25: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_25
    jmp proc_assembler_visitintr
.blockend_25: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_24: ; if
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
.blockstart_26: ; if
    jz .blockend_26
    add rsp, 8
.blockstart_27: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_27
    jmp proc_assembler_visitprop
.blockend_27: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_26: ; if
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
.blockstart_28: ; if
    jz .blockend_28
    add rsp, 8
.blockstart_29: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_29
    jmp proc_assembler_visitvar
.blockend_29: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_28: ; if
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
.blockstart_30: ; if
    jz .blockend_30
    add rsp, 8
.blockstart_31: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_31
    jmp proc_assembler_visitcall
.blockend_31: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_30: ; if
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
.blockstart_32: ; if
    jz .blockend_32
    add rsp, 8
.blockstart_33: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_33
    jmp proc_assembler_visitof
.blockend_33: ; call
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_32: ; if
    add rsp, 8
.blockstart_34: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_34
    jmp proc_slmnode_print
.blockend_34: ; call
.blockstart_35: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_35
    jmp proc_cstr_cr
.blockend_35: ; call
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
class_tovm:
proc_tovm_getproclocs:
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_tovm_run:
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_version:
    push str_505
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_help:
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
    push str_506
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
    jmp proc_version
.blockend_2: ; call
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_println
.blockend_3: ; call
    add rsp, 8
    push qword 0
    mov rax, 60
    pop rdi
    syscall
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
.blockstart_4: ; if
    jz .blockend_4
    push str_507
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_cstr_println
.blockend_5: ; call
.blockend_4: ; if
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
.blockstart_6: ; if
    jz .blockend_6
    push str_508
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_cstr_println
.blockend_7: ; call
.blockend_6: ; if
    push str_509
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_cstr_print
.blockend_8: ; call
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_version
.blockend_9: ; call
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_cstr_print
.blockend_10: ; call
    push str_510
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_cstr_println
.blockend_11: ; call
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_cstr_cr
.blockend_12: ; call
    push str_511
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_cstr_println
.blockend_13: ; call
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_cstr_cr
.blockend_14: ; call
    push str_512
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_cstr_println
.blockend_15: ; call
    push str_513
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_cstr_println
.blockend_16: ; call
    push str_514
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_cstr_println
.blockend_17: ; call
    push str_515
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_cstr_println
.blockend_18: ; call
    push str_516
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_cstr_println
.blockend_19: ; call
    push str_517
.blockstart_20: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_20
    jmp proc_cstr_println
.blockend_20: ; call
    add rsp, 8
    push qword 0
    mov rax, 60
    pop rdi
    syscall
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_setinput:
    push mem+1583
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
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_0: ; if
    push mem+1583
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_os_args
.blockend_1: ; call
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
proc_setoutput:
    pop rax
    push rax
    push rax
    mov rax, [args_ptr]
    mov rax, [rax]
    push rax
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
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    push qword 3
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_help
.blockend_1: ; call
.blockend_0: ; if
    push mem+1591
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_os_args
.blockend_2: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1599
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1591
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
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
    push str_518
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_str_catc
.blockend_5: ; call
    add rsp, 8
    push mem+1607
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push mem+1591
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_cstr_len
.blockend_6: ; call
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_str_sput
.blockend_7: ; call
    push str_519
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_str_catc
.blockend_8: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_applyarg:
    pop rax
    push rax
    push rax
    push str_520
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_eq
.blockend_0: ; call
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    add rsp, 8
    push qword 0
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_help
.blockend_2: ; call
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_1: ; if
    pop rax
    push rax
    push rax
    push str_521
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_eq
.blockend_3: ; call
    pop rbx
    test rbx, rbx
.blockstart_4: ; if
    jz .blockend_4
    add rsp, 8
    push qword 0
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_help
.blockend_5: ; call
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_4: ; if
    pop rax
    push rax
    push rax
    push str_522
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_cstr_eq
.blockend_6: ; call
    pop rbx
    test rbx, rbx
.blockstart_7: ; if
    jz .blockend_7
    add rsp, 8
    push qword 1
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_help
.blockend_8: ; call
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_7: ; if
    pop rax
    push rax
    push rax
    push str_523
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_cstr_eq
.blockend_9: ; call
    pop rbx
    test rbx, rbx
.blockstart_10: ; if
    jz .blockend_10
    add rsp, 8
    push mem+1575
    push qword 2
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_10: ; if
    pop rax
    push rax
    push rax
    push str_524
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_cstr_eq
.blockend_11: ; call
    pop rbx
    test rbx, rbx
.blockstart_12: ; if
    jz .blockend_12
    add rsp, 8
    push mem+1575
    push qword 2
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_12: ; if
    pop rax
    push rax
    push rax
    push str_525
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_cstr_eq
.blockend_13: ; call
    pop rbx
    test rbx, rbx
.blockstart_14: ; if
    jz .blockend_14
    add rsp, 8
    push mem+1575
    push qword 1
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_14: ; if
    pop rax
    push rax
    push rax
    push str_526
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_cstr_eq
.blockend_15: ; call
    pop rbx
    test rbx, rbx
.blockstart_16: ; if
    jz .blockend_16
    add rsp, 8
    push mem+1575
    push qword 1
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_16: ; if
    pop rax
    push rax
    push rax
    push str_527
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_cstr_eq
.blockend_17: ; call
    pop rbx
    test rbx, rbx
.blockstart_18: ; if
    jz .blockend_18
    add rsp, 8
    push mem+1575
    push qword 3
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_18: ; if
    pop rax
    push rax
    push rax
    push str_528
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_cstr_eq
.blockend_19: ; call
    pop rbx
    test rbx, rbx
.blockstart_20: ; if
    jz .blockend_20
    add rsp, 8
    push mem+1575
    push qword 3
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_20: ; if
    pop rax
    push rax
    push rax
    push str_529
.blockstart_21: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_21
    jmp proc_cstr_eq
.blockend_21: ; call
    pop rbx
    test rbx, rbx
.blockstart_22: ; if
    jz .blockend_22
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_23: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_23
    jmp proc_setoutput
.blockend_23: ; call
    push qword 0
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
.blockend_22: ; if
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
proc_main:
    push qword 1
    mov rax, [args_ptr]
    mov rax, [rax]
    push rax
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
    push qword 2
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_help
.blockend_1: ; call
.blockend_0: ; if
    push mem+1591
    push str_530
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+1599
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
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 7
    push str_531
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_str_sput
.blockend_3: ; call
    add rsp, 8
    push mem+1607
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_str_new
.blockend_4: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 7
    push str_532
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_str_sput
.blockend_5: ; call
    add rsp, 8
    push qword 0
.blockstart_6: ; do
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_os_args
.blockend_7: ; call
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_applyarg
.blockend_8: ; call
    pop rbx
    test rbx, rbx
.blockstart_9: ; if
    jz .blockend_9
    pop rax
    push rax
    push rax
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_setinput
.blockend_10: ; call
.blockend_9: ; if
    pop rax
    push rax
    push rax
    mov rax, [args_ptr]
    mov rax, [rax]
    push rax
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
    jnz .blockstart_6
.blockend_6: ; do
    add rsp, 8
    push mem+1583
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
.blockstart_11: ; if
    jz .blockend_11
    push qword 2
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_help
.blockend_12: ; call
.blockend_11: ; if
    push mem+1575
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
.blockstart_13: ; if
    jz .blockend_13
    add rsp, 8
    push mem+1583
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_lexer_new
.blockend_14: ; call
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_lexer_run
.blockend_15: ; call
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_parser_new
.blockend_16: ; call
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_parser_run
.blockend_17: ; call
    push mem+1599
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_writer_open
.blockend_18: ; call
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_writer_header
.blockend_19: ; call
.blockstart_20: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_20
    jmp proc_assembler_visitnode
.blockend_20: ; call
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
.blockstart_21: ; if
    jz .blockend_21
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.blockend_21: ; if
.blockstart_22: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_22
    jmp proc_writer_footer
.blockend_22: ; call
    push mem+1615
    push str_533
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_534
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_535
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1599
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_536
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
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
    push mem+1615
.blockstart_23: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_23
    jmp proc_os_execcmdecho
.blockend_23: ; call
    push mem+1615
    push str_537
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_538
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_539
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_540
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1591
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_541
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_542
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push str_543
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
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
    push mem+1615
.blockstart_24: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_24
    jmp proc_os_execcmdecho
.blockend_24: ; call
    push qword 0
    mov rax, 60
    pop rdi
    syscall
.blockend_13: ; if
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
.blockstart_25: ; if
    jz .blockend_25
    add rsp, 8
    push mem+1583
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
.blockstart_26: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_26
    jmp proc_lexer_new
.blockend_26: ; call
.blockstart_27: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_27
    jmp proc_lexer_run
.blockend_27: ; call
.blockstart_28: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_28
    jmp proc_parser_new
.blockend_28: ; call
.blockstart_29: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_29
    jmp proc_parser_run
.blockend_29: ; call
    push mem+1599
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_30: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_30
    jmp proc_writer_open
.blockend_30: ; call
.blockstart_31: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_31
    jmp proc_writer_header
.blockend_31: ; call
.blockstart_32: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_32
    jmp proc_assembler_visitnode
.blockend_32: ; call
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
.blockstart_33: ; if
    jz .blockend_33
    push qword -1
    mov rax, 60
    pop rdi
    syscall
.blockend_33: ; if
.blockstart_34: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_34
    jmp proc_writer_footer
.blockend_34: ; call
    push qword 0
    mov rax, 60
    pop rdi
    syscall
.blockend_25: ; if
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
.blockstart_35: ; if
    jz .blockend_35
    add rsp, 8
    push mem+1583
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
.blockstart_36: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_36
    jmp proc_lexer_new
.blockend_36: ; call
.blockstart_37: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_37
    jmp proc_lexer_run
.blockend_37: ; call
.blockstart_38: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_38
    jmp proc_parser_new
.blockend_38: ; call
.blockstart_39: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_39
    jmp proc_parser_run
.blockend_39: ; call
.blockstart_40: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_40
    jmp proc_simulator_visitnode
.blockend_40: ; call
    add rsp, 8
    push qword 0
    mov rax, 60
    pop rdi
    syscall
.blockend_35: ; if
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
.blockstart_41: ; if
    jz .blockend_41
    add rsp, 8
    push mem+1583
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
.blockstart_42: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_42
    jmp proc_lexer_new
.blockend_42: ; call
.blockstart_43: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_43
    jmp proc_lexer_run
.blockend_43: ; call
.blockstart_44: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_44
    jmp proc_parser_new
.blockend_44: ; call
.blockstart_45: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_45
    jmp proc_parser_run
.blockend_45: ; call
    push mem+1599
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_46: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_46
    jmp proc_writer_open
.blockend_46: ; call
.blockstart_47: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_47
    jmp proc_writer_header
.blockend_47: ; call
.blockstart_48: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_48
    jmp proc_assembler_visitnode
.blockend_48: ; call
    add rsp, 8
.blockstart_49: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_49
    jmp proc_writer_footer
.blockend_49: ; call
    push mem+1599
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+1607
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_50: ; call
    mov rax, [ret_stack_rsp]
    add rax, 8
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_50
    jmp proc_tovm_run
.blockend_50: ; call
    push qword 0
    mov rax, 60
    pop rdi
    syscall
.blockend_41: ; if
    add rsp, 8
    push qword 1
    mov rax, 60
    pop rdi
    syscall
    mov rax, [ret_stack_rsp]
    sub rax, 8
    mov qword [ret_stack_rsp], rax
    add rax, 8
    jmp qword [rax]
jmp quit
_start:
    mov qword [args_ptr], rsp
    mov qword [ret_stack_rsp], ret_stack
    mov rax, [ret_stack_rsp] 
    mov qword [rax], quit
    jmp proc_main
quit:
    mov rax, 60
    mov rdi, 0
    syscall
section '.data'
str_0: db 10, 0 ;\n
str_1: db 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 97, 108, 108, 111, 99, 97, 116, 101, 32, 104, 101, 97, 112, 0 ;could not allocate heap
str_2: db 72, 69, 65, 80, 32, 77, 65, 80, 0 ;HEAP MAP
str_3: db 45, 45, 45, 45, 45, 45, 45, 45, 0 ;--------
str_4: db 115, 105, 122, 101, 58, 32, 32, 32, 0 ;size:   
str_5: db 79, 98, 106, 101, 99, 116, 0 ;Object
str_6: db 32, 32, 97, 100, 100, 114, 58, 32, 0 ;  addr: 
str_7: db 32, 32, 115, 105, 122, 101, 58, 32, 0 ;  size: 
str_8: db 117, 115, 101, 100, 58, 32, 0 ;used: 
str_9: db 66, 97, 100, 32, 102, 114, 101, 101, 32, 99, 97, 108, 108, 0 ;Bad free call
str_10: db 66, 97, 100, 32, 114, 101, 97, 108, 108, 111, 99, 32, 99, 97, 108, 108, 0 ;Bad realloc call
str_11: db 27, 91, 49, 59, 51, 49, 109, 0 ;\e[1;31m
str_12: db 91, 0 ;[
str_13: db 93, 32, 0 ;]\ 
str_14: db 27, 91, 48, 59, 48, 109, 0 ;\e[0;0m
str_15: db 27, 91, 48, 59, 51, 50, 109, 0 ;\e[0;32m
str_16: db 91, 0 ;[
str_17: db 93, 32, 0 ;]\ 
str_18: db 27, 91, 48, 59, 48, 109, 0 ;\e[0;0m
str_19: db 27, 91, 48, 59, 51, 51, 109, 0 ;\e[0;33m
str_20: db 91, 0 ;[
str_21: db 93, 32, 0 ;]\ 
str_22: db 27, 91, 48, 59, 48, 109, 0 ;\e[0;0m
str_23: db 91, 0 ;[
str_24: db 93, 32, 0 ;]\ 
str_25: db 60, 0 ;<
str_26: db 58, 0 ;:
str_27: db 64, 0 ;@
str_28: db 62, 0 ;>
str_29: db 10, 32, 32, 40, 0 ;\n  (
str_30: db 0, 0 ;
str_31: db 78, 85, 76, 76, 0 ;NULL
str_32: db 73, 78, 67, 0 ;INC
str_33: db 80, 82, 79, 67, 0 ;PROC
str_34: db 67, 76, 65, 83, 83, 0 ;CLASS
str_35: db 86, 65, 82, 0 ;VAR
str_36: db 73, 70, 0 ;IF
str_37: db 69, 78, 85, 77, 0 ;ENUM
str_38: db 69, 78, 68, 0 ;END
str_39: db 78, 85, 77, 66, 69, 82, 0 ;NUMBER
str_40: db 83, 84, 82, 73, 78, 71, 0 ;STRING
str_41: db 80, 82, 79, 80, 0 ;PROP
str_42: db 87, 79, 82, 68, 0 ;WORD
str_43: db 67, 65, 76, 76, 0 ;CALL
str_44: db 67, 79, 77, 77, 69, 78, 84, 0 ;COMMENT
str_45: db 67, 79, 80, 89, 0 ;COPY
str_46: db 67, 79, 86, 82, 0 ;COVR
str_47: db 68, 73, 83, 67, 0 ;DISC
str_48: db 65, 68, 68, 0 ;ADD
str_49: db 83, 85, 66, 0 ;SUB
str_50: db 77, 85, 76, 0 ;MUL
str_51: db 82, 69, 84, 0 ;RET
str_52: db 68, 73, 86, 77, 79, 68, 0 ;DIVMOD
str_53: db 65, 67, 67, 69, 83, 83, 0 ;ACCESS
str_54: db 67, 79, 78, 83, 84, 0 ;CONST
str_55: db 58, 32, 0 ;: 
str_56: db 45, 0 ;-
str_57: db 41, 0 ;)
str_58: db 69, 82, 82, 79, 82, 58, 32, 99, 97, 110, 116, 32, 111, 112, 101, 110, 32, 47, 100, 101, 118, 47, 110, 117, 108, 108, 0 ;ERROR: cant open /dev/null
str_59: db 47, 100, 101, 118, 47, 110, 117, 108, 108, 0 ;/dev/null
str_60: db 69, 82, 82, 79, 82, 0 ;ERROR
str_61: db 69, 82, 82, 79, 82, 0 ;ERROR
str_62: db 67, 77, 68, 0 ;CMD
str_63: db 82, 117, 110, 58, 32, 0 ;Run: 
str_64: db 32, 0 ; 
str_65: db 67, 77, 68, 0 ;CMD
str_66: db 82, 117, 110, 58, 32, 0 ;Run: 
str_67: db 32, 0 ; 
str_68: db 66, 97, 100, 32, 97, 114, 103, 0 ;Bad arg
str_69: db 69, 114, 114, 111, 114, 32, 111, 112, 101, 110, 105, 110, 103, 32, 102, 105, 108, 101, 0 ;Error opening file
str_70: db 69, 114, 114, 111, 114, 32, 119, 114, 105, 116, 105, 110, 103, 32, 102, 105, 108, 101, 0 ;Error writing file
str_71: db 69, 114, 114, 111, 114, 32, 114, 101, 97, 100, 105, 110, 103, 32, 102, 105, 108, 101, 0 ;Error reading file
str_72: db 69, 114, 114, 111, 114, 32, 99, 108, 111, 115, 105, 110, 103, 32, 102, 105, 108, 101, 0 ;Error closing file
str_73: db 65, 82, 82, 65, 89, 32, 79, 86, 69, 82, 70, 76, 79, 87, 0 ;ARRAY OVERFLOW
str_74: db 65, 82, 82, 65, 89, 32, 79, 86, 69, 82, 70, 76, 79, 87, 0 ;ARRAY OVERFLOW
str_75: db 91, 0 ;[
str_76: db 93, 0 ;]
str_77: db 44, 32, 0 ;, 
str_78: db 93, 0 ;]
str_79: db 44, 32, 0 ;, 
str_80: db 91, 76, 69, 88, 93, 32, 0 ;[LEX] 
str_81: db 72, 79, 77, 69, 0 ;HOME
str_82: db 47, 46, 108, 111, 99, 97, 108, 47, 115, 108, 97, 109, 47, 108, 105, 98, 47, 0 ;/.local/slam/lib/
str_83: db 115, 105, 109, 0 ;sim
str_84: db 108, 97, 109, 98, 100, 97, 0 ;lambda
str_85: db 58, 0 ;:
str_86: db 101, 108, 115, 0 ;els
str_87: db 99, 97, 115, 0 ;cas
str_88: db 115, 119, 105, 116, 99, 104, 0 ;switch
str_89: db 97, 115, 109, 0 ;asm
str_90: db 105, 110, 99, 0 ;inc
str_91: db 101, 110, 117, 109, 0 ;enum
str_92: db 105, 102, 0 ;if
str_93: db 100, 111, 0 ;do
str_94: db 114, 101, 116, 0 ;ret
str_95: db 98, 114, 107, 0 ;brk
str_96: db 99, 111, 110, 115, 116, 0 ;const
str_97: db 99, 108, 97, 115, 115, 0 ;class
str_98: db 112, 114, 111, 99, 0 ;proc
str_99: db 101, 110, 100, 0 ;end
str_100: db 113, 117, 105, 116, 0 ;quit
str_101: db 118, 97, 114, 0 ;var
str_102: db 99, 111, 112, 121, 0 ;copy
str_103: db 99, 111, 118, 114, 0 ;covr
str_104: db 100, 105, 115, 99, 0 ;disc
str_105: db 112, 114, 111, 112, 0 ;prop
str_106: db 91, 0 ;[
str_107: db 93, 0 ;]
str_108: db 46, 0 ;.
str_109: db 43, 0 ;+
str_110: db 45, 0 ;-
str_111: db 42, 0 ;*
str_112: db 126, 0 ;~
str_113: db 47, 37, 0 ;/%
str_114: db 61, 61, 0 ;==
str_115: db 33, 61, 0 ;!=
str_116: db 62, 0 ;>
str_117: db 60, 0 ;<
str_118: db 38, 38, 0 ;&&
str_119: db 124, 124, 0 ;||
str_120: db 33, 0 ;!
str_121: db 111, 102, 0 ;of
str_122: db 111, 112, 101, 114, 0 ;oper
str_123: db 112, 117, 115, 104, 0 ;push
str_124: db 114, 101, 97, 100, 0 ;read
str_125: db 114, 101, 97, 100, 99, 0 ;readc
str_126: db 112, 117, 116, 0 ;put
str_127: db 112, 117, 116, 99, 0 ;putc
str_128: db 115, 119, 97, 112, 0 ;swap
str_129: db 97, 114, 103, 118, 0 ;argv
str_130: db 97, 114, 103, 99, 0 ;argc
str_131: db 101, 110, 118, 112, 0 ;envp
str_132: db 115, 121, 115, 48, 0 ;sys0
str_133: db 115, 121, 115, 49, 0 ;sys1
str_134: db 115, 121, 115, 50, 0 ;sys2
str_135: db 115, 121, 115, 51, 0 ;sys3
str_136: db 115, 121, 115, 52, 0 ;sys4
str_137: db 115, 121, 115, 53, 0 ;sys5
str_138: db 115, 121, 115, 54, 0 ;sys6
str_139: db 34, 0 ;"
str_140: db 34, 0 ;"
str_141: db 34, 0 ;"
str_142: db 34, 0 ;"
str_143: db 34, 0 ;"
str_144: db 34, 0 ;"
str_145: db 34, 0 ;"
str_146: db 34, 0 ;"
str_147: db 34, 0 ;"
str_148: db 34, 0 ;"
str_149: db 114, 101, 116, 0 ;ret
str_150: db 101, 108, 115, 0 ;els
str_151: db 99, 111, 112, 121, 0 ;copy
str_152: db 98, 114, 107, 0 ;brk
str_153: db 100, 105, 115, 99, 0 ;disc
str_154: db 114, 101, 97, 100, 0 ;read
str_155: db 114, 101, 97, 100, 99, 0 ;readc
str_156: db 101, 113, 117, 97, 108, 0 ;equal
str_157: db 97, 99, 99, 101, 115, 115, 0 ;access
str_158: db 99, 111, 118, 114, 0 ;covr
str_159: db 115, 119, 97, 112, 0 ;swap
str_160: db 97, 100, 100, 0 ;add
str_161: db 115, 117, 98, 0 ;sub
str_162: db 109, 117, 108, 0 ;mul
str_163: db 100, 105, 118, 109, 111, 100, 0 ;divmod
str_164: db 113, 117, 105, 116, 0 ;quit
str_165: db 0, 0 ;
str_166: db 78, 85, 77, 66, 69, 82, 58, 32, 0 ;NUMBER: 
str_167: db 87, 79, 82, 68, 58, 32, 34, 0 ;WORD: "
str_168: db 34, 0 ;"
str_169: db 0, 0 ;
str_170: db 78, 85, 77, 66, 69, 82, 58, 32, 0 ;NUMBER: 
str_171: db 87, 79, 82, 68, 58, 32, 34, 0 ;WORD: "
str_172: db 34, 0 ;"
str_173: db 0, 0 ;
str_174: db 78, 85, 77, 66, 69, 82, 58, 32, 0 ;NUMBER: 
str_175: db 87, 79, 82, 68, 58, 32, 34, 0 ;WORD: "
str_176: db 34, 0 ;"
str_177: db 0, 0 ;
str_178: db 78, 85, 77, 66, 69, 82, 58, 32, 0 ;NUMBER: 
str_179: db 83, 84, 82, 73, 78, 71, 58, 32, 34, 0 ;STRING: "
str_180: db 87, 79, 82, 68, 58, 32, 34, 0 ;WORD: "
str_181: db 34, 0 ;"
str_182: db 34, 0 ;"
str_183: db 34, 0 ;"
str_184: db 34, 32, 0 ;"\ 
str_185: db 0, 0 ;
str_186: db 98, 108, 111, 99, 107, 0 ;block
str_187: db 99, 108, 97, 115, 115, 0 ;class
str_188: db 112, 114, 111, 99, 0 ;proc
str_189: db 101, 110, 117, 109, 0 ;enum
str_190: db 115, 105, 109, 0 ;sim
str_191: db 100, 111, 0 ;do
str_192: db 105, 102, 0 ;if
str_193: db 32, 0 ; 
str_194: db 69, 82, 82, 0 ;ERR
str_195: db 67, 111, 117, 108, 100, 32, 110, 111, 116, 32, 99, 111, 110, 118, 101, 114, 116, 32, 110, 111, 100, 101, 32, 78, 85, 76, 76, 32, 116, 111, 32, 115, 116, 114, 105, 110, 103, 32, 0 ;Could not convert node NULL to string 
str_196: db 60, 78, 85, 76, 76, 62, 0 ;<NULL>
str_197: db 60, 70, 73, 76, 69, 58, 32, 0 ;<FILE: 
str_198: db 62, 0 ;>
str_199: db 60, 66, 76, 79, 67, 75, 58, 32, 0 ;<BLOCK: 
str_200: db 62, 0 ;>
str_201: db 60, 73, 78, 67, 58, 32, 0 ;<INC: 
str_202: db 62, 0 ;>
str_203: db 60, 65, 83, 77, 58, 32, 0 ;<ASM: 
str_204: db 62, 0 ;>
str_205: db 60, 79, 70, 58, 32, 0 ;<OF: 
str_206: db 62, 0 ;>
str_207: db 60, 67, 65, 83, 69, 58, 32, 0 ;<CASE: 
str_208: db 62, 0 ;>
str_209: db 60, 67, 65, 76, 76, 58, 32, 0 ;<CALL: 
str_210: db 62, 0 ;>
str_211: db 60, 73, 78, 84, 82, 58, 32, 0 ;<INTR: 
str_212: db 62, 0 ;>
str_213: db 60, 67, 79, 78, 83, 84, 58, 32, 0 ;<CONST: 
str_214: db 62, 0 ;>
str_215: db 60, 86, 65, 82, 58, 32, 0 ;<VAR: 
str_216: db 62, 0 ;>
str_217: db 60, 68, 69, 70, 58, 32, 0 ;<DEF: 
str_218: db 62, 0 ;>
str_219: db 60, 80, 82, 79, 80, 58, 32, 0 ;<PROP: 
str_220: db 62, 0 ;>
str_221: db 60, 67, 79, 77, 77, 69, 78, 84, 62, 0 ;<COMMENT>
str_222: db 69, 82, 82, 0 ;ERR
str_223: db 67, 111, 117, 108, 100, 32, 110, 111, 116, 32, 99, 111, 110, 118, 101, 114, 116, 32, 110, 111, 100, 101, 32, 0 ;Could not convert node 
str_224: db 32, 116, 111, 32, 115, 116, 114, 105, 110, 103, 0 ; to string
str_225: db 91, 80, 82, 83, 93, 32, 0 ;[PRS] 
str_226: db 32, 116, 111, 107, 101, 110, 115, 0 ; tokens
str_227: db 10, 0 ;\n
str_228: db 108, 111, 108, 0 ;lol
str_229: db 102, 111, 114, 109, 97, 116, 32, 69, 76, 70, 54, 52, 10, 0 ;format ELF64\n
str_230: db 115, 101, 99, 116, 105, 111, 110, 32, 39, 46, 116, 101, 120, 116, 39, 32, 101, 120, 101, 99, 117, 116, 97, 98, 108, 101, 10, 0 ;section '.text' executable\n
str_231: db 112, 117, 98, 108, 105, 99, 32, 95, 115, 116, 97, 114, 116, 10, 0 ;public _start\n
str_232: db 44, 32, 0 ;, 
str_233: db 115, 116, 114, 95, 0 ;str_
str_234: db 58, 32, 100, 98, 32, 0 ;: db 
str_235: db 48, 32, 59, 0 ;0 ;
str_236: db 106, 109, 112, 32, 113, 117, 105, 116, 10, 0 ;jmp quit\n
str_237: db 95, 115, 116, 97, 114, 116, 58, 10, 0 ;_start:\n
str_238: db 32, 32, 32, 32, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 97, 114, 103, 115, 95, 112, 116, 114, 93, 44, 32, 114, 115, 112, 10, 0 ;    mov qword [args_ptr], rsp\n
str_239: db 32, 32, 32, 32, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 114, 101, 116, 95, 115, 116, 97, 99, 107, 95, 114, 115, 112, 93, 44, 32, 114, 101, 116, 95, 115, 116, 97, 99, 107, 10, 0 ;    mov qword [ret_stack_rsp], ret_stack\n
str_240: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 97, 120, 44, 32, 91, 114, 101, 116, 95, 115, 116, 97, 99, 107, 95, 114, 115, 112, 93, 32, 10, 0 ;    mov rax, [ret_stack_rsp] \n
str_241: db 32, 32, 32, 32, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 114, 97, 120, 93, 44, 32, 113, 117, 105, 116, 10, 0 ;    mov qword [rax], quit\n
str_242: db 32, 32, 32, 32, 106, 109, 112, 32, 112, 114, 111, 99, 95, 109, 97, 105, 110, 10, 0 ;    jmp proc_main\n
str_243: db 113, 117, 105, 116, 58, 10, 0 ;quit:\n
str_244: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 97, 120, 44, 32, 54, 48, 10, 0 ;    mov rax, 60\n
str_245: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 100, 105, 44, 32, 48, 10, 0 ;    mov rdi, 0\n
str_246: db 32, 32, 32, 32, 115, 121, 115, 99, 97, 108, 108, 10, 0 ;    syscall\n
str_247: db 115, 101, 99, 116, 105, 111, 110, 32, 39, 46, 100, 97, 116, 97, 39, 10, 0 ;section '.data'\n
str_248: db 115, 101, 99, 116, 105, 111, 110, 32, 39, 46, 98, 115, 115, 39, 10, 0 ;section '.bss'\n
str_249: db 97, 114, 103, 115, 95, 112, 116, 114, 58, 32, 114, 113, 32, 49, 10, 0 ;args_ptr: rq 1\n
str_250: db 114, 101, 116, 95, 115, 116, 97, 99, 107, 95, 114, 115, 112, 58, 32, 114, 113, 32, 49, 10, 0 ;ret_stack_rsp: rq 1\n
str_251: db 114, 101, 116, 95, 115, 116, 97, 99, 107, 58, 32, 114, 98, 32, 54, 53, 53, 51, 54, 10, 0 ;ret_stack: rb 65536\n
str_252: db 109, 101, 109, 58, 32, 114, 98, 32, 0 ;mem: rb 
str_253: db 44, 32, 0 ;, 
str_254: db 123, 0 ;{
str_255: db 125, 0 ;}
str_256: db 115, 108, 97, 115, 104, 0 ;slash
str_257: db 95, 0 ;_
str_258: db 121, 0 ;y
str_259: db 115, 108, 97, 115, 104, 0 ;slash
str_260: db 112, 101, 114, 99, 0 ;perc
str_261: db 95, 0 ;_
str_262: db 117, 110, 100, 101, 114, 0 ;under
str_263: db 112, 114, 111, 99, 95, 0 ;proc_
str_264: db 58, 0 ;:
str_265: db 32, 32, 106, 109, 112, 32, 112, 114, 111, 99, 95, 0 ;  jmp proc_
str_266: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 112, 114, 111, 99, 95, 0 ;    push proc_
str_267: db 46, 98, 108, 111, 99, 107, 115, 116, 97, 114, 116, 95, 0 ;.blockstart_
str_268: db 58, 32, 59, 32, 99, 97, 108, 108, 0 ;: ; call
str_269: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 97, 120, 44, 32, 91, 114, 101, 116, 95, 115, 116, 97, 99, 107, 95, 114, 115, 112, 93, 10, 0 ;    mov rax, [ret_stack_rsp]\n
str_270: db 32, 32, 32, 32, 97, 100, 100, 32, 114, 97, 120, 44, 32, 56, 10, 0 ;    add rax, 8\n
str_271: db 32, 32, 32, 32, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 114, 101, 116, 95, 115, 116, 97, 99, 107, 95, 114, 115, 112, 93, 44, 32, 114, 97, 120, 10, 0 ;    mov qword [ret_stack_rsp], rax\n
str_272: db 32, 32, 32, 32, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 114, 97, 120, 93, 44, 32, 46, 98, 108, 111, 99, 107, 101, 110, 100, 95, 0 ;    mov qword [rax], .blockend_
str_273: db 32, 32, 32, 32, 106, 109, 112, 32, 112, 114, 111, 99, 95, 0 ;    jmp proc_
str_274: db 46, 98, 108, 111, 99, 107, 101, 110, 100, 95, 0 ;.blockend_
str_275: db 58, 32, 59, 32, 99, 97, 108, 108, 0 ;: ; call
str_276: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 113, 119, 111, 114, 100, 32, 0 ;    push qword 
str_277: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 109, 101, 109, 43, 0 ;    push mem+
str_278: db 32, 32, 32, 32, 59, 32, 87, 111, 114, 100, 32, 0 ;    ; Word 
str_279: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 113, 119, 111, 114, 100, 32, 0 ;    push qword 
str_280: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 115, 116, 114, 95, 0 ;    push str_
str_281: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 113, 119, 111, 114, 100, 32, 0 ;    push qword 
str_282: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 115, 116, 114, 95, 0 ;    push str_
str_283: db 46, 0 ;.
str_284: db 0, 0 ;
str_285: db 46, 98, 108, 111, 99, 107, 115, 116, 97, 114, 116, 95, 0 ;.blockstart_
str_286: db 58, 32, 59, 32, 99, 97, 108, 108, 0 ;: ; call
str_287: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 10, 0 ;    pop rbx\n
str_288: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 97, 120, 44, 32, 91, 114, 101, 116, 95, 115, 116, 97, 99, 107, 95, 114, 115, 112, 93, 10, 0 ;    mov rax, [ret_stack_rsp]\n
str_289: db 32, 32, 32, 32, 97, 100, 100, 32, 114, 97, 120, 44, 32, 56, 10, 0 ;    add rax, 8\n
str_290: db 32, 32, 32, 32, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 114, 101, 116, 95, 115, 116, 97, 99, 107, 95, 114, 115, 112, 93, 44, 32, 114, 97, 120, 10, 0 ;    mov qword [ret_stack_rsp], rax\n
str_291: db 32, 32, 32, 32, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 114, 97, 120, 93, 44, 32, 46, 98, 108, 111, 99, 107, 101, 110, 100, 95, 0 ;    mov qword [rax], .blockend_
str_292: db 32, 32, 32, 32, 106, 109, 112, 32, 113, 119, 111, 114, 100, 32, 114, 98, 120, 10, 0 ;    jmp qword rbx\n
str_293: db 46, 98, 108, 111, 99, 107, 101, 110, 100, 95, 0 ;.blockend_
str_294: db 58, 32, 59, 32, 99, 97, 108, 108, 0 ;: ; call
str_295: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 112, 114, 111, 99, 95, 0 ;    push proc_
str_296: db 46, 98, 108, 111, 99, 107, 115, 116, 97, 114, 116, 95, 0 ;.blockstart_
str_297: db 58, 32, 59, 32, 99, 97, 108, 108, 0 ;: ; call
str_298: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 97, 120, 44, 32, 91, 114, 101, 116, 95, 115, 116, 97, 99, 107, 95, 114, 115, 112, 93, 10, 0 ;    mov rax, [ret_stack_rsp]\n
str_299: db 32, 32, 32, 32, 97, 100, 100, 32, 114, 97, 120, 44, 32, 56, 10, 0 ;    add rax, 8\n
str_300: db 32, 32, 32, 32, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 114, 101, 116, 95, 115, 116, 97, 99, 107, 95, 114, 115, 112, 93, 44, 32, 114, 97, 120, 10, 0 ;    mov qword [ret_stack_rsp], rax\n
str_301: db 32, 32, 32, 32, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 114, 97, 120, 93, 44, 32, 46, 98, 108, 111, 99, 107, 101, 110, 100, 95, 0 ;    mov qword [rax], .blockend_
str_302: db 32, 32, 32, 32, 106, 109, 112, 32, 112, 114, 111, 99, 95, 0 ;    jmp proc_
str_303: db 46, 98, 108, 111, 99, 107, 101, 110, 100, 95, 0 ;.blockend_
str_304: db 58, 32, 59, 32, 99, 97, 108, 108, 0 ;: ; call
str_305: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 97, 120, 44, 32, 91, 114, 101, 116, 95, 115, 116, 97, 99, 107, 95, 114, 115, 112, 93, 10, 0 ;    mov rax, [ret_stack_rsp]\n
str_306: db 32, 32, 32, 32, 115, 117, 98, 32, 114, 97, 120, 44, 32, 56, 10, 0 ;    sub rax, 8\n
str_307: db 32, 32, 32, 32, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 114, 101, 116, 95, 115, 116, 97, 99, 107, 95, 114, 115, 112, 93, 44, 32, 114, 97, 120, 10, 0 ;    mov qword [ret_stack_rsp], rax\n
str_308: db 32, 32, 32, 32, 97, 100, 100, 32, 114, 97, 120, 44, 32, 56, 10, 0 ;    add rax, 8\n
str_309: db 32, 32, 32, 32, 106, 109, 112, 32, 113, 119, 111, 114, 100, 32, 91, 114, 97, 120, 93, 10, 0 ;    jmp qword [rax]\n
str_310: db 32, 32, 32, 32, 106, 109, 112, 32, 46, 98, 108, 111, 99, 107, 101, 110, 100, 95, 0 ;    jmp .blockend_
str_311: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_312: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 10, 0 ;    push rax\n
str_313: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 10, 0 ;    push rax\n
str_314: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 97, 120, 44, 32, 91, 97, 114, 103, 115, 95, 112, 116, 114, 93, 10, 0 ;    mov rax, [args_ptr]\n
str_315: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 97, 120, 44, 32, 91, 114, 97, 120, 93, 10, 0 ;    mov rax, [rax]\n
str_316: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 10, 0 ;    push rax\n
str_317: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 97, 120, 44, 32, 91, 97, 114, 103, 115, 95, 112, 116, 114, 93, 10, 0 ;    mov rax, [args_ptr]\n
str_318: db 32, 32, 32, 32, 97, 100, 100, 32, 114, 97, 120, 44, 32, 56, 10, 0 ;    add rax, 8\n
str_319: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 10, 0 ;    push rax\n
str_320: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 97, 120, 44, 32, 91, 97, 114, 103, 115, 95, 112, 116, 114, 93, 10, 0 ;    mov rax, [args_ptr]\n
str_321: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 97, 120, 44, 32, 91, 114, 97, 120, 93, 10, 0 ;    mov rax, [rax]\n
str_322: db 32, 32, 32, 32, 97, 100, 100, 32, 114, 97, 120, 44, 32, 50, 10, 0 ;    add rax, 2\n
str_323: db 32, 32, 32, 32, 115, 104, 108, 32, 114, 97, 120, 44, 32, 51, 10, 0 ;    shl rax, 3\n
str_324: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 98, 120, 44, 32, 91, 97, 114, 103, 115, 95, 112, 116, 114, 93, 10, 0 ;    mov rbx, [args_ptr]\n
str_325: db 32, 32, 32, 32, 97, 100, 100, 32, 114, 98, 120, 44, 32, 114, 97, 120, 10, 0 ;    add rbx, rax\n
str_326: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 98, 120, 10, 0 ;    push rbx\n
str_327: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_328: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 10, 0 ;    pop rbx\n
str_329: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 10, 0 ;    push rax\n
str_330: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 98, 120, 10, 0 ;    push rbx\n
str_331: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_332: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 10, 0 ;    pop rbx\n
str_333: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 98, 120, 10, 0 ;    push rbx\n
str_334: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 10, 0 ;    push rax\n
str_335: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 98, 120, 10, 0 ;    push rbx\n
str_336: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_337: db 32, 32, 32, 32, 120, 111, 114, 32, 114, 98, 120, 44, 32, 114, 98, 120, 10, 0 ;    xor rbx, rbx\n
str_338: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 98, 120, 44, 32, 91, 114, 97, 120, 93, 10, 0 ;    mov rbx, [rax]\n
str_339: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 98, 120, 10, 0 ;    push rbx\n
str_340: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_341: db 32, 32, 32, 32, 120, 111, 114, 32, 114, 98, 120, 44, 32, 114, 98, 120, 10, 0 ;    xor rbx, rbx\n
str_342: db 32, 32, 32, 32, 109, 111, 118, 32, 98, 108, 44, 32, 91, 114, 97, 120, 93, 10, 0 ;    mov bl, [rax]\n
str_343: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 98, 120, 10, 0 ;    push rbx\n
str_344: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 10, 0 ;    pop rbx\n
str_345: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_346: db 32, 32, 32, 32, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 114, 97, 120, 93, 44, 32, 114, 98, 120, 10, 0 ;    mov qword [rax], rbx\n
str_347: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 10, 0 ;    push rax\n
str_348: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 10, 0 ;    pop rbx\n
str_349: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_350: db 32, 32, 32, 32, 109, 111, 118, 32, 98, 121, 116, 101, 32, 91, 114, 97, 120, 93, 44, 32, 98, 108, 10, 0 ;    mov byte [rax], bl\n
str_351: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 10, 0 ;    push rax\n
str_352: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 99, 120, 44, 32, 48, 10, 0 ;    mov rcx, 0\n
str_353: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 100, 120, 44, 32, 49, 10, 0 ;    mov rdx, 1\n
str_354: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_355: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 10, 0 ;    pop rbx\n
str_356: db 32, 32, 32, 32, 99, 109, 112, 32, 114, 97, 120, 44, 32, 114, 98, 120, 10, 0 ;    cmp rax, rbx\n
str_357: db 32, 32, 32, 32, 99, 109, 111, 118, 101, 32, 114, 99, 120, 44, 32, 114, 100, 120, 10, 0 ;    cmove rcx, rdx\n
str_358: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 99, 120, 10, 0 ;    push rcx\n
str_359: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 99, 120, 44, 32, 48, 10, 0 ;    mov rcx, 0\n
str_360: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 100, 120, 44, 32, 49, 10, 0 ;    mov rdx, 1\n
str_361: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 10, 0 ;    pop rbx\n
str_362: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_363: db 32, 32, 32, 32, 99, 109, 112, 32, 114, 97, 120, 44, 32, 114, 98, 120, 10, 0 ;    cmp rax, rbx\n
str_364: db 32, 32, 32, 32, 99, 109, 111, 118, 110, 101, 32, 114, 99, 120, 44, 32, 114, 100, 120, 10, 0 ;    cmovne rcx, rdx\n
str_365: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 99, 120, 10, 0 ;    push rcx\n
str_366: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_367: db 32, 32, 32, 32, 120, 111, 114, 32, 114, 97, 120, 44, 32, 49, 10, 0 ;    xor rax, 1\n
str_368: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 10, 0 ;    push rax\n
str_369: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_370: db 32, 32, 32, 32, 110, 111, 116, 32, 114, 97, 120, 10, 0 ;    not rax\n
str_371: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 10, 0 ;    push rax\n
str_372: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 99, 120, 44, 32, 48, 10, 0 ;    mov rcx, 0\n
str_373: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 100, 120, 44, 32, 49, 10, 0 ;    mov rdx, 1\n
str_374: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 10, 0 ;    pop rbx\n
str_375: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_376: db 32, 32, 32, 32, 99, 109, 112, 32, 114, 97, 120, 44, 32, 114, 98, 120, 10, 0 ;    cmp rax, rbx\n
str_377: db 32, 32, 32, 32, 99, 109, 111, 118, 108, 32, 114, 99, 120, 44, 32, 114, 100, 120, 10, 0 ;    cmovl rcx, rdx\n
str_378: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 99, 120, 10, 0 ;    push rcx\n
str_379: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 99, 120, 44, 32, 48, 10, 0 ;    mov rcx, 0\n
str_380: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 100, 120, 44, 32, 49, 10, 0 ;    mov rdx, 1\n
str_381: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 10, 0 ;    pop rbx\n
str_382: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_383: db 32, 32, 32, 32, 99, 109, 112, 32, 114, 97, 120, 44, 32, 114, 98, 120, 10, 0 ;    cmp rax, rbx\n
str_384: db 32, 32, 32, 32, 99, 109, 111, 118, 103, 32, 114, 99, 120, 44, 32, 114, 100, 120, 10, 0 ;    cmovg rcx, rdx\n
str_385: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 99, 120, 10, 0 ;    push rcx\n
str_386: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_387: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 10, 0 ;    pop rbx\n
str_388: db 32, 32, 32, 32, 97, 110, 100, 32, 114, 97, 120, 44, 32, 114, 98, 120, 10, 0 ;    and rax, rbx\n
str_389: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 10, 0 ;    push rax\n
str_390: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_391: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 10, 0 ;    pop rbx\n
str_392: db 32, 32, 32, 32, 111, 114, 32, 114, 97, 120, 44, 32, 114, 98, 120, 10, 0 ;    or rax, rbx\n
str_393: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 10, 0 ;    push rax\n
str_394: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_395: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 10, 0 ;    pop rbx\n
str_396: db 32, 32, 32, 32, 97, 100, 100, 32, 114, 97, 120, 44, 32, 114, 98, 120, 10, 0 ;    add rax, rbx\n
str_397: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 10, 0 ;    push rax\n
str_398: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_399: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 10, 0 ;    pop rbx\n
str_400: db 32, 32, 32, 32, 97, 100, 100, 32, 114, 97, 120, 44, 32, 114, 98, 120, 10, 0 ;    add rax, rbx\n
str_401: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 10, 0 ;    push rax\n
str_402: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_403: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 10, 0 ;    pop rbx\n
str_404: db 32, 32, 32, 32, 105, 109, 117, 108, 32, 114, 97, 120, 44, 32, 114, 98, 120, 10, 0 ;    imul rax, rbx\n
str_405: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 10, 0 ;    push rax\n
str_406: db 32, 32, 32, 32, 120, 111, 114, 32, 114, 100, 120, 44, 32, 114, 100, 120, 10, 0 ;    xor rdx, rdx\n
str_407: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 10, 0 ;    pop rbx\n
str_408: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_409: db 32, 32, 32, 32, 105, 100, 105, 118, 32, 114, 98, 120, 10, 0 ;    idiv rbx\n
str_410: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 10, 0 ;    push rax\n
str_411: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 100, 120, 10, 0 ;    push rdx\n
str_412: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 10, 0 ;    pop rbx\n
str_413: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_414: db 32, 32, 32, 32, 115, 117, 98, 32, 114, 97, 120, 44, 32, 114, 98, 120, 10, 0 ;    sub rax, rbx\n
str_415: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 10, 0 ;    push rax\n
str_416: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_417: db 32, 32, 32, 32, 115, 121, 115, 99, 97, 108, 108, 10, 0 ;    syscall\n
str_418: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 10, 0 ;    push rax\n
str_419: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_420: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 105, 10, 0 ;    pop rdi\n
str_421: db 32, 32, 32, 32, 115, 121, 115, 99, 97, 108, 108, 10, 0 ;    syscall\n
str_422: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 10, 0 ;    push rax\n
str_423: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_424: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 105, 10, 0 ;    pop rdi\n
str_425: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 115, 105, 10, 0 ;    pop rsi\n
str_426: db 32, 32, 32, 32, 115, 121, 115, 99, 97, 108, 108, 10, 0 ;    syscall\n
str_427: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 10, 0 ;    push rax\n
str_428: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_429: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 105, 10, 0 ;    pop rdi\n
str_430: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 115, 105, 10, 0 ;    pop rsi\n
str_431: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 120, 10, 0 ;    pop rdx\n
str_432: db 32, 32, 32, 32, 115, 121, 115, 99, 97, 108, 108, 10, 0 ;    syscall\n
str_433: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 10, 0 ;    push rax\n
str_434: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_435: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 105, 10, 0 ;    pop rdi\n
str_436: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 115, 105, 10, 0 ;    pop rsi\n
str_437: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 120, 10, 0 ;    pop rdx\n
str_438: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 49, 48, 10, 0 ;    pop r10\n
str_439: db 32, 32, 32, 32, 115, 121, 115, 99, 97, 108, 108, 10, 0 ;    syscall\n
str_440: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 10, 0 ;    push rax\n
str_441: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_442: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 105, 10, 0 ;    pop rdi\n
str_443: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 115, 105, 10, 0 ;    pop rsi\n
str_444: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 120, 10, 0 ;    pop rdx\n
str_445: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 49, 48, 10, 0 ;    pop r10\n
str_446: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 56, 10, 0 ;    pop r8\n
str_447: db 32, 32, 32, 32, 115, 121, 115, 99, 97, 108, 108, 10, 0 ;    syscall\n
str_448: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 10, 0 ;    push rax\n
str_449: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 97, 120, 10, 0 ;    pop rax\n
str_450: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 105, 10, 0 ;    pop rdi\n
str_451: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 115, 105, 10, 0 ;    pop rsi\n
str_452: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 120, 10, 0 ;    pop rdx\n
str_453: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 49, 48, 10, 0 ;    pop r10\n
str_454: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 56, 10, 0 ;    pop r8\n
str_455: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 57, 10, 0 ;    pop r9\n
str_456: db 32, 32, 32, 32, 115, 121, 115, 99, 97, 108, 108, 10, 0 ;    syscall\n
str_457: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 114, 97, 120, 10, 0 ;    push rax\n
str_458: db 32, 32, 32, 32, 97, 100, 100, 32, 114, 115, 112, 44, 32, 56, 10, 0 ;    add rsp, 8\n
str_459: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 97, 120, 44, 32, 54, 48, 10, 0 ;    mov rax, 60\n
str_460: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 100, 105, 10, 0 ;    pop rdi\n
str_461: db 32, 32, 32, 32, 115, 121, 115, 99, 97, 108, 108, 10, 0 ;    syscall\n
str_462: db 32, 32, 32, 32, 0 ;    
str_463: db 121, 0 ;y
str_464: db 91, 65, 83, 77, 93, 32, 0 ;[ASM] 
str_465: db 112, 114, 111, 99, 95, 0 ;proc_
str_466: db 95, 0 ;_
str_467: db 58, 0 ;:
str_468: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 113, 119, 111, 114, 100, 32, 0 ;    push qword 
str_469: db 99, 108, 97, 115, 115, 95, 0 ;class_
str_470: db 58, 0 ;:
str_471: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 10, 0 ;    pop rbx\n
str_472: db 32, 32, 32, 32, 116, 101, 115, 116, 32, 114, 98, 120, 44, 32, 114, 98, 120, 10, 0 ;    test rbx, rbx\n
str_473: db 46, 98, 108, 111, 99, 107, 115, 116, 97, 114, 116, 95, 0 ;.blockstart_
str_474: db 58, 32, 59, 32, 105, 102, 0 ;: ; if
str_475: db 32, 32, 32, 32, 106, 122, 32, 46, 98, 108, 111, 99, 107, 101, 110, 100, 95, 0 ;    jz .blockend_
str_476: db 46, 98, 108, 111, 99, 107, 115, 116, 97, 114, 116, 95, 0 ;.blockstart_
str_477: db 58, 32, 59, 32, 100, 111, 0 ;: ; do
str_478: db 32, 32, 32, 32, 106, 109, 112, 32, 46, 98, 108, 111, 99, 107, 101, 110, 100, 95, 0 ;    jmp .blockend_
str_479: db 46, 98, 108, 111, 99, 107, 115, 116, 97, 114, 116, 95, 0 ;.blockstart_
str_480: db 58, 32, 59, 32, 108, 97, 109, 98, 100, 97, 0 ;: ; lambda
str_481: db 32, 32, 32, 32, 106, 109, 112, 32, 46, 98, 108, 111, 99, 107, 101, 110, 100, 95, 0 ;    jmp .blockend_
str_482: db 46, 98, 108, 111, 99, 107, 115, 116, 97, 114, 116, 95, 0 ;.blockstart_
str_483: db 58, 32, 59, 32, 108, 97, 109, 98, 100, 97, 0 ;: ; lambda
str_484: db 83, 73, 90, 69, 0 ;SIZE
str_485: db 46, 98, 108, 111, 99, 107, 101, 110, 100, 95, 0 ;.blockend_
str_486: db 58, 32, 59, 32, 105, 102, 0 ;: ; if
str_487: db 46, 98, 108, 111, 99, 107, 101, 110, 100, 95, 0 ;.blockend_
str_488: db 58, 32, 59, 32, 108, 97, 109, 98, 100, 97, 0 ;: ; lambda
str_489: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 46, 98, 108, 111, 99, 107, 115, 116, 97, 114, 116, 95, 0 ;    push .blockstart_
str_490: db 46, 98, 108, 111, 99, 107, 101, 110, 100, 95, 0 ;.blockend_
str_491: db 58, 32, 59, 32, 108, 97, 109, 98, 100, 97, 0 ;: ; lambda
str_492: db 32, 32, 32, 32, 112, 117, 115, 104, 32, 46, 98, 108, 111, 99, 107, 115, 116, 97, 114, 116, 95, 0 ;    push .blockstart_
str_493: db 32, 32, 32, 32, 109, 111, 118, 32, 114, 97, 120, 44, 32, 91, 114, 101, 116, 95, 115, 116, 97, 99, 107, 95, 114, 115, 112, 93, 10, 0 ;    mov rax, [ret_stack_rsp]\n
str_494: db 32, 32, 32, 32, 97, 100, 100, 32, 114, 97, 120, 44, 32, 56, 10, 0 ;    add rax, 8\n
str_495: db 32, 32, 32, 32, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 114, 101, 116, 95, 115, 116, 97, 99, 107, 95, 114, 115, 112, 93, 44, 32, 114, 97, 120, 10, 0 ;    mov qword [ret_stack_rsp], rax\n
str_496: db 32, 32, 32, 32, 109, 111, 118, 32, 113, 119, 111, 114, 100, 32, 91, 114, 97, 120, 93, 44, 32, 46, 98, 108, 111, 99, 107, 101, 110, 100, 95, 0 ;    mov qword [rax], .blockend_
str_497: db 32, 32, 32, 32, 106, 109, 112, 32, 112, 114, 111, 99, 95, 0 ;    jmp proc_
str_498: db 46, 98, 108, 111, 99, 107, 101, 110, 100, 95, 0 ;.blockend_
str_499: db 58, 32, 59, 32, 99, 97, 108, 108, 0 ;: ; call
str_500: db 32, 32, 32, 32, 112, 111, 112, 32, 114, 98, 120, 10, 0 ;    pop rbx\n
str_501: db 32, 32, 32, 32, 116, 101, 115, 116, 32, 114, 98, 120, 44, 32, 114, 98, 120, 10, 0 ;    test rbx, rbx\n
str_502: db 32, 32, 32, 32, 106, 110, 122, 32, 46, 98, 108, 111, 99, 107, 115, 116, 97, 114, 116, 95, 0 ;    jnz .blockstart_
str_503: db 46, 98, 108, 111, 99, 107, 101, 110, 100, 95, 0 ;.blockend_
str_504: db 58, 32, 59, 32, 100, 111, 0 ;: ; do
str_505: db 50, 46, 48, 46, 48, 0 ;2.0.0
str_506: db 115, 108, 97, 109, 32, 99, 111, 109, 112, 105, 108, 101, 114, 32, 118, 0 ;slam compiler v
str_507: db 69, 82, 82, 79, 82, 58, 32, 89, 111, 117, 32, 109, 117, 115, 116, 32, 99, 111, 109, 112, 105, 108, 101, 32, 101, 120, 97, 99, 116, 108, 121, 32, 49, 32, 102, 105, 108, 101, 0 ;ERROR: You must compile exactly 1 file
str_508: db 69, 82, 82, 79, 82, 58, 32, 76, 97, 115, 116, 32, 97, 114, 103, 117, 109, 101, 110, 116, 32, 115, 117, 112, 112, 108, 105, 101, 100, 32, 114, 101, 113, 117, 105, 114, 101, 115, 32, 97, 32, 112, 97, 114, 97, 109, 101, 116, 101, 114, 0 ;ERROR: Last argument supplied requires a parameter
str_509: db 115, 108, 97, 109, 32, 99, 111, 109, 112, 105, 108, 101, 114, 32, 118, 0 ;slam compiler v
str_510: db 32, 117, 115, 97, 103, 101, 58, 0 ; usage:
str_511: db 115, 108, 97, 109, 32, 91, 45, 104, 93, 32, 91, 45, 97, 93, 32, 91, 45, 115, 93, 32, 91, 45, 105, 32, 105, 110, 99, 108, 117, 100, 101, 93, 32, 91, 45, 111, 32, 111, 117, 116, 112, 117, 116, 93, 32, 102, 105, 108, 101, 0 ;slam [-h]\ [-a]\ [-s]\ [-i include]\ [-o output]\ file
str_512: db 45, 118, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 115, 104, 111, 119, 115, 32, 116, 104, 101, 32, 118, 101, 114, 115, 105, 111, 110, 32, 97, 110, 100, 32, 101, 120, 105, 116, 115, 46, 0 ;-v            shows the version and exits.
str_513: db 45, 104, 44, 32, 45, 45, 104, 101, 108, 112, 32, 32, 32, 32, 115, 104, 111, 119, 115, 32, 116, 104, 105, 115, 32, 104, 101, 108, 112, 32, 109, 101, 115, 115, 97, 103, 101, 46, 0 ;-h, --help    shows this help message.
str_514: db 45, 115, 44, 32, 45, 45, 115, 105, 109, 32, 32, 32, 32, 32, 114, 117, 110, 115, 32, 116, 104, 101, 32, 102, 105, 108, 101, 32, 119, 105, 116, 104, 32, 116, 104, 101, 32, 115, 105, 109, 117, 108, 97, 116, 111, 114, 46, 0 ;-s, --sim     runs the file with the simulator.
str_515: db 45, 97, 44, 32, 45, 45, 97, 115, 109, 32, 32, 32, 32, 32, 97, 115, 115, 101, 109, 98, 108, 101, 115, 32, 116, 104, 101, 32, 102, 105, 108, 101, 46, 0 ;-a, --asm     assembles the file.
str_516: db 45, 106, 44, 32, 45, 45, 115, 106, 115, 32, 32, 32, 32, 32, 97, 115, 115, 101, 109, 98, 108, 101, 115, 32, 116, 104, 101, 32, 102, 105, 108, 101, 32, 116, 111, 32, 97, 32, 115, 106, 115, 32, 102, 105, 108, 101, 46, 0 ;-j, --sjs     assembles the file to a sjs file.
str_517: db 45, 111, 44, 32, 45, 45, 111, 117, 116, 112, 117, 116, 32, 32, 115, 101, 108, 101, 99, 116, 115, 32, 116, 104, 101, 32, 111, 117, 116, 112, 117, 116, 32, 102, 105, 108, 101, 46, 0 ;-o, --output  selects the output file.
str_518: db 46, 97, 115, 109, 0 ;.asm
str_519: db 46, 115, 108, 97, 0 ;.sla
str_520: db 45, 104, 0 ;-h
str_521: db 45, 45, 104, 101, 108, 112, 0 ;--help
str_522: db 45, 118, 0 ;-v
str_523: db 45, 45, 115, 105, 109, 0 ;--sim
str_524: db 45, 115, 0 ;-s
str_525: db 45, 45, 97, 115, 109, 0 ;--asm
str_526: db 45, 97, 0 ;-a
str_527: db 45, 45, 115, 106, 115, 0 ;--sjs
str_528: db 45, 106, 0 ;-j
str_529: db 45, 111, 0 ;-o
str_530: db 111, 117, 116, 0 ;out
str_531: db 111, 117, 116, 46, 97, 115, 109, 0 ;out.asm
str_532: db 111, 117, 116, 46, 115, 108, 97, 0 ;out.sla
str_533: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 102, 97, 115, 109, 0 ;/usr/bin/fasm
str_534: db 45, 109, 0 ;-m
str_535: db 53, 50, 52, 50, 56, 56, 0 ;524288
str_536: db 116, 101, 109, 112, 46, 111, 0 ;temp.o
str_537: db 47, 117, 115, 114, 47, 98, 105, 110, 47, 108, 100, 0 ;/usr/bin/ld
str_538: db 45, 100, 121, 110, 97, 109, 105, 99, 45, 108, 105, 110, 107, 101, 114, 0 ;-dynamic-linker
str_539: db 47, 108, 105, 98, 54, 52, 47, 108, 100, 45, 108, 105, 110, 117, 120, 45, 120, 56, 54, 45, 54, 52, 46, 115, 111, 46, 50, 0 ;/lib64/ld-linux-x86-64.so.2
str_540: db 45, 111, 0 ;-o
str_541: db 45, 108, 99, 0 ;-lc
str_542: db 45, 109, 101, 108, 102, 95, 120, 56, 54, 95, 54, 52, 0 ;-melf_x86_64
str_543: db 116, 101, 109, 112, 46, 111, 0 ;temp.o
section '.bss'
args_ptr: rq 1
ret_stack_rsp: rq 1
ret_stack: rb 65536
mem: rb 1679
