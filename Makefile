CXX = g++
CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

SRC_DIR = src
SRC_FILES := $(wildcard $(SRC_DIR)/*.cpp)
HEADERS := $(wildcard $(SRC_DIR)/*.hpp)
BIN_DIR = bin
TARGET = $(BIN_DIR)/engine

.PHONY: all test clean

all: $(TARGET)

$(TARGET): $(SRC_FILES) | $(BIN_DIR)
	$(CXX) $(CFLAGS) -o $@ $(SRC_FILES) $(LDFLAGS)

test: all
	./$(TARGET)

clean:
	rm -rf $(BIN_DIR)

$(BIN_DIR):
	mkdir -p $(BIN_DIR)
