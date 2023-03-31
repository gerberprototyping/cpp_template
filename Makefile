CC = g++
CFLAGS = -g -Wall
#LDFLAGS =
SRC = $(wildcard *.cpp)
OBJ = $(SRC:.cpp=.o)
TARGET = myProgram

build: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

%.o: %.cpp
	$(CC) $(CFLAGS) -c -o $@ $<

.PHONY: run
run: build
	./$(TARGET)

.PHONY: clean
clean:
	rm -f $(OBJ) $(TARGET) *~
