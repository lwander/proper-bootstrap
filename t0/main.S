.global _start
.text

/* eq(char *a, char *b, int count)
 * returns 0 when a[:count] == b[:count], otherwise 1 */
str_eq:
    mov     $0, %rax 

str_eq_loop:
    cmp     $0, %rdx
    jle     str_eq_ret

    mov     (%rdi, %rdx, 1), %r8b
    mov     (%rsi, %rdx, 1), %r9b

    cmp     %r8b, %r9b
    jne     str_eq_neq

    sub     $1, %rdx
    jmp     str_eq_loop

str_eq_neq:
    mov     $1, %rax

str_eq_ret:
    ret

_start:
    mov     $less_tok, %rdi
    mov     $less_tok, %rsi
    mov     $main_tok_len, %rdx
    call str_eq

    mov     %rax, %rdi
    mov     $60, %rax
    syscall

main_tok:
    .ascii  "main\n"
    .set    main_tok_len, .-main_tok    

less_tok:
    .ascii  "less\n"
    .set    less_tok_len, .-less_tok    
