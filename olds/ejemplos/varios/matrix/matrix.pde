/* 
 RECTANGULOS ALEATORIOS
 */

float equis;
int ye;

void setup() {
  background(#000000);
  size (1200, 600);
}

void draw() {
  noStroke();
  fill(random(255), random(255), random(255));
  rect(equis, ye, 50, 50);
  equis = random(1200);
  ye=ye+1;
}
