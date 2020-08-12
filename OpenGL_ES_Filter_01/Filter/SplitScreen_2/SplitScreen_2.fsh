precision highp float;

varying vec2 textureCoordsVarying;
uniform sampler2D texture;

void main() {
    vec2 uv = textureCoordsVarying.xy;
    float y;
    if (uv.y >= 0.0 && uv.y <= 0.5) {
        y = uv.y + 0.25;
    }
    else {
        y = uv.y - 0.25;
    }
    gl_FragColor = texture2D(texture, vec2(uv.x, y));
}
