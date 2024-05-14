CC=gcc
CFLAGS=-Wall -Werror -std=c99
TARGET=a01
OBJ=$(TARGET).o

.PHONY: run clean

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ)

$(OBJ): $(TARGET).c
	$(CC) $(CFLAGS) -c $(TARGET).c

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET) $(OBJ)
