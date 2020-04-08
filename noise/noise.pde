float x = 0.05;
float y = 0.04;
Shape[] shapes;

void setup() {
  frameRate(60);
  size(800, 800);
  colorMode(RGB);
  shapes = new Shape[4];
  for (int i=0; i< shapes.length; i++) {
    shapes[i] = new Shape();
  }
}


float xoff = 0.0;
float yoff = 0.1;
float coff = 0.0;

void draw() {
  background(204);
  stroke(0);
  line(0, 0, width, height);
  for (int i=0; i<shapes.length; i++) {
    shapes[i].render();
  }
}
//void draw() {
//  background(100);
//  fill(102);
//  float x = randValX();
//  float y = randValY();
//  triangle(x, y, x + 50, y + 50, x + 100, y + 50);
//}

float randValX() {
  float newX = map(noise(x, y), 0, 1, 0, 800);
  x += 0.005;
  return newX;
}

float randValY() {
  float newY = map(noise(x, y), 0, 1, 0, 800);
  y += 0.005;
  return newY;
}
