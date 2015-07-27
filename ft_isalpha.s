# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalpha.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eteyssed <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/31 15:37:58 by eteyssed          #+#    #+#              #
#    Updated: 2015/03/31 15:37:58 by eteyssed         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global	_ft_isalpha

section .text

_ft_isalpha:
	cmp		rdi, 'A'
	jl		_retz
	cmp		rdi, 'z'
	jg 		_retz
	cmp		rdi, 'Z'
	jle 	_retp
	cmp		rdi, 'a'
	jge		_retp

_retz:
	mov		rax, 0
	ret

_retp:
	mov		rax, 1
	ret