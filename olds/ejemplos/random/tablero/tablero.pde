int contador;
void setup() {
  size(800, 600);
  background(random(255),random(255),random(255));
  fill(255);
text("MIENTRAS DESPLAZA EL MOUSE GIRE LA RUEDITA DEL CENTRO " ,10,10);
}

void draw() {
  

} 

void mouseWheel(MouseEvent event) {
  float ruedita = event.getCount();
  fill(255);
text("MIENTRAS DESPLAZA EL MOUSE GIRE LA RUEDITA DEL CENTRO " ,10,10);
 stroke(0);
 fill(random(255),random(255),random(255));
 rect(mouseX,mouseY,contador,contador);
 
  if(ruedita<= -1){     
  contador=contador+10;
  println(contador);
}
if (ruedita>=1){
  contador=contador-10;
   println(contador);
   fill(random(255),random(255),random(255));
   stroke(255);
   rect(mouseX,mouseY,contador+1,contador+1);
    stroke(0);
    fill(random(255),random(255),random(255));
    rect(mouseX,mouseY,contador,contador);
   
}
}
