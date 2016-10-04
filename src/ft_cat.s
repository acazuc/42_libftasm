; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: acazuc <acazuc@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/20 10:17:58 by acazuc            #+#    #+#              ;
;    Updated: 2016/03/20 10:17:58 by acazuc           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_cat

%define BUFF_SIZE 50

section .bss

BUFF: resb BUFF_SIZE

section .text

_ft_cat:
	mov r10, rdi

loop:
	mov rax, 0x2000003
	mov rdi, r10
	lea rsi, [rel BUFF]
	mov rdx, BUFF_SIZE
	push r10
	syscall
	pop r10
	jc ended
	cmp rax, 0
	jbe ended
	mov rdx, rax
	mov rax, 0x2000004
	mov rdi, 1
	lea rsi, [rel BUFF]
	push r10
	syscall
	pop r10
	jmp loop

ended:
	mov rax, 0
	ret
