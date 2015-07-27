# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eteyssed <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/21 18:23:47 by eteyssed          #+#    #+#              #
#    Updated: 2015/05/21 18:23:47 by eteyssed         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global	_ft_memcpy

section	.text

_ft_memcpy:
	push	rdi

_cpy:
	cmp		rdx, 0
	je		_ret
	movsb
	dec		rdx
	jmp		_cpy

_ret:
	pop		rax
	ret
