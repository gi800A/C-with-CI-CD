CC = gcc

SRC=$(wildcard SRC/*.c)
OBJ = $(SRC:src/%.c=build/%.o)
BIN = build/

echo "Compiling"

build/%.o: SRC/%.c
	$(CC) -c $< -o $@

$(BIN): $(OBJ)
	$(CC) $(OBJ) -o $(BIN)

clean:
	rm -rf build/*.o $(BIN)


.PHONY: clean