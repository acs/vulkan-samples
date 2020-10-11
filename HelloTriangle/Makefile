# CFLAGS = -std=c++17 -O2 -g
# -O2 makes gdb to stop at wrong breakpoints lines
CFLAGS = -std=c++17 -O0 -g
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

HelloTriangle: main.cpp shaders/vertex.glsl shaders/fragment.glsl
	g++ $(CFLAGS) -o HelloTriangle main.cpp $(LDFLAGS)
	glslc -fshader-stage=vertex shaders/vertex.glsl -o shaders/vert.spv
	glslc -fshader-stage=frag shaders/fragment.glsl -o shaders/frag.spv

.PHONY: test clean

test: HelloTriangle
	./HelloTriangle

clean:
	rm -f HelloTriangle shaders/*.spv
