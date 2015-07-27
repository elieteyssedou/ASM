# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eteyssed <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/21 18:16:14 by eteyssed          #+#    #+#              #
#    Updated: 2015/05/21 18:16:15 by eteyssed         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;char	*strdup(const char *s);

global	_ft_strdup

section	.text

extern	_ft_strlen, _ft_memcpy, _malloc

_ft_strdup:
	push	rdi
	call	_ft_strlen
	mov		rdx, rax
	mov		rdi, rax
	call	_malloc
	pop		rsi
	mov		rdi, rax
	call	_ft_memcpy

_ret:
	ret
