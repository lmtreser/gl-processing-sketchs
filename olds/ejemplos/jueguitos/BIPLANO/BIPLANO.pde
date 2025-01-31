//MODIFICACION CHARLONEANA
//BOMBAS
//INTERSECCION CON OBJETOS (OTRAS NAVES)
//2020

ArrayList<PVector> pos = new ArrayList<PVector>();
float speed =2;
PImage back, middle, front,avion;
PVector vback, vmiddle, vfront;

void setup(){
  back = loadImage("back.png");
  middle = loadImage("middle.png");
  front = loadImage("front.png");
  avion = loadImage ("biplano01.png");
  
  size(640, 420);
  vback = new PVector(0, 0);
  vmiddle = new PVector(0, 0);
  vfront = new PVector(0, 5); 
  
  frameRate(200);
}

void paraDraw(PImage img, PVector pos, float vel){
  pos.sub(vel, 0, 0);
  
  int r = (int)pos.x+img.width;

  if(r < width) image(img, r, pos.y);
  if(pos.x < width) image(img, pos.x-img.width, pos.y);  
  if(pos.x < -img.width) pos.x = width;
   
  image(img, pos.x, pos.y);
  
}

void draw(){
  background(255);
  
  paraDraw(back, vback, 1);
  paraDraw(middle, vmiddle, 2);
  paraDraw(front, vfront, 3);
  draw_points();
  image(avion,mouseX-90,mouseY-20,100,52);
}
void mousePressed() {
  pos.add( new PVector(mouseX, mouseY, 0) );
  
}
void draw_points() {
  
  for ( int i = 0; i < pos.size(); i++ ) {
    pos.get(i).x += speed;
    stroke(200, 0, 0);
  strokeWeight(3);
    line(pos.get(i).x, pos.get(i).y,pos.get(i).x+10, pos.get(i).y);
    stroke(255, 255, 0);
    strokeWeight(6);
    point(pos.get(i).x-1, pos.get(i).y);
  }
  for ( int i = pos.size()-1; i >=0; i-- ) { 
    if ( pos.get(i).x > width ) {
      pos.remove(i);
         }
  }
}
