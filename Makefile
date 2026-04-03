CXX = g++
CXXFLAGS = -Iinclude
all: main.o ui.o sensor.o 
	$(CXX) $(CXXFLAGS)	main.o ui.o sensor.o -o output 
main.o :src/main.cpp
	$(CXX) $(CXXFLAGS)	-c src/main.cpp
ui.o : src/ui.cpp	
	$(CXX) $(CXXFLAGS)	-c src/ui.cpp
sensor.o : src/sensor.cpp	
	$(CXX)	$(CXXFLAGS)  -c src/sensor.cpp
.Phony : clean
clean:
   rm -rf main.o ui.o sensor.o 