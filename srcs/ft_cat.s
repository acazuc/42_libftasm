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

extern _malloc
extern _free

%define BUFF_SIZE 10

section .text

_ft_cat:
	mov r10, rdi
	mov rdi, BUFF_SIZE
	push r10
	call _malloc
	pop r10
	cmp rax, 0
	je nullcase
	mov r11, rax

loop:
	mov rax, 0x2000003
	mov rdi, r10
	mov rsi, r11
	mov rdx, BUFF_SIZE
	push r10
	push r11
	syscall
	pop r11
	pop r10
	cmp rax, 0
	jbe nullcase
	mov r9, rax
	mov rax, 0x2000004
	mov rdi, 1
	mov rsi, r11
	mov rdx, r9
	push r9
	push r10
	push r11
	syscall
	pop r11
	pop r10
	pop r9
	cmp r9, BUFF_SIZE
	je loop

ended:
	mov rdi, r11
	call _free

nullcase:
	mov rax, 0
	ret
