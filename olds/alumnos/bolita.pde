float n = 0;
float r = 0;
 
void setup() {
  size(300, 300);
  background(#336699);
  stroke(255);
  strokeWeight(5);
}
void draw() {
  point(width/2 + cos(n) * sin(n/10) * r, height/2 + sin(n) * cos(n/15) * r);
  // Color y transparencia del rectángulo
  fill(#336699, 50);
  // Dibujamos el rectángulo después de mover el punto
  rect(0, 0, width, height);
  n = n + 0.05;
  r = r + 0.1;
}