//EDUARDO CHARLONE
//2020
PImage fondo,ico,perder,ganar;
int vidas=5;
int ejeX;
int ejeY;
boolean estado;

void setup() {
 smooth(4);
fullScreen();
background(0);
fondo=loadImage("fondo.png");
ico=loadImage("icono.png");
perder=loadImage("perdimos.png");
ganar=loadImage("ganamos.png");
image(fondo,0,0,790,700);
ejeX=640;
ejeY=640;
}

void draw (){
  image(fondo,0,0,790,700);

//**********boton salida ******************
  stroke(255,0,0);
  strokeWeight(2);  
  fill(255,255,0);
  rect(720, 100, 50, 20);
  textSize(14);
  fill(0);
  text("SALIR", 725, 115);
//*********IMPRIME VIDAS EN PANTALLA **********
    stroke(0);
    strokeWeight(5);
    fill(0,0,0,100);
    noFill();
    fill(255);
    textSize(15);
    text("VIDAS",730,40);
    textSize(40);
    text(""+vidas,740,80);
    fill(255);
    textSize(20);
  // text("eje X ="+ejeX+ "eje Y "+ejeY,130,180);  //datos de coordenadas para programar

//************LABERINTO******************   
 
  if ((ejeX<=650) && (ejeY<=15)
  ||(ejeY ==655)
   ||(ejeX ==570)&&(ejeY>=40)
   ||(ejeX==630)&&(ejeY>=40)
   ||(ejeX>650) && (ejeY>=15)
   ||(ejeX==550)&&(ejeY<=180)
   || (ejeX>=480)&(ejeX<=565)&&(ejeY==225)
   || (ejeX>=445)&&(ejeX<=545)&&(ejeY==175)
   || (ejeY>=175)&&(ejeY<=360)&&(ejeX==445)
   || (ejeX>=265)&&(ejeX<=480)&&(ejeY==390)
   || (ejeX>=305)&&(ejeX<=440)&&(ejeY==360)
   || (ejeY>=175)&&(ejeY<=385)&&(ejeX==265)
   || (ejeX>=265)&&(ejeX<=360)&&(ejeY==175)
   || (ejeX>=305)&&(ejeX<=385)&&(ejeY==220)
   || (ejeY>=15)&&(ejeY<=215)&&(ejeX==385)
   || (ejeY>=35)&&(ejeY<=180)&&(ejeX==360)
   || (ejeX>=50)&&(ejeX<=360)&&(ejeY==35)
   || (ejeY>=15)&&(ejeY<=220)&&(ejeX==10)
   || (ejeY>=40)&&(ejeY<=175)&&(ejeX==50)
   || (ejeX>=50)&&(ejeX<=115)&&(ejeY==185)
   || (ejeY>=185)&&(ejeY<=435)&&(ejeX==115)
   || (ejeX>=10)&&(ejeX<=100)&&(ejeY==230)
   || (ejeY>=275)&&(ejeY<=490)&&(ejeX==100)
   || (ejeX>=125)&&(ejeX<=195)&&(ejeY==435)
   || (ejeX>=100)&&(ejeX<=175)&&(ejeY==490)
   || (ejeY>=44)&&(ejeY<=650)&&(ejeX==195) 
   || (ejeY>=495)&&(ejeY<=640)&&(ejeX==180)
   || (ejeX>=175)&&(ejeX<=190)&&(ejeY==650)
   )
   {
//*******vuelve el icono al inicio y descuenta 1 vida **********
    ejeX=640;
    ejeY=640;
    vidas = vidas -1; 
  }
//*****GANASTE********

if((ejeY>=635)&&(ejeY<=650)&&(ejeX==105))
{
     image(ganar,200,200,400,66);  
     noLoop(); //detiene el Draw
     estado=true;
}
//************VIDAS******************* 
 
  if (vidas<=0)                                  
  {
     image(perder,200,200,400,66);
     noLoop(); 
     estado=true;
     textSize(50);
  }
   image(ico,ejeX,ejeY,48,48);
}

//****************** TECLAS -- CURSORES ***********************
   
    void keyPressed() {
  if (keyCode == RIGHT) {
    ejeX = ejeX + 5;
  }

  if (keyCode == LEFT) {
   ejeX = ejeX - 5;
}
 if (keyCode == UP){
   ejeY=ejeY -5;
 }
 if (keyCode== DOWN){
   ejeY=ejeY +5 ; 
 }
    }
    
//***********mouse salir **********
    void mousePressed() {
     if (mouseX >= 720 && mouseX < 770) {
     if (mouseY >= 100 && mouseY < 120) {
        exit();
    }
  }
}

//PENDIENTES: delay en colisiones, sonido, puntaje, otros mapas, maximizar a pantalla
