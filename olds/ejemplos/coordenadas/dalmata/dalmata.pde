//EDUARDO CHARLONE
//2020
//click con el mouse
void setup(){
size(200,200);
 background(#fff200);
}
int mouse = 0;
void draw() {
 
  
}

void mouseClicked() {
  if (mouse == 0) {
    stroke(0);
    strokeWeight(random(2,40));
    point(mouseX,mouseY);
  } else {
    
  }
}
