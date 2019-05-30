precision mediump float;

#pragma glslify: rectangularFunction = require(./)

bool test_1() {
	float center = 0.5;
	float width = 0.25;
	float x = 0.2;
	float y = rectangularFunction(x, center, width);
	return y == 0.;
}

bool test_2() {
	float center = 0.5;
	float width = 0.25;
	float x = 0.4;
	float y = rectangularFunction(x, center, width);
	return y == 1.;
}

bool test_3() {
	float center = 0.5;
	float width = 0.25;
	float x = center - width / 2.;
	float y = rectangularFunction(x, center, width);
	return y == 1.;
}

bool test_4() {
	float center = 0.5;
	float width = 0.25;
	float x = center + width / 2.;
	float y = rectangularFunction(x, center, width);
	return y == 1.;
}

bool test_5() {
	float center = 0.5;
	float width = 0.25;
	float x = center + width / 2. + 0.01;
	float y = rectangularFunction(x, center, width);
	return y == 0.;
}

bool test_6() {
	float center = 0.5;
	float width = 0.25;
	float x = center - width / 2. - 0.01;
	float y = rectangularFunction(x, center, width);
	return y == 0.;
}
