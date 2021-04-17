//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
const int Quality = 64;
uniform float amount;

void main()
{
    vec4 Color;
    float v;
    for(float i = 0.0; i < 1.0; i += 1.0 / float(Quality))
    {
            v = (1.0 - amount) + i * amount;
            Color += texture2D(gm_BaseTexture, v_vTexcoord * v + 0.5 - 0.5 * v);
    }
    Color /= float(Quality);
    gl_FragColor = Color * v_vColour;
}