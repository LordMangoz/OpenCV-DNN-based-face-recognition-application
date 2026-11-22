CXX = g++
CXXFLAGS = -std=c++17 -Wall $(shell pkg-config --cflags opencv4)
LDLIBS = $(shell pkg-config --libs opencv4)

TARGET = face_recognition
SOURCES = face_detect.cpp main.cpp

$(TARGET): $(SOURCES)
	$(CXX) $(CXXFLAGS) $(SOURCES) -o $(TARGET) $(LDLIBS)

clean:
	rm -f $(TARGET)

.PHONY: clean