#version 150

in vec4 vertexColor;

uniform vec4 ColorModulator;

out vec4 fragColor;

void main() {
    vec4 color = vertexColor;
    if (color.a == 0.0) {
        discard;
    }

    if (color.r == 0.0 && color.g == 0.0 && color.b == 0.0) {
        if (color.a == 0.40){
            discard;
        }
        else if (color.a > 0.2980 && color.a < 0.2981){
            discard;
        }
    }

    fragColor = color * ColorModulator;
}
