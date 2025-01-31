/* 
 CIRCULOS ALEATORIOS
 Cicchetti, Langdon e Irrera
 San Agustín - 4to. B
 Agosto de 2019
 */

float equis;
float ye;

int lineax1= 100;
int lineax2= 300;

int lineax3= 300;
int lineax4= 400;

int lineax5= 400;
int lineax6= 500;

int lineax7= 500;
int lineax8= 700;

int lineax9= 700;
int lineax10= 500;

int lineax11= 500;
int lineax12= 600;

int lineax13= 600;
int lineax14= 400;

int lineax15= 400;
int lineax16= 200;

int lineax17= 200;
int lineax18= 300;

int lineax19= 300;
int lineax20= 100;

void setup() {
  background(#000000);
  size (800, 600);
}

void draw() {
  background(#000000);
  stroke(random(255), random(255), random(255));
  strokeWeight (10);
  lineax1=lineax1 + 1;
  lineax2=lineax2 + 1;
  lineax3=lineax3 + 1;
  lineax4=lineax4 + 1;
  lineax5=lineax5 + 1;
  lineax6=lineax6 + 1;
  lineax7=lineax7 + 1;
  lineax8=lineax8 + 1;
  lineax9=lineax9 + 1;
  lineax10=lineax10 + 1;
  lineax11=lineax11 + 1;
  lineax12=lineax12 + 1;
  lineax13=lineax13 + 1;
  lineax14=lineax14 + 1;
  lineax15=lineax15 + 1;
  lineax16=lineax16 + 1;
  lineax17=lineax17 + 1;
  lineax18=lineax18 + 1;
  lineax19=lineax19 + 1;
  lineax20=lineax20 + 1;

  line (lineax1, 200, lineax2, 200);
  line (lineax3, 200, lineax4, 0);
  line (lineax5, 0, lineax6, 200);
  line (lineax7, 200, lineax8, 200);
  line (lineax9, 200, lineax10, 300);
  line (lineax11, 300, lineax12, 500);
  line (lineax13, 500, lineax14, 400);
  line (lineax15, 400, lineax16, 500);
  line (lineax17, 500, lineax18, 300);
  line (lineax19, 300, lineax20, 200);

  noStroke();
  fill(random(255), random(255), random(255));
  ellipse(equis, ye, 80, 80);
  equis = random(1200);
  ye = random(1200);

}
