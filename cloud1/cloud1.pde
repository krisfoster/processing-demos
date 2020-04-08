
float xoff = 0.0;

void setup() {
  size(400, 200);
}

void draw() {
  fill(255);
  text("Frame Rate " + frameRate, 20, 20);
  noiseDetail(4, 0.1);
  for (int x=0; x<width; x++) {
    float yoff = 0;
    for (int y=0; y<height; y++) {
      //float bright = map(noise(xoff, yoff), 0, 1, 0, 255);
      float bright = 100;
      noStroke();
      fill(color(bright));
      ellipse(x, y, 1, 1);
      yoff += 0.01;
    }
    xoff += 0.01;
  }
  //
  //noLoop();
}
