// EDUARDO CHARLONE
// USE LA CAMARA DEL CELULAR CON WIFI
// EL SOFTWARE EpoCam Viewer EN LA PC  y Epocam DESDE EL  CELULAR, (otros softwares no anduvieron).
// FUNCIONAMIENTO: "hay que vincular el celu antes y una vez que tenemos la imagen de la camara hay que compilar el programa"
// REALMENTE ES ESTABLE.
// SE PUEDEN DETECTAR DIFERENTES FUENTES DE VIDEO Y CONMUTARLAS (no en esta version)
// HAY QUE USAR LIBRERIA DE VIDEO, SINO NO ANDA.

import processing.video.*;
int miCamScale = 12;
int cols, rows, F;
Capture miCam;
int drawMode = 1;
PImage atras, icono, fondo, salida, bot001, bot002, bot003, click01;
float maxDistance;
void setup() {
  size(800, 600);
  fondo=loadImage("fondo.png");
  icono=loadImage("ico01.png");
  salida=loadImage("botsal01.png");
  bot001=loadImage("bot001.png");
  bot002=loadImage("bot002.png");
  bot003=loadImage("bot003.png");
  click01=loadImage("click01.png");
  cols = width/miCamScale;
  rows = height/miCamScale;
  smooth();
  miCam = new Capture(this, 640, 480, 30); 
  miCam.start();
  noStroke();
  smooth();
  fill(0);
  maxDistance = dist(0, 0, width, height);
}
void draw() {

  if (miCam.available()) {
    miCam.read();
  }

  cursor(HAND); //cambiamos el cursor del mouse con forma de mano

  fill(0);
  image(miCam, 33, 29);
  for (int i = 0; i <= width; i += 20) {
    for (int j = 0; j <= height; j += 20) {
      float mouseDist = dist(mouseX, mouseY, i, j);
      float diameter = (mouseDist / maxDistance) * 66.0;
      ellipse(i, j, diameter, diameter);
    }
  }
  image(fondo, 0, 0, 800, 600);
  stroke(0);
  noFill();
  strokeWeight(2);
  rect(33, 29, 640, 480);
  noStroke();

  //******bot001
  fill(90);   
  textSize(12);
  text("ESPEJO", 718, 71);
  //******bot002
  text("MOSAICO", 710, 160);
  //******bot003
  text("TINTE", 720, 250);
  //******bot004
  text("B Y N", 724, 339);  
  //******bot005
  text("BLUR", 724, 430);  
  //******bot006
  text("INVERSO", 715, 520);

  //*****ayuda**** 
  fill(255);
  text("X ="+mouseX+" Y="+mouseY, 700, 18);
  stroke(255);
  strokeWeight(4);
  point(mouseX, mouseY);
  fill(15, 19, 25);
  noStroke();
  rect(395, 534, 277, 48);
  fill(255);
   noFill();
  //****hora****
  int s = second();
  int m = minute();
  int h = hour();
  String t = nf(h, 2) + ":" + nf(m, 2) + ":" + nf(s, 2);
  text(t, 711, 576);


  //***********boton 1 *************
  if ((mouseX >=703)&&(mouseX<=770)&&(mouseY>=30)&&(mouseY<=98)) {
    image(bot002, 698, 27, 79, 80);
    fill(0, 0, 0);   
    textSize(12);
    text("ESPEJO", 718, 71);

    fill(15, 19, 25);
    noStroke();
    rect(395, 534, 275, 48);
    fill(255);
    text("EFECTO MIRROR ", 470, 550); 
    text("INVIERTE LA IMAGEN EN EJE X Y Z", 415, 570);
    noFill();
    if (mousePressed == true) {    

      image(bot003, 698, 27, 79, 80);
      text("ESPEJO", 718, 71);
      pushMatrix();
      translate(673, 508);
      scale(-1, -1);
      image(miCam, 0, 0);
      popMatrix();
      stroke(0);
      noFill();
      strokeWeight(2);
      rect(33, 29, 640, 480);
      fill(15, 19, 25);
      noStroke();
      rect(395, 534, 279, 48);
      fill(255);
      text("EFECTO MIRROR ", 470, 550); 
      text("PARA SALIR DEJE DE PRESIONAR CON EL MOUSE", 397, 570);
      noFill();
      noStroke();
    }
  }



  //***********boton 2 *************
  if ((mouseX >=703)&&(mouseX<=770)&&(mouseY>=121)&&(mouseY<=188)) {
    image(bot002, 700, 116, 76, 80);
    fill(0);   
    textSize(12);
    text("MOSAICO", 710, 160);
    fill(15, 19, 25);
    noStroke();
    rect(395, 534, 277, 48);
    fill(255);
    text("EFECTO MOSAICO ", 470, 550); 
    text("DIVIDE LA PANTALLA EN CUATRO CUADRANTES", 395, 565);
    text("CON COLORES ", 475, 580);
    noFill();
    noStroke();

    if (mousePressed == true) {     
      image(bot003, 700, 116, 76, 80);
      text("MOSAICO", 710, 160);
      image(miCam, 33, 29, 320, 240);
      tint(255, 0, 0);
      image(miCam, 353, 29, 320, 240);
      tint(0, 255, 0);
      image(miCam, 33, 269, 320, 240);
      tint(0, 0, 255);
      image(miCam, 353, 269, 320, 240);  
      noTint();
      stroke(0);
      noFill();
      strokeWeight(2);
      rect(33, 29, 640, 480);
      fill(15, 19, 25);
      noStroke();
      rect(395, 534, 277, 48);
      fill(255);
      text("EFECTO MOSAICO ", 470, 550); 
      text("PARA SALIR DEJE DE PRESIONAR CON EL MOUSE", 397, 570);
      noFill();
      noStroke();
      noStroke();
    }
  }

  //***********boton 3 *************
  if ((mouseX >=703)&&(mouseX<=770)&&(mouseY>=211)&&(mouseY<=276)) {

    image(bot002, 700, 205, 76, 80);
    fill(0);   
    textSize(12);
    text("TINTE", 720, 250);
    fill(15, 19, 25);
    noStroke();
    rect(395, 534, 279, 48);
    fill(255);
    text("EFECTO TINTE ", 470, 550); 
    text("TIÑE DE COLORES RANDOM LA PANTALLA", 397, 570);
    noFill();
    noStroke();

    if (mousePressed == true) {       
      image(bot003, 700, 205, 76, 80);
      text("TINTE", 720, 250);
      tint(random(255), random(255), random(255));
      image(miCam, 33, 29);
      noTint();
      fill(15, 19, 25);
      noStroke();
      rect(395, 534, 277, 48);
      fill(255);
      text("EFECTO TINTE ", 470, 550); 
      text("PARA SALIR DEJE DE PRESIONAR CON EL MOUSE", 397, 570);
      noFill();

      noStroke();
    }
  } 

  //***********boton 4 *************
  if ((mouseX >=703)&&(mouseX<=770)&&(mouseY>=301)&&(mouseY<=367)) {

    image(bot002, 702, 295, 76, 80);
    fill(0);   
    textSize(12);
    text("B Y N", 724, 339); 
    rect(395, 534, 279, 48);


    fill(15, 19, 25);
    noStroke();
    rect(395, 534, 277, 48);
    fill(255);
    text("EFECTO BLANCO Y NEGRO ", 460, 550); 
    text("      ALTO CONTRASTE SIN GRADIENTES", 410, 570);
    noFill();

    if (mousePressed == true) {         
      image(bot003, 702, 295, 76, 80);
      text("B Y N", 724, 339); 
      miCam.filter(THRESHOLD);
      image(miCam, 33, 29);

      fill(15, 19, 25);
      noStroke();
      rect(395, 534, 277, 48);
      fill(255);
      text("EFECTO BLANCO Y NEGRO ", 460, 550); 
      text("PARA SALIR DEJE DE PRESIONAR CON EL MOUSE", 397, 570);
      noFill();

      stroke(0);
      noFill();
      strokeWeight(2);
      rect(33, 29, 640, 480);
      noStroke();
    }
  } 


  //***********boton 5 *************
  if ((mouseX >=703)&&(mouseX<=770)&&(mouseY>=390)&&(mouseY<=456)) {

    image(bot002, 701, 386, 76, 80);
    fill(0);   
    textSize(12);
    text("BLUR", 724, 430); 
    fill(15, 19, 25);
    noStroke();
    rect(395, 534, 279, 48);
    fill(255);
    text("EFECTO BLUR ", 470, 550); 
    text("     DESENFOCA LA IMAGEN", 430, 570);
    noFill();
    noStroke();

    if (mousePressed == true) {
      image(bot003, 701, 386, 76, 80);
      text("BLUR", 724, 430); 

      miCam.filter(BLUR, 6);
      image(miCam, 33, 29);
      fill(15, 19, 25);
      noStroke();
      rect(395, 534, 277, 48);
      fill(255);
      text("EFECTO BLUR ", 470, 550); 
      text("PARA SALIR DEJE DE PRESIONAR CON EL MOUSE", 397, 570);
      noFill();
      
    }
  } 

  //***********boton 6 *************
  if ((mouseX >=703)&&(mouseX<=770)&&(mouseY>=481)&&(mouseY<=548)) {

    image(bot002, 701, 477, 76, 80);
    fill(0);   
    textSize(12);
    text("INVERSO", 715, 520);
     fill(15, 19, 25);
    noStroke();
    rect(395, 534, 279, 48);
    fill(255);
    text("EFECTO INVERSO ", 470, 550); 
    text("IMAGEN EN NEGATIVO", 460, 570);
    noFill();
    noStroke();

    if (mousePressed == true) {      
      image(bot003, 701, 477, 76, 80);
      text("INVERSO", 715, 520);

      miCam.filter(INVERT);
      tint(255, 200, 145);
      image(miCam, 33, 29);
      
       fill(15, 19, 25);
      noStroke();
      rect(395, 534, 277, 48);
      fill(255);
      text("EFECTO INVERSO ", 470, 550); 
      text("PARA SALIR DEJE DE PRESIONAR CON EL MOUSE", 397, 570);
      noFill();

      noTint();
    }
  } 
  
  if ((mouseX >=34)&&(mouseX<=674)&&(mouseY>=30)&&(mouseY<=507)){
  fill(15, 19, 25);
  noStroke();
  rect(395, 534, 277, 48);
  fill(255);
  text("             EDUARDO CHARLONE", 415, 548);
  text("        PROGRAMACION CREATIVA", 415, 568);
  noFill();
  }
  //*********FOTO********
  if ((mouseX >=151)&&(mouseX<=192)&&(mouseY>=535)&&(mouseY<=576))
  { 
    image(miCam, 33, 29);
    image(click01, 146, 531);
    fill(15, 19, 25);
      noStroke();
      rect(395, 534, 277, 48);
      fill(255);
      text("       FOTO ", 470, 540); 
      text("CAPTURA EL FOTOGRAMA TANTAS VECES SEA ", 397, 555);
      text("NECESARIO, SE RENOMBRA AUTOMATICAMENTE", 397, 570);
      noFill();
    if (mousePressed == true)         

      save(F+"Fotosky.jpg"); //graba foto con un nombre diferente para no borrar el anterior
    F = F + 1;
  }

  //***************SALIDA*********
  if ((mouseX >=29)&&(mouseX<=75)&&(mouseY>=534)&&(mouseY<=581)) {
    image(salida, 26, 530, 54, 56);
     fill(15, 19, 25);
      noStroke();
      rect(395, 534, 277, 48);
      fill(255);
      text("   SALIDA ", 470, 550); 
      text("       PRESIONE PARA CERRAR EL PROGRAMA", 397, 570);
      noFill();
    if (mousePressed == true)         
      exit();
  } 

  noStroke();
}
