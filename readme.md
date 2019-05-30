# glsl-rectangular-function

Glsl implementation of the [rectangular function](https://en.wikipedia.org/wiki/Rectangular_function).

## Install

```sh
npm install glsl-rectangular-function
```

## Usage

```glsl
#pragma glslify: rectangularFunction = require(glsl-rectangular-function)

void main() {
	vec2 p = gl_FragCoord.xy / resolution.xy;

	float center = 0.5;
	float width = 0.25;
	float y = rectangularFunction(p.x, center, width);

	gl_FragColor = vec4(vec3(y), 1.0);
}
```
