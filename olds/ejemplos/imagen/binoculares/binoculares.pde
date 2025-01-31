//EDUARDO CHARLONE  
//2020

PImage binoculares;
PImage fondo;
int a;
float b;
float c;
int menos,mas;


void setup() {
  size(800, 600); // tamaño canvas
  smooth(4); // suavizado de lineas
  binoculares = loadImage("binoculares.png"); //lee imagen de lupa
  fondo = loadImage("fondo.jpg");//lee imagen de fondo
   image(fondo,0,0,1600+a,1000+a); // imagen de la pieza
  image(binoculares,0,0,800,600); // imagen de la lupa
  text("Zona de Mouse",10,10);
  text("gire la ruedita",10,90);
  noFill();
  stroke(255);
  strokeWeight(2);
  rect(0,0,100,100,10,10,10,10);
}
void draw() { 
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  int ratonX = constrain(mouseX, 0, 100);
  int ratonY = constrain(mouseY, 0, 100);
b=width/2;
c=height/2;

  imageMode(CENTER);
  image(fondo,508+ratonX,300+ratonY,1600-a,1000-a); // imagen de la pieza
 imageMode(CORNER);
  image(binoculares,0,0,800,600); // imagen de la lupa
  text("Zona de Mouse",10,10);
  text("gire la ruedita",10,90);
  noFill();
  stroke(255);
  strokeWeight(2);
  rect(0,0,100,100,10,10,10,10);
 
  
  if (e<= -1){     
    a=a-5;   
        //println("menos",a);
        println("ratonX",ratonX);
  }
  
   if ((e>=1)&&(a<=500))
    {
    a=a+5;
  
      println("ratonY",ratonY);
     }
   

}

 
