//EDUARDO CHARLONE
//2020
// TEST DE LINEAS Y VOLUMEN (incompleto)
size(500,600);
background(60,255,60);

//*************cuerpo nave******
fill(#edf9ed);
 beginShape();
 vertex(232,190);
 vertex(227,202);
 vertex(225,209);
 vertex(220,227);
 vertex(218,245);
 vertex(218,252);
 vertex(218,262);//izq cohete
 vertex(218,280);
 vertex(234,283);
 vertex(247,283);
 vertex(261,280);
 vertex(261,262);//der cohete
 vertex(261,252);
 vertex(260,245);
 vertex(258,227);
 vertex(253,209);
 vertex(250,202);
 vertex(245,190);
 endShape(CLOSE);
 
//***************tobera nave***********
fill(#f9805d);
beginShape();
 vertex(218,280);
 vertex(234,283);
 vertex(247,283);
 vertex(261,280);
 vertex(263,285);
 vertex(261,290);
 vertex(247,294);
 vertex(234,294);
 vertex(217,291);
 vertex(215,283);
 endShape(CLOSE);
//*****sombras nave********
 
//**************alas nave ******

   beginShape();
  vertex(259, 237);
  vertex(260, 268);
  vertex(275, 279);
  vertex(280, 267);
  endShape(CLOSE);
  
//**********lineas nave*******
fill(#fbe29c);
strokeWeight(1);
stroke(80);
ellipse(238,188,10,5);
stroke(#ff9c22);
smooth(4);
strokeWeight(2);
line(235,189,241,189);
stroke(100);
strokeWeight(2);
noFill();
bezier(227,207,230,211,248,211,251,206);
bezier(218,251,228,262,251,262,260,251);
bezier(218,271,228,281,251,281,260,271);
strokeWeight(2);
bezier(219,278,228,287,251,287,260,278);
stroke(#8a3624);
strokeWeight(7);
bezier(218,291,228,299,251,299,261,291);
strokeWeight(2);
stroke(80);
bezier(232,189,215,230,218,250,218,291);//lateral
bezier(244,189,265,230,259,250,262,291);//lateral
//point(238,283);
//***********pata izq nave *************
stroke(60);
strokeWeight(2);
fill(#b83dba);
rect(221,266,8,16,3,3,3,3);
strokeWeight(1);
fill(#bac3be);

beginShape();
vertex(222,268);
vertex(202,292);
vertex(213,293);
vertex(215,286);
vertex(227,269);
vertex(225,268);
endShape(CLOSE);

fill(#818d81);
beginShape();
vertex(227,269);
vertex(215,286);
vertex(213,293);
vertex(216,304);
vertex(220,314);
vertex(219,294);
vertex(227,278);
endShape(CLOSE);


fill(#a0aaa0);
beginShape();
vertex(213,293);
vertex(216,304);
vertex(220,315);
vertex(214,315);
vertex(202,295);
vertex(202,292);
endShape(CLOSE);

strokeWeight(3);
stroke(#daead8);
line(212,307,209,301);
strokeWeight(2);
point(206,297);

strokeWeight(0);
fill(#daead8);
beginShape();
vertex(204,291);
vertex(211,292);
vertex(213,288);
vertex(208,287);
endShape(CLOSE);

//**********pata derecha nave********
stroke(60);
strokeWeight(2);
fill(#b83dba);
rect(250,266,8,16,4,4,4,4);

stroke(60);
strokeWeight(1);
fill(#bac3be);

beginShape();
vertex(251,269);
vertex(264,286);
vertex(266,294);
vertex(275,291);
vertex(271,284);
vertex(256,268);
endShape(CLOSE);


fill(#818d81);
beginShape();
vertex(251,269);
vertex(264,286);
vertex(266,294);
vertex(259,314);
vertex(259,296);
vertex(251,274);
vertex(251,279);
endShape(CLOSE);

fill(#a0aaa0);
beginShape();
vertex(266,294);
vertex(259,315);
vertex(264,314);
vertex(274,297);
vertex(275,292);
vertex(266,294);
endShape(CLOSE);

strokeWeight(3);
stroke(#daead8);
line(270,300,267,306);
strokeWeight(2);
point(272,296);

strokeWeight(0);
fill(#daead8);
beginShape();
vertex(266,287);
vertex(267,293);
vertex(274,291);
vertex(270,285);
vertex(266,287);
endShape(CLOSE);

//****************ventana**********
strokeWeight(1);
stroke(#0f3e67);
fill(#337fb4);
ellipse(238,238,22,22);
stroke(#6b9dd3);
strokeWeight(2);
point(242,232);
strokeWeight(3);
bezier(243,235,244,235,244,239,244,239);
noFill();
strokeWeight(2);
stroke(205);
ellipse(238,238,24,24);
stroke(#0f3e67);
ellipse(238,238,27,27);
