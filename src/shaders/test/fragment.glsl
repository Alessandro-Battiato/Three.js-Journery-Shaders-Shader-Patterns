varying vec2 vUv;

void main()
{
    // Grayscale value
    float strength = vUv.y;

    // gl_FragColor = vec4(0.5, 0.0, 1.0, 1.0); Base Pattern
    // gl_FragColor = vec4(vUv, 1.0, 1.0); Pattern 1
    // gl_FragColor = vec4(vUv, 0.0, 1.0); Pattern 2
    // gl_FragColor = vec4(vUv.x, vUv.x, vUv.x, 1.0); Pattern 3
    gl_FragColor = vec4(strength, strength, strength, 1.0);
}