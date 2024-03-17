#define PI 3.14159;

varying vec2 vUv;

float random(vec2 st) {
    return fract(sin(dot(st.xy, vec2(12.9898, 78.233))) * 43758.5453123);
}

vec2 rotate(vec2 uv, float rotation, vec2 mid)
{
    return vec2(
      cos(rotation) * (uv.x - mid.x) + sin(rotation) * (uv.y - mid.y) + mid.x,
      cos(rotation) * (uv.y - mid.y) - sin(rotation) * (uv.x - mid.x) + mid.y
    );
}

void main()
{
    // Grayscale value
    // float strength = vUv.x; Pattern 3
    // float strength = vUv.y; Pattern 4
    // float strength = vUv.y; Pattern 5
    // float strength = vUv.y * 10.0; Pattern 6
    // float strength = mod(vUv.y * 10.0, 1.0); Pattern 7
    
    // Pattern 8
    // float strength = mod(vUv.y * 10.0, 1.0);
    // strength = step(0.5, strength);
    
    // Pattern 9
    // float strength = mod(vUv.y * 10.0, 1.0);
    // strength = step(0.8, strength);
    
    // Pattern 10
    // float strength = mod(vUv.x * 10.0, 1.0);
    // strength = step(0.8, strength);

    // Pattern 11
    // float strength = step(0.8, mod(vUv.y * 10.0, 1.0));
    // strength += step(0.8, mod(vUv.x * 10.0, 1.0));

    // Pattern 12
    // float strength = step(0.8, mod(vUv.y * 10.0, 1.0));
    // strength *= step(0.8, mod(vUv.x * 10.0, 1.0));

    // Pattern 13
    // float barX = step(0.4, mod(vUv.x * 10.0, 1.0));
    // barX *= step(0.8, mod(vUv.y * 10.0, 1.0));

    // float barY = step(0.8, mod(vUv.x * 10.0, 1.0));
    // barY *= step(0.4, mod(vUv.y * 10.0, 1.0));

    // float strength = barX + barY;

    // Pattern 14
    // float barX = step(0.4, mod(vUv.x * 10.0 - 0.2, 1.0));
    // barX *= step(0.8, mod(vUv.y * 10.0, 1.0));

    // float barY = step(0.8, mod(vUv.x * 10.0, 1.0));
    // barY *= step(0.4, mod(vUv.y * 10.0 - 0.2, 1.0));

    // float strength = barX + barY;

    // Pattern 15
    // float strength = abs(vUv.x - 0.5);

    // Pattern 16
    // float strength = min(abs(vUv.x - 0.5), abs(vUv.y - 0.5));

    // Pattern 17
    // float strength = step(0.2, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));

    // Pattern 18
    // float strength = step(0.4, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));

    // Pattern 19
    // float strength = floor(vUv.x * 10.0) / 10.0;

    // Pattern 20
    // float strength = floor(vUv.x * 10.0) / 10.0;
    // strength *= floor(vUv.y * 10.0) / 10.0;

    // Pattern 21
    // float strength = random(vUv);
    
    // Pattern 22
    /* vec2 gridUv = vec2(
        floor(vUv.x * 10.0) / 10.0,
        floor(vUv.y * 10.0) / 10.0
    );
    float strength = random(gridUv); */

    // Pattern 23
    /* vec2 gridUv = vec2(
        floor(vUv.x * 10.0) / 10.0,
        floor((vUv.y + vUv.x * 0.5) * 10.0) / 10.0
    );
    float strength = random(gridUv); */

    // Pattern 24
    // float strength = length(vUv - 0.5);

    // Pattern 25
    // float strength = 0.01 / length(vUv - 0.5);

    // Pattern 26
    /* vec2 lightUv = vec2(
        vUv.x * 0.2 + 0.4,
        vUv.y
    );
    float strength = 0.01 / length(lightUv - 0.5); */

    // Pattern 27
    // float strength = 0.15 / (distance(vec2(vUv.x, (vUv.y - 0.5) * 5.0 + 0.5), vec2(0.5)));
    // strength *= 0.15 / (distance(vec2(vUv.y, (vUv.x - 0.5) * 5.0 + 0.5), vec2(0.5)));

    // Pattern 28
    /* vec2 rotatedUv = rotate(vUv, PI * 0.25, vec2(0.5));

    float strength = 0.15 / (distance(vec2(rotatedUv.x, (rotatedUv.y - 0.5) * 5.0 + 0.5), vec2(0.5)));
    strength *= 0.15 / (distance(vec2(rotatedUv.y, (rotatedUv.x - 0.5) * 5.0 + 0.5), vec2(0.5))); */

    // gl_FragColor = vec4(0.5, 0.0, 1.0, 1.0); Base Pattern
    // gl_FragColor = vec4(vUv, 1.0, 1.0); Pattern 1
    // gl_FragColor = vec4(vUv, 0.0, 1.0); Pattern 2
    // gl_FragColor = vec4(vUv.x, vUv.x, vUv.x, 1.0); Pattern 3
    // gl_FragColor = vec4(strength, strength, strength, 1.0); Pattern 4 - 16
    gl_FragColor = vec4(strength, strength, strength, 1.0);
}