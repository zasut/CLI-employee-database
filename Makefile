TARGET = bin/dbview
SRC = $(wildcard src/*.c)
OBJ = $(patsubst src/%.c, obj/%.o, $(SRC))

run: clean default
# sample db file named 'mynewdb.db'
		./$(TARGET) -f ./mynewdb.db -n
# Example of adding an employee to the db	
# ./bin/dbview -f mynewdb.db -a "Test,123 road,120"
# Lists all employees in the db
# ./bin/dbview -f mynewdb.db -l
# Deletion example
# ./bin/dbview -f mynewdb.db -d "Test"
# Updating employee info example
# /bin/dbview -f mynewdb.db -u "Test" -a "Rest, 210 road, 20"

default: $(TARGET)

clean:
		rm -f obj/*.o
		rm -f bin/*
		rm -f *.db

$(TARGET): $(OBJ)
		gcc -o $@ $?

obj/%.o : src/%.c
		gcc -c $< -o $@ -Iinclude
