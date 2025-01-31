/* 
 LINEAS ALEATORIAS
 */

float equis;
int ye;

void setup() {
  background(#000000);
  size (1200, 600);
}

void draw() {
  strokeWeight(3);
  stroke(random(255), random(255), random(255));
  line(10, 10, equis, ye);
  equis = random(1200);
  ye=ye+1;
}
