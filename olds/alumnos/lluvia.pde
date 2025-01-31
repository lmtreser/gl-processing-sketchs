/*
  Lluvia
 San Agustín - 4B
 Forcic, Arce y Garcia Garro
 Agosto de 2019
 */

int variable = 180;
float otravariable = 180;
float otravariable1 = 180;
float otravariable2 = 180;
float otravariable3 = 180;
float otravariable4 = 180;
float otravariable5 = 180;
float otravariable6 = 180;
float otravariable7 = 180;
float otravariable8 = 180;
float otravariable9 = 180;
float otravariable10 = 180;

void setup () {
  size (900, 900);
  background (#011936);
}

void draw() {
  background (#011936);
  fill (#7E7D81);
  ellipse (290, 100, 100, 100);
  ellipse (370, 100, 100, 100);
  ellipse (450, 100, 100, 100);
  ellipse (370, 50, 100, 100);
  ellipse (450, 50, 100, 100);
  ellipse (370, 150, 100, 100);
  ellipse (450, 150, 100, 100);
  ellipse (520, 100, 100, 100);
  fill (#66FC17);
  rect (0, 700, 900, 200);
  fill (#FBFFF7);
  ellipse (800, 50, 100, 100);
  fill (#011936);
  noStroke ();
  ellipse (830, 50, 100, 100);
  fill (#0EBAE8);
  strokeWeight (400);
  ellipse (290, otravariable, 20, 20);
  otravariable=otravariable+1.2;

  ellipse (350, otravariable1, 20, 20);
  otravariable1=otravariable1+0.85;

  ellipse (520, otravariable2, 20, 20);
  otravariable2=otravariable2+1.1;

  ellipse (440, otravariable3, 20, 20);
  otravariable3=otravariable3+1.5;

  ellipse (330, otravariable4, 20, 20);
  otravariable4=otravariable4+2.5;

  ellipse (470, otravariable5, 20, 20);
  otravariable5=otravariable5+2;

  ellipse (500, otravariable6, 20, 20);
  otravariable9=otravariable9+1.75;

  ellipse (420, otravariable6, 20, 20);
  otravariable6=otravariable6+3;

  ellipse (505, otravariable7, 20, 20);
  otravariable7=otravariable7+1.5;

  ellipse (400, otravariable8, 20, 20);
  otravariable8=otravariable8+1.85;

}
