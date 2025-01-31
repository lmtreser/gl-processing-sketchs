//EDUARDO CHARLONE
//2020
PImage linterna;
PImage fondo;
void setup() {
  size(600, 338); // tamaño canvas
  smooth(4); // suavizado de lineas
  linterna = loadImage("linterna.png"); //lee imagen de linterna
  fondo = loadImage("fondo.jpg");//lee imagen de fondo
}
void draw() { 
  image(fondo,0,0,600,338); // imagen de la pieza
  if ((mousePressed == true)&&(mouseX>=0)&&(mouseX<=800)&&(mouseY>=-100)&&(mouseY<=400)){ //mouse no se pasa
  image(linterna,mouseX-width-230,mouseY-height-250,1600,1200); // imagen de la linterna
  }
else{ //cuando no se hace click en el mouse avisa el cartel
  
  fill(0);
  rect(0,0,600,338);
  fill(255);
  textAlign(CENTER);
  text("use del mouse el boton izquierdo para encender la linterna y desplace,",width/2, height/2);
}
}
