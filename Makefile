CXX=g++
SOURCES=main.cpp src/concretepieces.cpp src/piece.cpp src/global.cpp src/move.cpp src/game.cpp src/board.cpp src/tree.cpp
INCLUDES=src/concretepieces.h src/piece.h src/global.h src/move.h src/game.h src/board.h src/tree.h
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=main
CFLAGS=-c -Wall -std=c++11

all:$(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS) $(INCLUDES)
	$(CXX) -o $@ $(OBJECTS)


%.o: %.cpp $(INCLUDES)
	$(CXX) $(CFLAGS) $< -o $@


run: $(EXECUTABLE)
	./$(EXECUTABLE)


clean:
	rm -rf *.dSYM $(EXECUTABLE) $(OBJECTS)
