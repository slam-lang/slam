BITS 64
segment .text
extern malloc
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
addr_0:
    ; print
addr_1:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2:
    mov rax, addr_3
    push rax
addr_3:
    pop rax
    pop rbx
    push rax
    push rbx
addr_4:
    pop rax
    push rax
    push rax
addr_5:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_6:
    pop rax
    call print
addr_7:
    mov qword rax, 1
    push rax
addr_8:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_9:
    pop rax
    pop rbx
    push rax
    push rbx
addr_10:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_11:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_12:
    pop rbx
    pop rax
    test rbx, rbx
    push rax
    jz addr_13
    jmp rax
addr_13:
    pop rax
addr_14:
    mov qword rax, 10
    push rax
addr_15:
    pop rax
    call print
addr_16:
    pop rax
addr_17:
    pop rax
addr_18:
    pop rax
addr_19:
    ret
addr_20:
    ; &
addr_21:
    pop rax
    pop rbx
    push rax
    push rbx
addr_22:
    pop rax
addr_23:
    ret
addr_24:
    ; main
addr_25:
    mov qword rax, 255
    push rax
addr_26:
    mov rax, addr_27
    push rax
addr_27:
    pop rax
    pop rbx
    push rax
    push rbx
addr_28:
    mov qword rax, 1
    push rax
addr_29:
    pop rbx
    pop rax
    sub rax, rbx
    push rax
addr_30:
    pop rax
    push rax
    push rax
addr_31:
    pop rax
    call print
addr_32:
    pop rax
    pop rbx
    push rax
    push rbx
addr_33:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_34:
    pop rbx
    pop rax
    test rbx, rbx
    push rax
    jz addr_35
    jmp rax
addr_35:
    pop rax
addr_36:
    pop rax
addr_37:
    ret
addr_38:
    ret
global _start
_start:
    call addr_24
    mov rax, 60
    mov rdi, 0x0
    syscall
    ret
segment .data
segment .bss
args_ptr: resq 1
ret_stack_rsp: resq 1
ret_stack: resb 65536
ret_snack_end:
