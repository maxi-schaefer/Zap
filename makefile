CC = gcc
CFLAGS = -Wall -Wextra -pthread -Wno-unused-parameter
LDFLAGS =

# Folders
SRCDIRS = .
INCLUDES = $(addprefix -I, $(SRCDIRS))

SRCS = $(wildcard zap.c)

OBJS = $(SRCS:.c=.o)

TARGET = zap

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS) $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: all clean
