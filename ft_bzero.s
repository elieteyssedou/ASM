# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eteyssed <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/31 17:43:21 by eteyssed          #+#    #+#              #
#    Updated: 2015/03/31 17:43:22 by eteyssed         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global	_ft_bzero

section	.text

_ft_bzero:
	push	rdi
	mov		rcx, rsi
	mov		rax, 0x0

	cld
	rep		stosb

	pop		rax
	ret