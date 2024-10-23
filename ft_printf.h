/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: oalmasou <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/03 18:29:47 by oalmasou          #+#    #+#             */
/*   Updated: 2024/09/03 18:29:51 by oalmasou         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
#define FT_PRINTF_H

#include "Libft/libft.h"
#include <stdarg.h>

int ft_printf(const char *placeholders, ...);
int ft_printstr(char *str);
int ft_pointeraddress(void *ptr);
int ft_printnbr(int nbr);
int ft_unsigned(unsigned int nbr);
int ft_printhex(unsigned int nbr, char format);

#endif
