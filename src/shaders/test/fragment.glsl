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
    float strength = mod(vUv.y * 10.0, 1.0);
    strength = step(0.8, strength);

    // gl_FragColor = vec4(0.5, 0.0, 1.0, 1.0); Base Pattern
    // gl_FragColor = vec4(vUv, 1.0, 1.0); Pattern 1
    // gl_FragColor = vec4(vUv, 0.0, 1.0); Pattern 2
    // gl_FragColor = vec4(vUv.x, vUv.x, vUv.x, 1.0); Pattern 3
    // gl_FragColor = vec4(strength, strength, strength, 1.0); Pattern 4
    // gl_FragColor = vec4(strength, strength, strength, 1.0); Pattern 5
    // gl_FragColor = vec4(strength, strength, strength, 1.0); Pattern 6
    // gl_FragColor = vec4(strength, strength, strength, 1.0); Pattern 7
    // gl_FragColor = vec4(strength, strength, strength, 1.0); Pattern 8
    gl_FragColor = vec4(strength, strength, strength, 1.0);
}