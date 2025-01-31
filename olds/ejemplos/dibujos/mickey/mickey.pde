//EDUARDO CHARLONE 
//2020
//DIBUJO DEL RATON MICKEY



size(599,545);

background(255);
//

//COLITA
stroke(0);
noFill();
strokeWeight(2);
bezier(80,387,96,459,205,432,291,353);
bezier(80,387,96,459,205,432,293,354);
bezier(80,387,96,459,205,432,293,355);
  
//********************zapatos*******************
  
  fill(#fdc13d);
  stroke(0);
  strokeWeight(0);
  beginShape();
    vertex(219,428);
    vertex(169,534);
    vertex(214,537);
    vertex(288,434);
  endShape(CLOSE);
  
    beginShape();
    vertex(286,430);
    vertex(294,489);
    vertex(408,483);
    vertex(437,482);
    vertex(412,402);
  endShape(CLOSE);
  
  strokeWeight(3);
  bezier(344,440,324,451,248,434,308,405); 
  bezier(360,414,426,368,503,427,438,479); 
  bezier(344,404,373,414,361,437,341,441);  
  bezier(438,479,411,496,355,508,292,489);  
  bezier(291,434,314,516,237,557,168,537); 
  bezier(169,537,98,504,114,457,223,424); 
  bezier(188,452,215,456,240,462,261,475); 
  bezier(249,405,165,447,322,465,288,407); 
  
//***********patitas********
 fill(0);
 beginShape(); 
  vertex(281,355);
  vertex(243,418);
  vertex(248,424);
  vertex(258,425);
  vertex(269,424);
  vertex(277,420);
  vertex(283,416);
  vertex(308,367);
  vertex(293,362);
 endShape(CLOSE);
 
 beginShape();
  vertex(351,365);
  vertex(369,360);
  vertex(351,388);
  vertex(339,418);
  vertex(325,423);
  vertex(314,422);
  vertex(304,417);
  vertex(312,399);
  vertex(322,383);
  vertex(330,370);
  vertex(343,367);
 endShape();
 noFill();
  
  stroke(0);
  strokeWeight(3);
  bezier(371,360,352,381,344,397,339,418); 
  bezier(303,416,307,402,312,393,330,368);
  bezier(303,416,306,425,326,429,339,418); 
  bezier(243,419,250,430,262,430,281,419); 
  bezier(279,353,270,380,258,395,242,417); 
  bezier(308,368,296,388,291,398,281,418);

  //****************cabeza*************
  fill(0);
  stroke(0);
  strokeWeight(1);
  bezier(192,236,62,127,244,17,298,112);
  //*********brazo derecho ***************
  
  beginShape();
  vertex(330,214);
  vertex(398,106);
  vertex(396,97);
  vertex(393,90);
  vertex(387,85);
  vertex(376,83);
  vertex(367,86);
  vertex(361,94);
  vertex(343,123);
  vertex(311,209);
  endShape(CLOSE);
 
  
//**********brazo izquierdo **************
  fill(0);
  stroke(0);
  strokeWeight(0);
beginShape();
vertex(245,231);
vertex(123,196);
vertex(125,206);
vertex(127,216);
vertex(123,230);
vertex(113,240);
vertex(257,262);
endShape(CLOSE);
beginShape();
vertex(142,242);
vertex(108,238);
vertex(98,254);
vertex(120,253);
endShape(CLOSE);

stroke(0);
strokeWeight(4);
line(126,195,188,214);

//*********************panza *********

stroke(0);
strokeWeight(1);
beginShape();
vertex(241,229);
vertex(247,233);
vertex(254,239);
vertex(263,242);
vertex(269,243);
vertex(279,243);
vertex(284,241);
vertex(292,235);
vertex(304,220);
vertex(309,209);
vertex(337,218);
vertex(347,224);
vertex(365,234);
vertex(349,232);
vertex(308,242);
vertex(336,250);
vertex(287,261);
vertex(282,273);
vertex(281,278);
vertex(270,269);
vertex(255,262);
vertex(239,257);


endShape(CLOSE);

//***********orejas*************
  fill(0);
  stroke(3);
  strokeWeight(2);
  bezier(175,32,110,1,65,102,114,128);
  bezier(173,31,212,57,188,144,113,128); 
  bezier(62,171,96,113,171,170,162,207); 
  bezier(98,253,113,266,141,254,145,241);


//*************cara y boca************
 
  fill(0);
  stroke(#fde2c4);
  strokeWeight(5);
  bezier(241,204,259,247,288,246,307,194);
  fill(#fde2c4);
  beginShape();
   vertex(285,135);
   vertex(324,182);
   vertex(235,192);
   vertex(233,198);
   vertex(244,211);
   vertex(255,227);
   vertex(243,230);
   vertex(191,216);
   vertex(239,164);
   vertex(184,105);
   vertex(248,87);
   vertex(294,106);
  endShape(CLOSE);
  stroke(0);
  strokeWeight(3);
 
  bezier(285,135,312,76,379,120,321,186); 
  bezier(193,217,183,186,212,167,241,165); 
  bezier(240,165,212,151,185,122,183,103);
  bezier(249,89,232,79,181,85,183,104);  
  bezier(250,89,228,66,291,89,300,113);
  bezier(234,191,248,207,290,222,322,185);
  strokeWeight(5);
  stroke(0);
   point(182,105);
   point(190,216);
   point(327,183);
   stroke(#fde2c4);
   point(295,112);
   
  fill(#fb8971);
  stroke(0);
  strokeWeight(3);
  bezier(242,208,261,246,284,237,292,221); //lengua
  bezier(245,209,255,208,265,210,271,226);//lengua
  bezier(267,217,274,214,285,212,292,222);//lengua
  point(267,214);
   strokeWeight(5);
  line(232,192,245,204);
  line(232,192,245,206);
  line(302,203,292,219);

 noFill();
  strokeWeight(3);
  bezier(219,205,222,195,234,188,245,185);//comisura
  bezier(230,193,248,206,254,249,283,231);
  bezier(305,200,295,215,287,235,276,234);
  
  stroke(#fde2c4);
  strokeWeight(6);
  bezier(310,202,285,255,255,246,240,216);//labio inferior
  noFill();
  stroke(0);
  strokeWeight(3);
  bezier(237,222,265,254,291,249,311,203);




//*****************NARIZ***************
  fill(0);
  stroke(0);
  strokeWeight(3);
  bezier(304,109,280,60,354,50,336,114);
  bezier(305,110,314,129,325,130,335,116);
  line(304,109,336,115);
  
  
//*************ojos**********
 
  fill(255);
  stroke(0);
  strokeWeight(3);
  bezier(253, 123, 222, 94, 237, 84, 267, 111); 
  bezier(253, 123, 272, 145, 299, 142, 265, 109); 
  bezier(288, 124, 256, 90, 271, 83, 295, 116);

  fill(0);
  bezier(256, 126, 252, 110, 285, 130, 272, 137); //pupila 
  bezier(283, 117, 280, 107, 298, 123, 289, 124); //pupila 
  noFill();
//************** MANOS *****************
stroke(0);
strokeWeight(3);
  bezier(369,28,334,-20,292,8,309,25);
  bezier(307,23,325,39,334,43,352,58);
  bezier(351,40,350,56,353,68,359,78);
  bezier(359,95,347,80,380,53,408,80);
  bezier(402,75,423,91,410,112,391,114);
  bezier(448,79,472,73,528,127,480,141);
  bezier(445,104,467,134,500,144,498,115);
  bezier(361,30,383,27,402,31,419,48);
  bezier(459,79,452,60,427,45,410,48);
  bezier(478,141,461,136,451,114,406,108);
  
  
  bezier(57,211,82,148,148,196,104,242);
  bezier(105,240,86,266,74,298,55,314);
  bezier(57,257,38,274,29,320,56,313);
  bezier(54,315,29,366,5,314,29,253);
  bezier(21,320,-12,289,29,199,19,180);
  bezier(26,184,-7,169,-3,123,26,120);
  bezier(26,120,48,131,28,167,89,181);
  
  
  noFill();
  stroke(255);
  strokeWeight(3);
   bezier(111,238,134,213,118,190,109,186);
   strokeWeight(5);
   bezier(113,188,128,194,133,220,113,235);


//************************PANTALONCITO************
 fill(#fc1922);
  strokeWeight(1);
  stroke(0);
  beginShape();
  vertex(273, 346);
  vertex(283, 359);
  vertex(293, 362);
  vertex(312, 369);
  vertex(326, 369);
  vertex(338, 366);
  vertex(354, 363);
  vertex(363, 363);
  vertex(371, 360);
  vertex(386, 353);
  vertex(401, 341);
  vertex(395, 326);
  vertex(392, 309);
  vertex(390, 295);
  vertex(391, 272);
  vertex(383, 255);
  vertex(375, 240);
 vertex(358, 232);
  vertex(339, 233);
  vertex(316, 238);
  vertex(300, 246);
  vertex(287, 259);
  vertex(278, 274);
  vertex(285, 288);
  vertex(287, 302);
  vertex(286, 314);
  endShape(CLOSE);
  
  
  
//******botones******
  fill(255);
  stroke(0);
  strokeWeight(3);
  bezier(324,271,333,301,362,294,352,261);
  bezier(324,272,317,246,339,235,352,262);  
  bezier(368,266,373,283,392,291,381,260);
  bezier(368,267,356,242,369,238,381,260);
  


//************CUERPITO BORDE*************
  noFill();
  stroke(0);
  strokeWeight(3); 
  bezier(273,344,295,292,310,257,144,240);  
  bezier(273,347,295,368,317,378,343,364);  
  bezier(343,365,363,365,383,361,400,340);  
  bezier(342,340,360,338,366,336,380,320);  
  line(341,365,351,341);
  bezier(401,339,393,318,397,328,391,297); 
  bezier(387,316,401,274,390,228,311,210); 
 bezier(279,274,290,243,327,229,364,232);
  bezier(397,106,368,147,353,164,330,214);
  
stroke(255);
strokeWeight(1);
line(128,203,191,218);
line(118,239,141,242);
line(157,200,163,209);
line(316,210,327,212);
stroke(#fde2c5);
strokeWeight(1);
line(315,194,310,209);
