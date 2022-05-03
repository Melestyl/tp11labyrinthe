CC=gcc
FLAGS=-Wall -Wextra
SRC := $(wildcard *.c)
OBJS := $(SRC:.c=.o)
EXE=main

all: main

main: $(OBJS)
	$(CC) $(OBJS) -o $(EXE)

%.o: %.c
	$(CC) $^ -c -o $@

clean:
	$(RM) $(OBJS) $(EXE)