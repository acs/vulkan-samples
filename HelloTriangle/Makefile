# CFLAGS = -std=c++17 -O2 -g
# -O2 makes gdb to stop at wrong breakpoints lines
CFLAGS = -std=c++17 -O0 -g
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

HelloTriangle: main.cpp
	g++ $(CFLAGS) -o HelloTriangle main.cpp $(LDFLAGS)

.PHONY: test clean

test: HelloTriangle
	./HelloTriangle

clean:
	rm -f HelloTriangle
