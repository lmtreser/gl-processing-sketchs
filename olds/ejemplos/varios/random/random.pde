/* 
 RANDOM
 */

void setup() {
  background(#000000);
  size (1200, 600);
}

void draw() {
  noStroke();
  fill(random(255), random(255), random(255));
  ellipse(random(1200), random(1200), random(100), random(100));
}

void mousePressed() {
  background(#000000);
}
