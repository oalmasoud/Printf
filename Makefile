NAME = libftprintf.a

CC = cc

FLAGS = -Wall -Wextra -Werror

SUB_DIR = Libft

SUB_FLAG = -I $(SUB_DIR)

COMPILE_FLAGS = $(CC) $(FLAGS) $(SUB_FLAG)


SUB_CLEAN = cd $(SUB_DIR) && make clean

SUB_FCLEAN = cd $(SUB_DIR) && make fclean

SRCS = ft_printhex.c \
       ft_printnbr.c \
       ft_printstr.c \
       ft_unsigned.c \
       ft_pointeraddress.c \
       ft_printf.c 

OBJS = $(SRCS:.c=.o)

AR = ar cr

all: libft $(NAME)
	

$(NAME): $(OBJS) 	 
	@cp $(SUB_DIR)/libft.a .
	@mv libft.a $(NAME)
	$(AR) $(NAME) $(OBJS)

libft:
	@make -C $(SUB_DIR)

%.o: %.c
	$(COMPILE_FLAGS) -c $< -o $@

fclean: clean
	rm -f $(NAME) 
	$(SUB_FCLEAN)

clean:
	rm -f $(OBJS) 
	$(SUB_CLEAN)

re: fclean all

.PHONY: clean fclean all re

