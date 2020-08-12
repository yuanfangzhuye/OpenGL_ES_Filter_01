precision highp float;

varying vec2 textureCoordsVarying;
uniform sampler2D texture;

void main() {
    vec2 uv = textureCoordsVarying.xy;
    if (uv.y < 1.0/3.0) {
        uv.y = uv.y + 1.0/3.0;
    }
    else if (uv.y > 2.0/3.0) {
        uv.y = uv.y - 1.0/3.0;
    }
    
    gl_FragColor = texture2D(texture, uv);
}
