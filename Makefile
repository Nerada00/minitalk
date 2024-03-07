SRCS_CLIENT = src/client.c printf/ft_printf.c printf/ft_printf_fonction.c
SRCS_SERVER = src/server.c printf/ft_printf.c printf/ft_printf_fonction.c

OBJS_CLIENT = $(SRCS_CLIENT:.c=.o)
OBJS_SERVER = $(SRCS_SERVER:.c=.o)

NAME_CLIENT = client
NAME_SERVER = server
CC = cc
CFLAGS = -Wall -Werror -Wextra -g
RM = rm -f

all: $(NAME_CLIENT) $(NAME_SERVER)

##############   barre de chargement    ##############

	@echo "\033[35m [EXECUTION] \033[0m: Compiling MINITALK... "
	@total_iterations=60; \
	i=0; \
	while [ $$i -lt $$total_iterations ]; do \
		sleep 0.01; \
		printf "\033[34m▇\033[0m"; \
		i=$$((i + 1)); \
	done

#header nom du programme

	@echo
	@echo
	@echo "\033[35;5m =========== Compilation completed successfully.=========== \033[0m"
	@echo 
	@echo "\033[32m ███╗   ███╗██╗███╗   ██╗██╗████████╗ █████╗ ██╗     ██╗  ██╗	\033[0m"
	@echo "\033[36m ████╗ ████║██║████╗  ██║██║╚══██╔══╝██╔══██╗██║     ██║ ██╔╝	\033[0m"
	@echo "\033[36m ██╔████╔██║██║██╔██╗ ██║██║   ██║   ███████║██║     █████╔╝ 	\033[0m"
	@echo "\033[36m ██║╚██╔╝██║██║██║╚██╗██║██║   ██║   ██╔══██║██║     ██╔═██╗ 	\033[0m"
	@echo "\033[36m ██║ ╚═╝ ██║██║██║ ╚████║██║   ██║   ██║  ██║███████╗██║  ██╗	\033[0m"
	@echo "\033[34m ╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝	\033[0m"
	@echo
	

$(NAME_CLIENT): $(OBJS_CLIENT)
	@$(CC) $(OBJS_CLIENT) $(CFLAGS) -o $(NAME_CLIENT)

$(NAME_SERVER): $(OBJS_SERVER)
	@$(CC) $(OBJS_SERVER) $(CFLAGS) -o $(NAME_SERVER)

%.o: %.c
	@$(CC) $(CFLAGS) -c $< -o $@

clean:

	@$(RM) $(OBJS_CLIENT) $(OBJS_SERVER)
#header du clean
	@echo
	@echo "\033[35;5m 	=========== [OBJ was removed.] =========== \033[0m"
	@echo
	@echo "\033[35m ██████╗ ███████╗███╗   ███╗ ██████╗ ██╗   ██╗███████╗██████╗ \033[0m"
	@echo "\033[35m ██╔══██╗██╔════╝████╗ ████║██╔═══██╗██║   ██║██╔════╝██╔══██╗ \033[0m"
	@echo "\033[35m ██████╔╝█████╗  ██╔████╔██║██║   ██║██║   ██║█████╗  ██║  ██║ \033[0m"
	@echo "\033[35m ██╔══██╗██╔══╝  ██║╚██╔╝██║██║   ██║╚██╗ ██╔╝██╔══╝  ██║  ██║ \033[0m"
	@echo "\033[35m ██║  ██║███████╗██║ ╚═╝ ██║╚██████╔╝ ╚████╔╝ ███████╗██████╔╝ \033[0m"
	@echo "\033[35m ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝ ╚═════╝   ╚═══╝  ╚══════╝╚═════╝  \033[0m"
	@echo


fclean:
	
	@$(RM) $(OBJS_CLIENT) $(OBJS_SERVER)
	@$(RM) $(NAME_CLIENT) $(NAME_SERVER)

#header du fclean
	@echo
	@echo "\033[31;5m 	=========== [All was removed.] =========== \033[0m"
	@echo
	@echo "\033[31m ██████╗ ███████╗███╗   ███╗ ██████╗ ██╗   ██╗███████╗██████╗ \033[0m"
	@echo "\033[31m ██╔══██╗██╔════╝████╗ ████║██╔═══██╗██║   ██║██╔════╝██╔══██╗ \033[0m"
	@echo "\033[31m ██████╔╝█████╗  ██╔████╔██║██║   ██║██║   ██║█████╗  ██║  ██║ \033[0m"
	@echo "\033[31m ██╔══██╗██╔══╝  ██║╚██╔╝██║██║   ██║╚██╗ ██╔╝██╔══╝  ██║  ██║ \033[0m"
	@echo "\033[31m ██║  ██║███████╗██║ ╚═╝ ██║╚██████╔╝ ╚████╔╝ ███████╗██████╔╝ \033[0m"
	@echo "\033[31m ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝ ╚═════╝   ╚═══╝  ╚══════╝╚═════╝  \033[0m"
	@echo

re: fclean all

.PHONY: clean fclean all re