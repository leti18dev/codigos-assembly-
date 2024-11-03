%include	'../util.asm'

section     .text
global      _start
_start:
    lea     rdi, [msg1]
    call    printstr
    ;le o primeiro valor e guarda no r12
    call    readint
    mov     r12, rax   ;guarda o primeiro valor no 12(free)

maior:
    call    r12
    call    readint
    mov     r13, rax
    cmp     r12, r13

    jg      n1maior     ; pula pro maior

    lea     rdi, [msg2]
    call    printstr
    mov     rdi, r13
    call    printint
    call    endl
    call    exit
n1maior:
    lea     rdi, [msg2]
    call    printstr
    mov     rdi, r12
    call    printint
    call    endl
    call    exit

section     .data
msg1:   db 'Informe dois valores: ', 10, 0
msg2:   db 'Maior: ', 0