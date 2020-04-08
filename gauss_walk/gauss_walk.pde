import java.util.Random;

Random rand;
float step = 2;
float x = 0;
float y = 0;
float r = 100;
float g = 100;
float b = 100;
float alpha = 10;

float montecarlo() {
  while (true) {
    float r1 = random(1);
    float r2 = random(1);
    if (r2 < r1) {
      return r1;
    }
  }
}


void setup(){
  rand = new Random();
  x = width/2;
  y = height/2;
  size(400, 400);
}

void draw() {
  //
  //float sx = (float)rand.nextGaussian() * step;
  //float sy = (float)rand.nextGaussian() * step;
  float sx = montecarlo() * step - step/2;
  float sy = montecarlo() * step - step/2;
  x = x + sx;
  y = y + sy;
  translate(x, y);
  //
  float d = radians((float)rand.nextGaussian() * 360);
  rotate(d);
  //
  r = (float)rand.nextGaussian() * 255;
  g = (float)rand.nextGaussian() * 255;
  b = (float)rand.nextGaussian() * 255;
  //
  noStroke();
  fill(r, g, b, alpha);
  ellipse(0, 0, 10, 10);
}
