shader_type canvas_item;

uniform sampler2D noise_texture;
uniform float speed = 1.0;
uniform float strength = 0.02;

void fragment() {
    vec2 noise_uv = UV + TIME * speed * 0.1;
    vec2 noise = texture(noise_texture, noise_uv).rg * 2.0 - 1.0;

    vec2 uv = UV + noise * strength;
    COLOR = texture(TEXTURE, uv);
}
