//eduardo charlone
//2020
//TIENE DETECCION DE COLISION
//TIENE BOTON DE SALIDA
//NO TIENE POSICIÓN INICIAL DEL MOUSE


void setup()
{size(160,300);
background(100);
fill(random(255),random(255),random(255));
rect(20,20,50,50);
fill(random(255),random(255),random(255));
rect(20,90,50,50);
fill(random(255),random(255),random(255));
rect(20,160,50,50);
fill(random(255),random(255),random(255));
rect(90,20,50,50);
fill(random(255),random(255),random(255));
rect(90,90,50,50);
fill(random(255),random(255),random(255));
rect(90,160,50,50);
fill(255,0,0);
rect(50,230,50,20,0,3,0,3);
fill(255);
textSize(12);
text("SALIDA",55,245);
fill(255);
stroke(255);
line(0,258,160,258);
text("encerrar los cuadrados con ",5,267);
text("el cursor sin cruzarse y sin",5,277);
text("tocarse, puede pasar tantas",5,287);
text("veces sea por la misma calle",5,297);

mouseX=0;
mouseY=0;
}
void draw(){

  stroke(0,255,0);
  strokeWeight(3);
  
  point(mouseX,mouseY);
  
  if((mouseX >=20)&&(mouseX<=70)&&(mouseY>=20)&&(mouseY<=70)) {
  
           fill(255,0,0);
           stroke(255);
           rect(20,20,50,50);
           fill(255);   
           textSize(12);
           text("TOCADO",20,50);        
}else{
           fill(0,255,0);
           stroke(255);
           rect(20,20,50,50);
          
           }
if((mouseX >=20)&&(mouseX<=70)&&(mouseY>=90)&&(mouseY<=140)) {
      
          fill(255,0,0);
           stroke(255);
           rect(20,90,50,50);
           fill(255);  
           textSize(12);
           text("TOCADO",20,120);
}else{
           fill(0,255,255);
           stroke(255);
           rect(20,90,50,50);
          
           }

if((mouseX >=20)&&(mouseX<=70)&&(mouseY>=160)&&(mouseY<=210)) {
      
          fill(255,0,0);
           stroke(255);
           rect(20,160,50,50);
           fill(255);  
           textSize(12);
           text("TOCADO",20,190);
           } 
           else{
           fill(255,255,0);
           stroke(255);
           rect(20,160,50,50);
          
           }

if((mouseX >=90)&&(mouseX<=140)&&(mouseY>=20)&&(mouseY<=70)) {
      
          fill(255,0,0);
           stroke(255);
           rect(90,20,50,50);
           fill(255);   
           textSize(12);
           text("TOCADO",90,50);
           } 
           else{
           fill(#b83dba);
           stroke(255);
           rect(90,20,50,50);
          
           }
           
if((mouseX >=90)&&(mouseX<=140)&&(mouseY>=90)&&(mouseY<=140)) {
      
          fill(255,0,0);
           stroke(255);
           rect(90,90,50,50);
           fill(255);   
           textSize(12);
           text("TOCADO",90,120);
           } 
           else{
           fill(#ff6800);
           stroke(255);
           rect(90,90,50,50);
          
           }

if((mouseX >=90)&&(mouseX<=140)&&(mouseY>=160)&&(mouseY<=210)) {
      
          fill(255,0,0);
           stroke(255);
           rect(90,160,50,50);
           fill(255);   
           textSize(12);
           text("TOCADO",90,190);
           } 
           else{
           fill(#f700ff);
           stroke(255);
           rect(90,160,50,50);
          
           }
if((mouseX >=0)&&(mouseX<=160)&&(mouseY>=220)&&(mouseY<=300))
{ 
 noStroke();
 fill(100);
rect(0,258,160,80);
fill(255);

stroke(255);
strokeWeight(1);
line(0,258,160,258);
text("encerrar los cuadrados con ",5,267);
text("el cursor sin cruzarse y sin",5,277);
text("tocarse, puede pasar tantas",5,287);
text("veces sea por la misma calle",5,297);
noStroke();
fill(255,0,0);
stroke(255);
rect(50,230,50,20,0,3,0,3);
fill(255);
textSize(12);
text("SALIDA",55,245);
}

    
if((mouseX >=55)&&(mouseX<=105)&&(mouseY>=230)&&(mouseY<=250)&&(mousePressed == true)) {
         exit();
           } 
           
noStroke();

}
