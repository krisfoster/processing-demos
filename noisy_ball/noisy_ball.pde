
float tx = 0;
float ty = 1000;


void setup() {
  size(400, 400);
  background(240);
}

void draw() {
  background(240);
  float nx = noise(tx);
  float x = map(nx, 0, 1, 0, width);
  float ny = noise(ty);
  float y = map(ny, 0, 1, 0, height);
  ellipse(x, y, 15, 15);
  tx += 0.01;
  ty += 0.01;
}
