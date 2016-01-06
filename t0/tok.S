.global     main_tok
.global     main_tok_len
.global     int_tok
.global     int_tok_len

.section .data

main_tok:
    .ascii  "main\n"
    .set    main_tok_len, .-main_tok    

int_tok:
    .ascii  "int\n"
    .set    int_tok_len, .-int_tok    
