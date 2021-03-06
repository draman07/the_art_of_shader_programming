#version 120

uniform vec2 iResolution;
uniform float iGlobalTime;
uniform float iAmplitude;
uniform sampler2D iChannel0;	//sound
uniform sampler2D iChannel1;	//fft

void main() {
    vec4 v= vec4(gl_Vertex);
    vec2 a= v.xy/iResolution;
    a= step(0.1, abs(a))*0.5;
    v.xy *= a.xy;
    gl_Position= gl_ModelViewProjectionMatrix*v;
}
