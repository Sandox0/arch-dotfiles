#version 320 es
precision highp float;

in vec2 v_texcoord;
out vec4 fragColor;

uniform sampler2D tex;

const float saturation = 2.0; // Súbelo a 1.6 si quieres aún más color

void main() {
    vec4 color = texture(tex, v_texcoord);
    float luma = dot(color.rgb, vec3(0.2126, 0.7152, 0.0722));
    vec3 saturatedColor = mix(vec3(luma), color.rgb, saturation);
    fragColor = vec4(saturatedColor, color.a);
}
