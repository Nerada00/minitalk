#ifndef MINITALK_H
# define MINITALK_H

#include <signal.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>

int	ft_printf(const char *s, ...);
int	ft_putnbr(int nb);
int	ft_count(int nb);
size_t	ft_strlen2(char *str);
int	ft_putstr(char *str);
int	ft_putchar(int c);

#endif