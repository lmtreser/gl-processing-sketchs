//EDUARDO CHARLONE
//2020
void setup()
{size(200,200);
background(#3f48cc);
}
void draw(){
 fill(#3f48cc,50);
 rect(0,0,200,200);
stroke(0);
  strokeWeight(2);
  line(100,100,mouseX,mouseY);
  stroke(#ffffff,50);
  strokeWeight(10);
  point(100,100);
  point(mouseX,mouseY);
noStroke();

}
