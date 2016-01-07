.global     main_tok
.global     main_tok_len
.global     int_tok
.global     int_tok_len

.section .data

/* Here we define all the various token constants we expect to run into while
 * parsing. */
int_tok:
    .ascii  "int"
    .set    int_tok_len, .-int_tok

char_tok:
    .ascii  "char"
    .set    char_tok_len, .-char_tok

void_tok:
    .ascii  "void"
    .set    void_tok_len, .-void_tok

main_tok:
    .ascii  "main"
    .set    main_tok_len, .-main_tok

return_tok:
    .ascii  "return"
    .set    return_tok_len, .-return_tok

lparen_tok:
    .ascii  "("
    .set    lparen_tok_len, .-lparen_tok

rparen_tok:
    .ascii  ")"
    .set    rparen_tok_len, .-rparen_tok

lbrace_tok:
    .ascii  "{"
    .set    lbrace_tok_len, .-lbrace_tok

rbrace_tok:
    .ascii  "}"
    .set    rbrace_tok_len, .-rbrace_tok

lbracket_tok:
    .ascii  "["
    .set    lbracket_tok_len, .-lbracket_tok

rbracket_tok:
    .ascii  "]"
    .set    rbracket_tok_len, .-rbracket_tok

asterix_tok
    .ascii  "*"
    .set    asterix_tok_len, .-asterix_tok

equals_tok
    .ascii  "="
    .set    equals_tok_len, .-equals_tok

comma_tok
    .ascii  ","
    .set    comma_tok_len, .-comma_tok

semicolon_tok
    .ascii  ";"
    .set    semicolon_tok_len, .-semicolon_tok
