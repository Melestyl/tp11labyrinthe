CC=gcc
FLAGS=-Wall -Wextra

all: main

main: maze.c stack.c stack.h
	$(CC) maze.c stack.c -o main $(FLAGS)

clean:
	$(RM) main