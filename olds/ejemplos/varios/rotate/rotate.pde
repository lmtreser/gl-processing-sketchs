float i;
float j;

void setup() {
  background(#A3C998);
  size(500, 500);
}

void draw() {

  ellipseMode(CORNER);

  translate(250, 250);
  rotate(i);
  fill(255, 0, 0);
  ellipse(0, 0, 100, 100); 

  resetMatrix();

  translate(350, 350);
  rotate(j);
  fill(0, 255, 0);
  ellipse(0, 0, 100, 100); 

  resetMatrix();

  translate(150, 150);
  rotate(i);
  fill(0, 0, 255);
  ellipse(0, 0, 100, 100); 

  i=i+0.01;
  j=j-0.1;

  if (key == 'q') {
    background(#A3C998);
    key='r';
  }
}
