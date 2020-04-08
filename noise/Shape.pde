
class Shape {
  
  float xoff = 0.01;
  float yoff = 0.01;
  float coff = 0.01;
  
  Shape() {
    xoff = random(0, width) / 1000;
    yoff = random(0, height) / 1000;
    coff = random(0, 255) / 512;
  }
  
  
  
  void render() {
    xoff = xoff + .01;
    yoff = yoff + .01;
    coff = coff + 0.02;
    float n = noise(xoff) * width;
    float m = noise(yoff) * height;
    float c = map(noise(coff), 0, 1, 150, 240);
    float scale = map(noise(xoff, yoff), 0, 10, 0.5, 2);
    fill(int(c), 255 - int(c), 255 - int(c), 599.0);
    noStroke();
    triangle(n, m, n - 100*scale, m + 100*scale, n + 100*scale, m + 100*scale);
  }
  
}
