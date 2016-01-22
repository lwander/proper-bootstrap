/* 
 * Copyright 2016 Lars Wander (lars.wander@gmail.com)
 *
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 * 
 *   http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

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
    mov     $main_tok, %rdi
    mov     $int_tok, %rsi
    mov     $main_tok_len, %rdx
    call str_eq

    mov     %rax, %rdi
    mov     $60, %rax
    syscall
