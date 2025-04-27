# Compiler
CXX = g++

# Compiler flags
CXXFLAGS = -Wall

# Target executable name
TARGET = main

# Source files
SOURCES = main.cpp

# Object files
OBJECTS = $(SOURCES:.cpp=.o)


all: $(TARGET) # Default target

# Build the target executable
$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJECTS)

# Run the target executable
run: $(TARGET)
	./$(TARGET)

# Clean up the build
clean:
	rm -f $(TARGET) $(OBJECTS)