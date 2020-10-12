#version 450
#extension GL_ARB_separate_shader_objects : enable

// inPosition and inColor are vertex attributes filled in the vertex buffer

// 2D geometry
layout(location = 0) in vec2 inPosition;
// No opacity in RGB colors
layout(location = 1) in vec3 inColor;

layout(location = 0) out vec3 fragColor;

void main() {
    // z position is 0 in 2D
    gl_Position = vec4(inPosition, 0.0, 1.0);
    // Propagate input vertex color
    fragColor = inColor;
}