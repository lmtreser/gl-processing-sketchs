//EDUARDOCHARLONE
//2020
void setup()
{size(200,200);
background(#3f48cc);
}
void draw(){
 fill(#3f48cc,50);
 rect(0,0,200,200);
 stroke(255,0,0);
 point(100,100);
  stroke(0,255,0);
  strokeWeight(20);
  
  point(mouseX-10,mouseY-10);
noStroke();

}
