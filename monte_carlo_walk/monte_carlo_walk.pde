
import java.util.Random;

Random rand;
float step = 2;
float x = 0;
float y = 0;
float r = 100;
float g = 100;
float b = 100;
float alpha = 10;

int[] buckets;
float w = 0;

// Returns a value 0 to 1.0
// The higher the value, the more likely it is to be returned
float montecarlo() {
  while (true) {
    float r1 = random(1);
    float r2 = random(1);
    if (r2 < r1) {
      return r1;
    }
  }
}

float inverseMonte() {
  return 1.0 - montecarlo();
}

float reflectMonte() {
  float sign = random(-1, 1);
  if (sign >= 0) {
    sign = 1;
  } else {
    sign = -1;
  }
  return sign * inverseMonte();
}

float inverseMonteReflect() {
  return reflectMonte();
}

void setup(){
  rand = new Random();
  x = width/2;
  y = height/2;
  buckets = new int[100];
  w = width / buckets.length;
  size(400, 400);
}

void barChartMonte() {
  int v = round(montecarlo() * (buckets.length - 1));
  buckets[v]++;
  rect(v * w, height, w, -1 * buckets[v]);
}

void barChartMonteReflect() {
  int v = round(reflectMonte() * (buckets.length - 1)/2) + buckets.length/2;
  buckets[v]++;
  rect(v * w, height, w, -1 * buckets[v]);
}

void draw() {
  //barChartMonteReflect();
  translate(x, y);
  noStroke();
  fill(10, 10);
  ellipse(0, 0, 2, 2);
  x = x + reflectMonte() * step;
  y = y + reflectMonte() * step;
}
