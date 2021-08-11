.PHONY: all run clean

CC = gcc
CFLAGS = -g -Wall -Wextra -std=c99
BINS = game game2

all: $(BINS)

game2: *.o
	$(CC) -o $@ $(CFLAGS) $^

game: *.o
	$(CC) -o $@ $(CFLAGS) $^

%.o: %.c
	$(CC) -c $^ $(CFLAGS)

run:
	@./game
	@./game2

clean:
	rm -f $(BINS) *.o
