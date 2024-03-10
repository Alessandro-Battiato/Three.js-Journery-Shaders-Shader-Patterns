varying vec2 vUv;

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
    float barX = step(0.4, mod(vUv.x * 10.0, 1.0));
    barX *= step(0.8, mod(vUv.y * 10.0, 1.0));

    float barY = step(0.8, mod(vUv.x * 10.0, 1.0));
    barY *= step(0.4, mod(vUv.y * 10.0, 1.0));

    float strength = barX + barY;

    // gl_FragColor = vec4(0.5, 0.0, 1.0, 1.0); Base Pattern
    // gl_FragColor = vec4(vUv, 1.0, 1.0); Pattern 1
    // gl_FragColor = vec4(vUv, 0.0, 1.0); Pattern 2
    // gl_FragColor = vec4(vUv.x, vUv.x, vUv.x, 1.0); Pattern 3
    // gl_FragColor = vec4(strength, strength, strength, 1.0); Pattern 4
    // gl_FragColor = vec4(strength, strength, strength, 1.0); Pattern 5
    // gl_FragColor = vec4(strength, strength, strength, 1.0); Pattern 6
    // gl_FragColor = vec4(strength, strength, strength, 1.0); Pattern 7
    // gl_FragColor = vec4(strength, strength, strength, 1.0); Pattern 8
    // gl_FragColor = vec4(strength, strength, strength, 1.0); Pattern 9
    // gl_FragColor = vec4(strength, strength, strength, 1.0); Pattern 10
    // gl_FragColor = vec4(strength, strength, strength, 1.0); Pattern 11
    // gl_FragColor = vec4(strength, strength, strength, 1.0);
    gl_FragColor = vec4(strength, strength, strength, 1.0);
}