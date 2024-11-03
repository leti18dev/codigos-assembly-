;; professor versao
%include	'../util.asm'

section     .text
global      _start
;def maior(rdi, rsi ):
;   if rdi>rsi:
;   return rdi
;   else:
;   return rsi

maior:
    cmp     rdi,rsi
    jg      amaior
    mov     rax, rsi
    ret

amaior:
    mov     rax,rdi
    ret     
    
_start:
    lea     rdi, [msg1]
    call    printstr
    ;le o primeiro valor e guarda no r12
    call    readint
    mov     r12, rax   ;guarda o primeiro valor no 12(free)

    call    readint
    mov     r13, rax

    lea     rdi, [msg2]
    call    printstr

    ;move os valores do rdi e rsi para o r12 e r13, depois chama a funcao 
    mov     rdi, r12
    mov     rsi, r13
    call    maior

    mov     rdi, rax 
    call    printint 
    
    call    endl 
    call    exit0

section     .data
msg1:   db 'Informe dois valores: ', 10, 0
msg2:   db 'Maior: ', 0 