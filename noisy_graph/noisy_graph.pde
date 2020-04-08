
float ty = 0;
float x = 0;

void setup() {
  size(400, 400);
  background(240);
}

void draw() {
  float ny = noise(ty);
  float y = map(ny, 0, 1, 0, width);
  point(x, y);
  ty += 0.01;
  x += 1;
}
