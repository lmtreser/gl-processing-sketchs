/* 
 CIRCULOS ALEATORIOS
 */

float equis;
float ye;

void setup() {
  background(#000000);
  size (1200, 600);
}

void draw() {
  noStroke();
  fill(random(255), random(255), random(255));
  ellipse(equis, ye, 80, 80);
  equis = random(1200);
  ye = random(1200);
}
