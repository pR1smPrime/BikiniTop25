shader_type canvas_item;

uniform float speed = 1.0;
uniform float amplitude = 10.0;

void vertex() {
    vec2 uv = UV;
    uv.x += sin(TIME * speed + uv.y * 10.0) * (amplitude / 100.0);
    VERTEX += vec2(uv.x - UV.x, 0.0) * TEXTURE_PIXEL_SIZE * VERTEX.y;
}
