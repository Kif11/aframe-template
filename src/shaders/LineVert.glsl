@import ./PerlinNoise;
@import ./FogVertPars;
uniform sampler2D positionTex;
varying vec3 vUv;
void main() {
  vec4 pos = texture2D(positionTex, uv);
  vUv = vec3(uv, pos.w);

  vec4 worldPosition = modelMatrix * vec4(pos.xyz, 1.0);
  vec4 mvPosition = viewMatrix * worldPosition;
  @import ./FogVert;
  gl_Position = projectionMatrix * mvPosition;
}