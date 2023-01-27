format ELF64
section '.text' executable
public _start
; headptr_isnull:
; headcstr_len:
; headcstr_print:
; headcstr_cr:
; headcstr_println:
; headcstr_eq:
; headcstr_cpy:
; headcstr_last:
; headcstr_clear:
; headcstr_cat:
; headcstr_isnum:
; headcstr_int:
; headcstr_split:
; headcstr_iter:
proc_cstr_len:
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_print:
    pop rax
    push rax
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_println:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_print
.blockend_0: ; call
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_cr
.blockend_1: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_eq:
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
.blockstart_0: ; do
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
    xor rcx, rcx
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
    xor rcx, rcx
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
.blockstart_1: ; if
    jz .blockend_1
    add rsp, 8
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_1: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 0
    xor rcx, rcx
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
    xor rcx, rcx
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
.blockstart_2: ; if
    jz .blockend_2
    add rsp, 8
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_2: ; if
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    xor rcx, rcx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
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
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_cpy
.blockend_1: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_isnum:
    mov rax, [loc_stack_rsp]
    add rax, 1
    mov [loc_stack_rsp], rax
    mov rax, [loc_stack_rsp]
    add rax, 1
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    push qword 48
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 1
    push rax
    push qword 57
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
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
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
    push qword 98
    xor rcx, rcx
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
    mov rax, [rax-8]
    add rax, 1
    push rax
    push qword 49
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
    xor rcx, rcx
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
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 1
    push rax
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
    push qword 45
    xor rcx, rcx
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
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    xor rcx, rcx
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
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 1
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    xor rcx, rcx
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
    push qword 98
    xor rcx, rcx
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
    xor rcx, rcx
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
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_cstr_len
.blockend_6: ; call
    push qword 1
    xor rcx, rcx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_int:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    push qword 10
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_1: ; if
    pop rax
    push rax
    push rax
    pop rax
    push rax
    push rax
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
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
    push qword 98
    xor rcx, rcx
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
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
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
    xor rcx, rcx
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
    mov rax, [rax-8]
    add rax, 0
    push rax
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
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
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
    push qword 70
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    xor rcx, rcx
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
    push qword 65
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    xor rcx, rcx
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
    push qword 65
    push qword 10
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockend_6: ; if
    push qword 48
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
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 98
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
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
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_split:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 8
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
    mov rax, [rax-8]
    add rax, 0
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
    mov rax, [rax-8]
    add rax, 8
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
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
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    xor rcx, rcx
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
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 8
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    mov rbx, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_1
.blockend_1: ; do
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_iter:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
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
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_0: ; if
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
; headint_gettmp:
; headint_inctmpidx:
; headint_cstr:
; headint_cstrhex:
; headint_print:
; headint_printhex:
proc_int_gettmp:
    push mem+8; int_tmpresult
    push qword 30
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+0; int_tmpidx
    pop rax
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_int_inctmpidx:
    push mem+0; int_tmpidx
    push mem+0; int_tmpidx
    pop rax
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
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
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_int_inctmpidx
.blockend_2: ; call
    pop rax
    push rax
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
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
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_int_gettmp
.blockend_3: ; call
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+0; int_tmpidx
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    xor rcx, rcx
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
    push qword 97
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
    xor rcx, rcx
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
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockend_2: ; if
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
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
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_int_inctmpidx
.blockend_4: ; call
    pop rax
    push rax
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
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
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_int_gettmp
.blockend_5: ; call
    push qword 36
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_int_inctmpidx
.blockend_6: ; call
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_int_gettmp
.blockend_7: ; call
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+0; int_tmpidx
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_int_print:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_int_cstr
.blockend_0: ; call
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_print
.blockend_1: ; call
    push mem+0; int_tmpidx
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    xor rcx, rcx
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
    push qword 97
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
    xor rcx, rcx
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
    push qword 48
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockend_2: ; if
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
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
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_int_inctmpidx
.blockend_4: ; call
    pop rax
    push rax
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
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
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
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
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_int_inctmpidx
.blockend_6: ; call
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_int_gettmp
.blockend_7: ; call
    push qword 48
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_int_inctmpidx
.blockend_8: ; call
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
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
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_cstr_print
.blockend_10: ; call
    push mem+0; int_tmpidx
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
; headtestin_test:
; headtestin_result:
; headtestin_cstreq:
; headtestin_eq:
; headtestin_true:
; headtestin_false:
; headheapentry_isentry:
; headheapentry_setfree:
; headheapentry_create:
; headheap_newpage:
; headheap_init:
; headheap_empty:
; headheap_alloc:
; headheap_zalloc:
; headheap_realloc:
; headheap_free:
; headmem_cpy:
; headmem_eq:
; headmem_zero:
; headmem_set:
; headmem_mov:
proc_mem_cpy:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
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
    push rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    xor rcx, rcx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    push rax
    push rax
    pop rax
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
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_mem_eq:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    pop rax
    pop rbx
    push rax
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
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
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    push rax
    push rax
    pop rax
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
    xor rcx, rcx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_mem_zero:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
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
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
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
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_mem_set:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [loc_stack_rsp]
    add rax, 1
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
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
    mov rax, [rax-8]
    add rax, 8
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
.blockstart_0: ; do
    pop rax
    push rax
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 8
    push rax
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
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
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
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_mem_mov:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
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
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_alloc
.blockend_0: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 8
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
    mov rax, [rax-8]
    add rax, 8
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_mem_cpy
.blockend_1: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 8
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_mem_cpy
.blockend_2: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 8
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_heap_free
.blockend_3: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
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
    mov rbx, [rax]
    push rbx
    xor rcx, rcx
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
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_heapentry_setfree:
    pop rax
    push rax
    push rax
    push mem+80; heap_allocstart
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
    mov bl, [rax]
    push rbx
    push qword 1
    pop rax
    not rax
    push rax
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_heapentry_create:
    pop rax
    push rax
    push rax
    push mem+80; heap_allocstart
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
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rbx
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
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 1
    pop rax
    pop rbx
    or rax, rbx
    push rax
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_heap_newpage:
    push mem+88; heap_endaddr
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 640000
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push mem+88; heap_endaddr
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
    pop rax
    push rax
    push rax
    push mem+88; heap_endaddr
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
    xor rcx, rcx
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
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_println
.blockend_1: ; call
    push qword 1
    mov rax, 60
    pop rdi
    syscall
.blockend_0: ; if
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_heap_init:
    push mem+96; heap_isinit
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_0: ; if
    push mem+96; heap_isinit
    push qword 1
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    push mem+72; heap_startaddr
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
    push mem+88; heap_endaddr
    push mem+72; heap_startaddr
    pop rax
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+80; heap_allocstart
    push mem+72; heap_startaddr
    pop rax
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_heap_newpage
.blockend_1: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_heap_empty:
    push mem+96; heap_isinit
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
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
    push qword 1
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_0: ; if
    push mem+72; heap_startaddr
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 64
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_1: ; do
    push qword 64
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_heapentry_isentry
.blockend_2: ; call
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    add rsp, 8
    push qword 0
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_3: ; if
    pop rax
    push rax
    push rax
    push mem+88; heap_endaddr
    pop rax
    mov rbx, [rax]
    push rbx
    xor rcx, rcx
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
    push qword 1
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_heap_freeall:
    push mem+72; heap_startaddr
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 64
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_0: ; do
    push qword 64
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_heapentry_isentry
.blockend_1: ; call
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    pop rax
    push rax
    push rax
    push qword 17
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_heap_free
.blockend_3: ; call
.blockend_2: ; if
    pop rax
    push rax
    push rax
    push mem+88; heap_endaddr
    pop rax
    mov rbx, [rax]
    push rbx
    xor rcx, rcx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_heap_alloc:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
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
    push qword 64
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
    push qword 64
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
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
    push mem+80; heap_allocstart
    pop rax
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 64
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 64
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_1: ; do
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 64
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 64
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push mem+88; heap_endaddr
    pop rax
    mov rbx, [rax]
    push rbx
    xor rcx, rcx
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
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_heap_newpage
.blockend_3: ; call
.blockend_2: ; if
    pop rax
    push rax
    push rax
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
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
    push qword 64
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 64
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
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    xor rcx, rcx
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
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
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
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
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
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_heapentry_create
.blockend_6: ; call
    push qword 17
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_heap_zalloc:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_init
.blockend_0: ; call
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
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
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_mem_zero
.blockend_2: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_1: ; if
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_heapentry_setfree
.blockend_2: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_heap_realloc:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
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
    mov rax, [rax-8]
    add rax, 24
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
    mov rax, [rax-8]
    add rax, 24
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 17
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
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
    push str_2
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_println
.blockend_2: ; call
.blockend_1: ; if
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 16
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 24
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 17
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push qword 9
    pop rax
    pop rbx
    add rax, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 24
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_heap_free
.blockend_3: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 8
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_heap_alloc
.blockend_4: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 8
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 24
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 16
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_mem_cpy
.blockend_5: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 8
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_handler:
    add rsp, 8
    push mem+97; failed
    push qword 1
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_testin_suite:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_cr
.blockend_0: ; call
    push str_3
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_print
.blockend_1: ; call
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_println
.blockend_2: ; call
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_cr
.blockend_3: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_testin_test:
    mov rax, [loc_stack_rsp]
    add rax, 64
    mov [loc_stack_rsp], rax
    push mem+40; testin_total
    pop rax
    push rax
    push rax
    pop rax
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
    push str_4
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_print
.blockend_0: ; call
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_print
.blockend_1: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    push proc_handler
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 67108864
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push proc_handler
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 8
    push qword 0
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    push qword 11
    push qword 13
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
    xor rcx, rcx
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
    pop rax
    push rax
    push rax
    push qword -1
    pop rax
    pop rbx
    imul rax, rbx
    push rax
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_int_print
.blockend_3: ; call
.blockend_2: ; if
    add rsp, 8
.blockstart_4: ; call
    pop rcx
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp qword rcx
.blockend_4: ; call
    push mem+97; failed
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    push rax
    push rax
    pop rbx
    test rbx, rbx
.blockstart_5: ; if
    jz .blockend_5
    push str_5
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_cstr_println
.blockend_6: ; call
    push mem+64; testin_fail
    pop rax
    push rax
    push rax
    pop rax
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
.blockend_5: ; if
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_7: ; if
    jz .blockend_7
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_heap_empty
.blockend_8: ; call
    pop rax
    push rax
    push rax
    pop rbx
    test rbx, rbx
.blockstart_9: ; if
    jz .blockend_9
    push str_6
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_cstr_println
.blockend_10: ; call
.blockend_9: ; if
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_11: ; if
    jz .blockend_11
    push str_7
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_cstr_println
.blockend_12: ; call
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_heap_freeall
.blockend_13: ; call
    push mem+56; testin_leak
    pop rax
    push rax
    push rax
    pop rax
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
    push mem+48; testin_pass
    pop rax
    push rax
    push rax
    pop rax
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
.blockend_7: ; if
    push mem+97; failed
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_testin_results:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_cr
.blockend_0: ; call
    push str_8
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_println
.blockend_1: ; call
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_cr
.blockend_2: ; call
    push str_9
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_print
.blockend_3: ; call
    push mem+48; testin_pass
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_int_print
.blockend_4: ; call
    push str_10
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_cstr_print
.blockend_5: ; call
    push mem+40; testin_total
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_int_print
.blockend_6: ; call
    push str_11
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_cstr_print
.blockend_7: ; call
    push mem+56; testin_leak
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_int_print
.blockend_8: ; call
    push str_12
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_cstr_print
.blockend_9: ; call
    push mem+48; testin_pass
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_int_print
.blockend_10: ; call
    push str_13
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_cstr_print
.blockend_11: ; call
    push mem+64; testin_fail
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_int_print
.blockend_12: ; call
    push str_14
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_cstr_print
.blockend_13: ; call
    push mem+40; testin_total
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_int_print
.blockend_14: ; call
    push str_15
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_cstr_print
.blockend_15: ; call
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_cstr_cr
.blockend_16: ; call
    push mem+64; testin_fail
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_17: ; if
    jz .blockend_17
    push mem+64; testin_fail
    pop rax
    mov rbx, [rax]
    push rbx
    mov rax, 60
    pop rdi
    syscall
.blockend_17: ; if
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_testin_cstreq:
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
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_eq
.blockend_0: ; call
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    push str_16
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_print
.blockend_2: ; call
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_print
.blockend_3: ; call
    push str_17
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_cstr_print
.blockend_4: ; call
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_cstr_print
.blockend_5: ; call
    push str_18
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_cstr_println
.blockend_6: ; call
    push qword 1
    mov rax, 60
    pop rdi
    syscall
.blockend_1: ; if
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_testin_eq:
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
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    push str_19
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_print
.blockend_1: ; call
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_int_print
.blockend_2: ; call
    push str_20
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_print
.blockend_3: ; call
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_int_print
.blockend_4: ; call
    push str_21
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_cstr_println
.blockend_5: ; call
    push qword 1
    mov rax, 60
    pop rdi
    syscall
.blockend_0: ; if
    add rsp, 8
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_testin_true:
    pop rax
    push rax
    push rax
    push qword 0
    xor rcx, rcx
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
    push str_22
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_print
.blockend_1: ; call
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_int_cstr
.blockend_2: ; call
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_print
.blockend_3: ; call
    push str_23
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_cstr_println
.blockend_4: ; call
    push qword 1
    mov rax, 60
    pop rdi
    syscall
.blockend_0: ; if
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_testin_false:
    pop rax
    push rax
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    push str_24
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_print
.blockend_1: ; call
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_int_cstr
.blockend_2: ; call
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_print
.blockend_3: ; call
    push str_25
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_cstr_println
.blockend_4: ; call
    push qword 1
    mov rax, 60
    pop rdi
    syscall
.blockend_0: ; if
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_test_numbers:
    push str_26
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_testin_suite
.blockend_0: ; call
    push str_27
    jmp .blockend_1
.blockstart_1: ; plambda
    push qword 8
    push qword 8
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_testin_eq
.blockend_2: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_1: ; plambda
    push .blockstart_1
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_testin_test
.blockend_3: ; call
    push str_28
    jmp .blockend_5
.blockstart_5: ; plambda
    push qword 0
    push qword 0
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_testin_eq
.blockend_6: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_5: ; plambda
    push .blockstart_5
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_testin_test
.blockend_7: ; call
    push str_29
    jmp .blockend_9
.blockstart_9: ; plambda
    push qword 1111b
    push qword 15
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_testin_eq
.blockend_10: ; call
    push qword 0015
    push qword 15
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_testin_eq
.blockend_11: ; call
    push qword 000fh
    push qword 15
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_testin_eq
.blockend_12: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_9: ; plambda
    push .blockstart_9
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_testin_test
.blockend_13: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_constsize_value:
    push qword 1
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_test_classes:
    push str_30
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_testin_suite
.blockend_0: ; call
    push str_31
    jmp .blockend_1
.blockstart_1: ; plambda
    push qword 8
    push qword 8
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_testin_eq
.blockend_2: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_1: ; plambda
    push .blockstart_1
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_testin_test
.blockend_3: ; call
    push str_32
    jmp .blockend_5
.blockstart_5: ; plambda
    push qword 16
    push qword 16
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_testin_eq
.blockend_6: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_5: ; plambda
    push .blockstart_5
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_testin_test
.blockend_7: ; call
    push str_33
    jmp .blockend_9
.blockstart_9: ; plambda
    push qword 8
    push qword 8
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_testin_eq
.blockend_10: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_9: ; plambda
    push .blockstart_9
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_testin_test
.blockend_11: ; call
    push str_34
    jmp .blockend_13
.blockstart_13: ; plambda
    push mem+106; constsize_bb
    push mem+98; constsize_aa
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push qword 8
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_testin_eq
.blockend_14: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_13: ; plambda
    push .blockstart_13
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_testin_test
.blockend_15: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_test_cstr:
    push str_35
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_testin_suite
.blockend_0: ; call
    push str_36
    jmp .blockend_1
.blockstart_1: ; plambda
    push qword 100
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_heap_zalloc
.blockend_2: ; call
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_heap_free
.blockend_3: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_1: ; plambda
    push .blockstart_1
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_testin_test
.blockend_4: ; call
    push str_37
    jmp .blockend_6
.blockstart_6: ; plambda
    push qword 100
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_heap_zalloc
.blockend_7: ; call
    push str_38
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_cstr_cat
.blockend_8: ; call
    push str_39
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_cstr_cat
.blockend_9: ; call
    pop rax
    push rax
    push rax
    push str_40
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_testin_cstreq
.blockend_10: ; call
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_heap_free
.blockend_11: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_6: ; plambda
    push .blockstart_6
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_testin_test
.blockend_12: ; call
    push str_41
    jmp .blockend_14
.blockstart_14: ; plambda
    push qword 100
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_heap_zalloc
.blockend_15: ; call
    push str_42
    push qword 32
    push mem+114; tmp
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_cstr_split
.blockend_16: ; call
    push str_43
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_testin_cstreq
.blockend_17: ; call
    push str_44
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_testin_cstreq
.blockend_18: ; call
.blockstart_19: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_19
    jmp proc_heap_free
.blockend_19: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_14: ; plambda
    push .blockstart_14
.blockstart_20: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_20
    jmp proc_testin_test
.blockend_20: ; call
    push str_45
    jmp .blockend_22
.blockstart_22: ; plambda
    push qword 100
.blockstart_23: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_23
    jmp proc_heap_zalloc
.blockend_23: ; call
    push str_46
    push str_47
.blockstart_24: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_24
    jmp proc_cstr_eq
.blockend_24: ; call
.blockstart_25: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_25
    jmp proc_testin_true
.blockend_25: ; call
.blockstart_26: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_26
    jmp proc_heap_free
.blockend_26: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_22: ; plambda
    push .blockstart_22
.blockstart_27: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_27
    jmp proc_testin_test
.blockend_27: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
; headdlist_new:
; headdlist_free:
; headdlist_len:
; headdlist_getptr:
; headdlist_pop:
; headdlist_append:
; headdlist_last:
proc_dlist_new:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    push mem+114; tmp
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 16
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
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_zalloc
.blockend_0: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+114; tmp
    pop rax
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
    push qword 16
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+114; tmp
    pop rax
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
    push mem+114; tmp
    pop rax
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
    push mem+114; tmp
    pop rax
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_dlist_free:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_free
.blockend_0: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_dlist_len:
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_dlist_getptr:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+114; tmp
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+114; tmp
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    xor rcx, rcx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_0: ; if
    push mem+114; tmp
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+114; tmp
    pop rax
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_dlist_pop:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    push mem+114; tmp
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+114; tmp
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_0: ; if
    push mem+114; tmp
    pop rax
    mov rbx, [rax]
    push rbx
    push mem+114; tmp
    pop rax
    mov rbx, [rax]
    push rbx
    push mem+114; tmp
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_dlist_getptr
.blockend_1: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    push mem+114; tmp
    pop rax
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_dlist_append:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    pop rax
    pop rbx
    push rax
    push rbx
    push mem+114; tmp
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+114; tmp
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+114; tmp
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+114; tmp
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    xor rcx, rcx
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
    push mem+114; tmp
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push mem+114; tmp
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 16
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
    push mem+114; tmp
    pop rax
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_heap_realloc
.blockend_1: ; call
    push mem+114; tmp
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+114; tmp
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+114; tmp
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push mem+114; tmp
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 16
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
    push mem+114; tmp
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push mem+114; tmp
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    push mem+114; tmp
    pop rax
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
    push mem+114; tmp
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_mem_cpy
.blockend_2: ; call
    push mem+114; tmp
    pop rax
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
    push mem+114; tmp
    pop rax
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_dlist_last:
    pop rax
    push rax
    push rax
    pop rax
    push rax
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_dlist_getptr
.blockend_0: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_test_dlist:
    push str_48
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_testin_suite
.blockend_0: ; call
    push str_49
    jmp .blockend_1
.blockstart_1: ; plambda
    push mem+146; list
    push qword 4
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_dlist_new
.blockend_2: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+146; list
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_dlist_free
.blockend_3: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_1: ; plambda
    push .blockstart_1
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_testin_test
.blockend_4: ; call
    push str_50
    jmp .blockend_6
.blockstart_6: ; plambda
    push mem+146; list
    push qword 4
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_dlist_new
.blockend_7: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+146; list
    pop rax
    mov rbx, [rax]
    push rbx
    push str_51
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_dlist_append
.blockend_8: ; call
    push mem+146; list
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+146; list
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_dlist_free
.blockend_9: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_6: ; plambda
    push .blockstart_6
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_testin_test
.blockend_10: ; call
    push str_52
    jmp .blockend_12
.blockstart_12: ; plambda
    push mem+146; list
    push qword 4
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_dlist_new
.blockend_13: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+146; list
    pop rax
    mov rbx, [rax]
    push rbx
    push str_53
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_dlist_append
.blockend_14: ; call
    push mem+146; list
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+146; list
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 0
.blockstart_15: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_15
    jmp proc_dlist_getptr
.blockend_15: ; call
    push str_54
.blockstart_16: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_16
    jmp proc_testin_cstreq
.blockend_16: ; call
    push mem+146; list
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_17: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_17
    jmp proc_dlist_free
.blockend_17: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_12: ; plambda
    push .blockstart_12
.blockstart_18: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_18
    jmp proc_testin_test
.blockend_18: ; call
    push str_55
    jmp .blockend_20
.blockstart_20: ; plambda
    push mem+146; list
    push qword 4
.blockstart_21: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_21
    jmp proc_dlist_new
.blockend_21: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
.blockstart_22: ; do
    push mem+146; list
    pop rax
    mov rbx, [rax]
    push rbx
    push str_56
.blockstart_23: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_23
    jmp proc_dlist_append
.blockend_23: ; call
    push mem+146; list
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
    pop rax
    push rax
    push rax
    push mem+146; list
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_24: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_24
    jmp proc_dlist_len
.blockend_24: ; call
.blockstart_25: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_25
    jmp proc_testin_eq
.blockend_25: ; call
    pop rax
    push rax
    push rax
    push qword 100
    xor rcx, rcx
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_22
.blockend_22: ; do
    add rsp, 8
    push mem+146; list
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_26: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_26
    jmp proc_dlist_free
.blockend_26: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_20: ; plambda
    push .blockstart_20
.blockstart_27: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_27
    jmp proc_testin_test
.blockend_27: ; call
    push str_57
    jmp .blockend_29
.blockstart_29: ; plambda
    push mem+146; list
    push qword 4
.blockstart_30: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_30
    jmp proc_dlist_new
.blockend_30: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+146; list
    pop rax
    mov rbx, [rax]
    push rbx
    push str_58
.blockstart_31: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_31
    jmp proc_dlist_append
.blockend_31: ; call
    push str_59
.blockstart_32: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_32
    jmp proc_dlist_append
.blockend_32: ; call
    push mem+146; list
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+146; list
    pop rax
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
.blockstart_33: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_33
    jmp proc_dlist_pop
.blockend_33: ; call
    push str_60
.blockstart_34: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_34
    jmp proc_testin_cstreq
.blockend_34: ; call
    pop rax
    push rax
    push rax
.blockstart_35: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_35
    jmp proc_dlist_pop
.blockend_35: ; call
    push str_61
.blockstart_36: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_36
    jmp proc_testin_cstreq
.blockend_36: ; call
    pop rax
    push rax
    push rax
.blockstart_37: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_37
    jmp proc_dlist_len
.blockend_37: ; call
    push qword 0
.blockstart_38: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_38
    jmp proc_testin_eq
.blockend_38: ; call
    push mem+146; list
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+146; list
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_39: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_39
    jmp proc_dlist_free
.blockend_39: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_29: ; plambda
    push .blockstart_29
.blockstart_40: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_40
    jmp proc_testin_test
.blockend_40: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
; headllentry_new:
; headllentry_free:
; headllentry_last:
; headllentry_pop:
; headllentry_getptr:
; headllentry_append:
; headllentry_print:
; headllist_new:
; headllist_free:
; headllist_last:
; headllist_pop:
; headllist_len:
; headllist_foreach:
; headllist_getptr:
; headllist_append:
; headllist_print:
proc_llentry_new:
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_zalloc
.blockend_0: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
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
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_llentry_free
.blockend_1: ; call
.blockend_0: ; if
    add rsp, 8
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_heap_free
.blockend_2: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    mov rbx, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_0: ; if
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_llentry_last
.blockend_1: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    mov rbx, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    mov rbx, [rax]
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
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
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_llentry_getptr:
    pop rax
    push rax
    push rax
    push qword 0
    xor rcx, rcx
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
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_llentry_getptr
.blockend_1: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_llist_new:
    push qword 16
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
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
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_llentry_free
.blockend_1: ; call
.blockend_0: ; if
    add rsp, 8
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_heap_free
.blockend_2: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    mov rbx, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    mov rbx, [rax]
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_llentry_last
.blockend_1: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    mov rbx, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    mov rbx, [rax]
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_llentry_pop
.blockend_1: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    mov rbx, [rax]
    push rbx
    push qword 0
    xor rcx, rcx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_0: ; if
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
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
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_1
.blockend_1: ; do
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_llist_foreach:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
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
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 0
    xor rcx, rcx
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
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
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
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    pop rcx
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp qword rcx
.blockend_2: ; call
    add rsp, 8
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 0
    xor rcx, rcx
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_1
.blockend_1: ; do
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_llist_getptr:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    pop rax
    pop rbx
    push rax
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
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
    push qword 0
    xor rcx, rcx
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
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_0: ; if
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_llentry_getptr
.blockend_1: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_llist_append:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    pop rax
    pop rbx
    push rax
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
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
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
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
    xor rcx, rcx
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
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_llentry_new
.blockend_2: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
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
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_mem_cpy
.blockend_3: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_1: ; if
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_llentry_new
.blockend_4: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
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
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_llentry_append
.blockend_6: ; call
    add rsp, 8
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
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
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_mem_cpy
.blockend_8: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax-8]
    add rax, 0
    push rax
    pop rax
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_test_llist:
    push str_62
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_testin_suite
.blockend_0: ; call
    push str_63
    jmp .blockend_1
.blockstart_1: ; plambda
    push mem+154; list
    push qword 4
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_llist_new
.blockend_2: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+154; list
    pop rax
    mov rbx, [rax]
    push rbx
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_llist_free
.blockend_3: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_1: ; plambda
    push .blockstart_1
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_testin_test
.blockend_4: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_main:
    push str_64
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_println
.blockend_0: ; call
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_test_numbers
.blockend_1: ; call
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_test_classes
.blockend_2: ; call
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_test_cstr
.blockend_3: ; call
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_test_dlist
.blockend_4: ; call
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_test_llist
.blockend_5: ; call
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_testin_results
.blockend_6: ; call
    mov rax, [ret_stack_rsp]
    mov rax, [rax - 8]
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
    jmp quit
_start:
    mov qword [args_ptr], rsp
    mov qword [ret_stack_rsp], ret_stack
    mov qword [loc_stack_rsp], loc_stack
    mov rax, [ret_stack_rsp] 
    mov qword [rax], quit
    jmp proc_main
quit:
    mov rax, 60
    mov rdi, 0
    syscall
section '.data'
    str_0: db 10, 0
    str_1: db 69, 114, 114, 111, 114, 32, 97, 108, 108, 111, 99, 97, 116, 105, 110, 103, 32, 104, 101, 97, 112, 32, 112, 97, 103, 101, 0
    str_2: db 98, 97, 100, 32, 114, 101, 97, 108, 108, 111, 99, 0
    str_3: db 35, 35, 32, 0
    str_4: db 32, 45, 32, 0
    str_5: db 32, 91, 70, 65, 73, 76, 93, 0
    str_6: db 32, 91, 79, 75, 93, 0
    str_7: db 32, 91, 76, 69, 65, 75, 93, 0
    str_8: db 35, 35, 32, 82, 101, 115, 117, 108, 116, 115, 0
    str_9: db 32, 45, 32, 91, 0
    str_10: db 47, 0
    str_11: db 93, 32, 84, 101, 115, 116, 115, 32, 112, 97, 115, 115, 101, 100, 10, 32, 45, 32, 91, 0
    str_12: db 47, 0
    str_13: db 93, 32, 84, 101, 115, 116, 115, 32, 112, 97, 115, 115, 101, 100, 32, 119, 105, 116, 104, 32, 108, 101, 97, 107, 115, 10, 32, 45, 32, 91, 0
    str_14: db 47, 0
    str_15: db 93, 32, 84, 101, 115, 116, 115, 32, 102, 97, 105, 108, 101, 100, 0
    str_16: db 32, 45, 32, 65, 115, 115, 101, 114, 116, 105, 111, 110, 32, 70, 97, 105, 108, 101, 100, 96, 0
    str_17: db 96, 32, 33, 61, 32, 96, 0
    str_18: db 96, 0
    str_19: db 32, 45, 32, 65, 115, 115, 101, 114, 116, 105, 111, 110, 32, 70, 97, 105, 108, 101, 100, 96, 0
    str_20: db 96, 32, 33, 61, 32, 96, 0
    str_21: db 96, 0
    str_22: db 32, 45, 32, 65, 115, 115, 101, 114, 116, 105, 111, 110, 32, 70, 97, 105, 108, 101, 100, 32, 0
    str_23: db 32, 105, 115, 32, 110, 111, 116, 32, 116, 114, 117, 101, 0
    str_24: db 32, 45, 32, 65, 115, 115, 101, 114, 116, 105, 111, 110, 32, 70, 97, 105, 108, 101, 100, 32, 0
    str_25: db 32, 105, 115, 32, 110, 111, 116, 32, 102, 97, 108, 115, 101, 0
    str_26: db 78, 117, 109, 98, 101, 114, 115, 0
    str_27: db 105, 110, 116, 46, 83, 73, 90, 69, 32, 105, 115, 32, 56, 0
    str_28: db 78, 85, 76, 76, 32, 105, 115, 32, 48, 0
    str_29: db 78, 117, 109, 98, 101, 114, 115, 32, 105, 110, 32, 111, 116, 104, 101, 114, 32, 98, 97, 115, 101, 115, 0
    str_30: db 99, 108, 97, 115, 115, 101, 115, 0
    str_31: db 67, 108, 97, 115, 115, 32, 115, 105, 122, 101, 0
    str_32: db 82, 101, 118, 105, 115, 105, 116, 32, 99, 108, 97, 115, 115, 32, 115, 105, 122, 101, 0
    str_33: db 67, 111, 110, 115, 116, 32, 115, 105, 122, 101, 32, 99, 108, 97, 115, 115, 0
    str_34: db 67, 111, 110, 115, 116, 32, 115, 105, 122, 101, 32, 118, 97, 114, 0
    str_35: db 99, 115, 116, 114, 0
    str_36: db 67, 114, 101, 97, 116, 101, 32, 97, 32, 99, 115, 116, 114, 105, 110, 103, 0
    str_37: db 67, 111, 110, 99, 97, 116, 32, 116, 111, 32, 97, 32, 99, 115, 116, 114, 105, 110, 103, 0
    str_38: db 102, 111, 111, 0
    str_39: db 98, 97, 114, 0
    str_40: db 102, 111, 111, 98, 97, 114, 0
    str_41: db 83, 112, 108, 105, 116, 32, 97, 32, 99, 115, 116, 114, 105, 110, 103, 0
    str_42: db 108, 111, 108, 49, 32, 108, 111, 108, 50, 0
    str_43: db 108, 111, 108, 49, 0
    str_44: db 108, 111, 108, 50, 0
    str_45: db 67, 111, 109, 112, 97, 114, 101, 32, 99, 115, 116, 114, 105, 110, 103, 115, 0
    str_46: db 108, 111, 108, 0
    str_47: db 108, 111, 108, 0
    str_48: db 100, 108, 105, 115, 116, 0
    str_49: db 67, 114, 101, 97, 116, 101, 32, 97, 32, 100, 108, 105, 115, 116, 0
    str_50: db 65, 112, 112, 101, 110, 100, 32, 116, 111, 32, 97, 32, 100, 108, 105, 115, 116, 0
    str_51: db 121, 101, 115, 0
    str_52: db 71, 101, 116, 32, 100, 108, 105, 115, 116, 32, 101, 110, 116, 114, 121, 0
    str_53: db 121, 101, 115, 0
    str_54: db 121, 101, 115, 0
    str_55: db 71, 101, 116, 32, 116, 104, 101, 32, 108, 101, 110, 103, 116, 104, 32, 111, 102, 32, 97, 32, 100, 108, 105, 115, 116, 0
    str_56: db 121, 101, 115, 0
    str_57: db 112, 111, 112, 32, 102, 114, 111, 109, 32, 97, 32, 100, 108, 105, 115, 116, 0
    str_58: db 121, 101, 115, 0
    str_59: db 121, 101, 97, 0
    str_60: db 121, 101, 97, 0
    str_61: db 121, 101, 115, 0
    str_62: db 108, 108, 105, 115, 116, 0
    str_63: db 67, 114, 101, 97, 116, 101, 32, 97, 32, 108, 108, 105, 115, 116, 0
    str_64: db 35, 32, 83, 108, 97, 109, 32, 84, 101, 115, 116, 115, 0
section '.bss'
    args_ptr: rq 1
    ret_stack_rsp: rq 1
    ret_stack: rq 1024
    loc_stack_rsp: rq 1
    loc_stack: rq 512
    mem: rb 162