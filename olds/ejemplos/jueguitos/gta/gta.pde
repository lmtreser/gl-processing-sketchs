//TEST FOTOS ESCENA AVENIDA
PImage fondo, barra, coche1, coche2, coche3, coche4, coche5, coche6;

void setup (){
size(620,465);
fondo=loadImage ("fondo.png");
barra=loadImage ("barra.png");
coche1=loadImage("auto01.png");
coche2=loadImage("auto02.png");
coche3=loadImage("auto03.png");
coche4=loadImage("auto04.png");
coche5=loadImage("auto05.png");
coche6=loadImage("auto06.png");


image(fondo,0,0,width,height);

}

void draw () {

image(coche1,200,206,48,36);
image(coche2,250,255,62,36);
image(coche3,455,115,65,36);
image(coche4,350,150 ,63,34);
image(coche5,50,200,63,36);
image(coche6,100,250,54,36);

image (barra,0,0,width,height);
}
