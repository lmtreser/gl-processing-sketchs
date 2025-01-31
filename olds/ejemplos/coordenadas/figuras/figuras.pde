//EDUARDOCHARLONE
//2020
void setup() {
  size(500,200);
  frameRate(16);
  
}
void draw()
{background(250);
  stroke(0);
  strokeWeight(2);
  fill(random(0,255),0,0);
bezier(20,100,random(60),random(20,180),random(120,180),random(20,180),180,100);
line(20,random(50),180,random(50));
noFill();
fill(0,random(0,255),random(0,255));
ellipse(100,170,random(200),random(30));
fill(0,0,random(0,255));
triangle(random(250,300),random(0,30),random(300,350),random(50,70),random(200,300),random(40,60));
strokeWeight(8);
point(random(250,300),random(100,200));
strokeWeight(5);
fill(0,random(0,255),0);
quad(random(450,500),random(10,40),random(450,500),random(100,140),random(400,450),random(100,190),random(360,390),random(0,40));


}
