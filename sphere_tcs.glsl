
#version 450 core


layout(vertices = 3) out;


in vec4 v_color[];
in mat4 v_model[];

out vec4 tc_color[];
out mat4 tc_model[];


void main() {
    gl_TessLevelInner[0] = 8;
    gl_TessLevelOuter[gl_InvocationID] = 7;

    gl_out[gl_InvocationID].gl_Position = gl_in[gl_InvocationID].gl_Position;
    tc_color[gl_InvocationID] = v_color[gl_InvocationID];
    tc_model[gl_InvocationID] = v_model[gl_InvocationID];
}
