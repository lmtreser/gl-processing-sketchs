//eduardocharlone
//2020
size(400,400);
background(200,200,200);  

for(float i=0; i<11; i++) {
 
  if (i<11) {
  ellipse(i*30+50,i*30+50, 30,30);
  }
  else{
  if (i>100) {
  i=0;
  }
  }
  text("TERMINO",width/2,100);
}
