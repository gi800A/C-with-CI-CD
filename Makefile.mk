CC = gcc

SRC := $(wildcard SRC/*.c)
OBJ := $(patsubst SRC/%.c, build/%.o, $(SRC))
BIN := bin/my_program

# Default target
all: $(BIN)

# Compile source files into object files
build/%.o: SRC/%.c
	@mkdir -p build
	@echo "Compilazione: $< → $@"
	$(CC) -c $< -o $@

# Link object files into final binary
$(BIN): $(OBJ)
	@mkdir -p bin
	$(CC) $(OBJ) -o $(BIN)

# Clean build files
clean:
	rm -rf build/*.o bin/my_program

.PHONY: all clean
