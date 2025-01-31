/* Aprendiendo Processing
 4to. "C" - 2019
 Alumnos: Tunik Henrik y Gole
 COLEGIO SAN AGUSTÍN
 */

int x1, x2, y1, y2;
float r, g, b;

void setup() {
  size(800, 600);
  background(300);
  smooth();
  stroke(0, 20);
}
void draw() {
  strokeWeight (random (5));
  r=random(255);
  g=random(255);
  b=random(255);
  stroke (r, g, b);
  x1=100 + int(random(300));
  x2=700 - int(random(300));
  y1=50 + int(random(500));
  y2=50 + int(random(500));
  line(x1, y1, x2, y2);
}
