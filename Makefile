CC=clang
CFLAGS=-std=c11 -Wall -Wextra -Werror -Wpedantic
EXEC_NAME=endgame

all: uninstall MINILIBMX

MINILIBMX: src/*.c
	$(CC) $(CFLAGS) -o $(EXEC_NAME) src/*.c

uninstall:
	rm -rf $(EXEC_NAME)

clean:
	rm -rf src inc

reinstall:
	make uninstall
	make
