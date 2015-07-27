# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eteyssed <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/21 18:15:22 by eteyssed          #+#    #+#              #
#    Updated: 2015/05/21 18:15:32 by eteyssed         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%define M_SCALL(nb)			0x2000000 | nb
%define WRITE				4

global	_ft_puts

section	.data

null:
	.string	db	"(null)"

section	.text

extern	_ft_strlen

_ft_puts:
	cmp		rdi, 0x0
	je		_null

	push	rdi
	call	_ft_strlen

	mov		rdx, rax
	mov		rdi, 1
	pop		rsi
	mov		rax, M_SCALL(WRITE)

	syscall

	jmp		_ret

_null:
	lea		rsi, [rel null.string]
	mov		rdi, 1
	mov		rdx, 6
	mov		rax, M_SCALL(WRITE)

	syscall

_ret:
	push	10
	mov		rsi, rsp
	mov		rdi, 1
	mov		rdx, 1
	mov		rax, M_SCALL(WRITE)

	syscall

	pop rax
	ret