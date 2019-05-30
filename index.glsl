float rectangularFunction (float x, float center, float width) {
	return
		step(center - width / 2., x) *
		step(x, center + width / 2.);
}

#pragma glslify: export(rectangularFunction)
