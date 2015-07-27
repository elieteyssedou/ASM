# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eteyssed <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/21 18:24:00 by eteyssed          #+#    #+#              #
#    Updated: 2015/05/21 18:24:01 by eteyssed         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global	_ft_memset

section	.text

_ft_memset:
	push	rdi
	mov		rax, rsi

_set:
	cmp		rdx, 0
	je		_ret
	cld
	stosb
	dec		rdx
	jmp		_set

_ret:
	pop		rax
	ret
