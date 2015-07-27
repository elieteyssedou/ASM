# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eteyssed <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/31 16:26:32 by eteyssed          #+#    #+#              #
#    Updated: 2015/03/31 16:26:32 by eteyssed         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global	_ft_isprint

section .text

_ft_isprint:
	cmp		rdi, 32
	jl		_retz
	cmp		rdi, 126
	jg 		_retz
	mov		rax, 1
	ret

_retz:
	mov		rax, 0
	ret
