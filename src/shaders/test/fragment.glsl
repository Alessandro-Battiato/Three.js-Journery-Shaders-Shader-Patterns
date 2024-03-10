varying vec2 vUv;

void main()
{
    // gl_FragColor = vec4(vUv, 1.0, 1.0); Pattern 1
    gl_FragColor = vec4(vUv, 0.0, 1.0);
}