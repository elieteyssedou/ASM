# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eteyssed <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/31 16:27:56 by eteyssed          #+#    #+#              #
#    Updated: 2015/03/31 16:27:58 by eteyssed         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global	_ft_isalnum

section .text

extern	_ft_isalpha, _ft_isdigit

_ft_isalnum:
	call	_ft_isalpha
	cmp		rax, 0
	jne		_retp
	call	_ft_isdigit
	cmp		rax, 0
	jne 	_retp
	mov		rax, 0
	ret

_retp:
	mov		rax, 1
	ret
