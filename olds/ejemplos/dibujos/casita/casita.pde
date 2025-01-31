//EDUARDO CHARLONE
//2020

size(240,195);
background(255);
stroke(0);
strokeWeight(2);
//pared
fill(#afafaf);
quad(45,80,125,94,125,165,45,141);

//techo
fill(170,92,72);
quad(70,16,171,16,118,94,19,78);
quad(19,78,118,94,120,100,22,82);
quad(171,16,219,77,216,81,172,27);
quad(170,25,216,81,189,80,156,47);
quad(171,16,118,94,120,100,172,27);
fill(#bcc3bc);

//chimenea
quad(57,30,69,30,69,50,57,50);
quad(69,30,83,30,83,32,69,50);
fill(#336800);
quad(54,21,69,21,69,30,54,30);
fill(#4b9c00);
quad(69,21,86,21,86,30,69,30);

//frente
fill(#ffffff);
 beginShape();
  vertex(167, 35);
  vertex(195, 67);
  vertex(195, 144);
  vertex(125, 164);
  vertex(125, 94);
  vertex(167, 35);
 endShape(CLOSE);


//sombra frente
fill(210);
strokeWeight(0);
 beginShape();
  vertex(167, 35);
  vertex(194, 67);
  vertex(194, 107);
  vertex(157, 67);
  vertex(127, 112);
  vertex(127, 94);
  vertex(167,35);
 endShape(CLOSE);
 
 //sombra piso
 
 fill(210);
strokeWeight(0);
 beginShape();
  vertex(108,162);
  vertex(93,170);
  vertex(6, 141);
  vertex(43,127);
  vertex(44,142);
  vertex(108,162);
 endShape(CLOSE);

fill(#1c3903);
strokeWeight(2);
beginShape();
vertex(52,93);
vertex(110,104);
vertex(110,140);
vertex(52,125);
vertex(52,93);
endShape();//ventana


fill(#acb1ce);
beginShape(); 
vertex(71,98);
vertex(92,102);
vertex(92,129);
vertex(71,124);
vertex(71,98);
endShape(); //vidrios ventana

stroke(#778899);
strokeWeight(4);
line(74,101,74,109);
line(74,113,74,122); //reflejo vidrio

stroke(150);
strokeWeight(2);
line(69,95,70,125);
line(71,127,92,132);

stroke(0);
strokeWeight(2);
line(55,124,55,95);
line(55,123,64,125);
line(95,102,95,133);
line(95,133,106,136);
line(82,99,82,127);
line(72,112,92,116);

stroke(#386a09);
strokeWeight(2);
line(55,95,66,97);
line(67,125,66,97);
line(97,104,106,106);
line(106,106,106,135);

stroke(#2a4415);
line(72,110,92,114);
line(72,126,92,131);


stroke(0);
strokeWeight(2);
fill(#285304);
beginShape();
vertex(151,99);
vertex(168,96);
vertex(168,145);
vertex(152,149);
vertex(151,99);
endShape(); //puerta

fill(#acb1ce);
beginShape();
vertex(152,101);
vertex(166,98);
vertex(166,121);
vertex(152,124);
vertex(152,101);
endShape(); //vidrios puerta

stroke(#778899);
strokeWeight(3);
line(165,101,165,119); //reflejo puerta

stroke(20);
strokeWeight(3);
line(159,99,159,120);
line(153,112,167,110);

stroke(#386a09);
strokeWeight(2);
line(153,111,167,108);
line(153,123,167,120);

stroke(#3b7f02);
strokeWeight(1);
line(154,127,165,124);
line(165,124,165,143);
stroke(10);
strokeWeight(1);
line(154,128,154,146);
line(154,146,167,142);
strokeWeight(4);
stroke(#A06F05);
point(153,127);
strokeWeight(2);
stroke(255);
point(154,126);//brillo picaporte
//picaporte



fill(170);
stroke(60);
strokeWeight(1);
beginShape();
vertex(148,151);
vertex(152,153);
vertex(152,156);
vertex(160,158);
vertex(160,162);
vertex(148,158);
vertex(148,151);
endShape();//escalera
stroke(255);
strokeWeight(2);
line(158,156,180,149);

stroke(150);
strokeWeight(2);
line(155,148,167,145);

strokeWeight(1);
line(169,99,169,145);
stroke(0);
strokeWeight(2);
line(171,95,171,145);

stroke(0);
strokeWeight(1);
line(149,151,175,144);
line(151,153,177,146);
line(160,158,184,150);
line(160,162,184,154);
line(184,154,184,150);
line(184,150,176,149);
line(178,146,178,149);
line(173,144,178,145);//escalones

fill(0);
textSize(12);
text("La Casita", 155, 180); 
textSize(10);
text("Geometrias simples",140,190);
