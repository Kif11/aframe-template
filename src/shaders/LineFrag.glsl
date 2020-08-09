@import ./FogFragPars;
varying vec3 vUv;
varying vec3 vPos;

void main() {
  // float col = mod(ceil(20.0*vUv.y),2.0);
  float col = mod(ceil(20.0*vUv.y),20.0)/20.0;
  gl_FragColor= 1.3 * vec4(col, vUv.z, 0.4, 1.0);
  @import ./FogFrag;
}
