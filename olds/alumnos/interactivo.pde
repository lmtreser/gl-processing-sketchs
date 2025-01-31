/* 
 actividad del dia
 vazquez
 comparatto 
 peychaux
 fazzio
 */

int rojo =10;
int verde =20;
int azul =30;

void setup() {
  size(600, 600);
}

void draw()
{
  background(rojo, verde, azul);
  rojo=rojo+8;
  verde=verde+2;
  azul=azul+7;
  delay(10);
  rojo=pmouseX;
  verde=pmouseY;
  strokeWeight(10);
  stroke(#030302);
  line(pmouseX, pmouseY, 300, 1);
  line(pmouseX, pmouseY, 300, 599);
  line(pmouseX, pmouseY, 1, 300);
  line(pmouseX, pmouseY, 599, 300);
  strokeWeight(50);
  rectMode(CENTER);
  rect(pmouseX, pmouseY, 20, 30);
  stroke(#FFFFFC);
  ellipse(pmouseX, pmouseY, 20, 20);
}
