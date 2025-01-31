//LABERINTO
//EDUARDO CHARLONE

void setup()
{ 
  size(425,300);
 

  frameRate(1);
  
}

void draw() {

float ruta=0;
ruta=random(2);
 background(random(150,255));
strokeWeight(2);
  stroke(#0ed145);
  line(width/2,40,width/2,100);
  strokeWeight(6);
  fill(#0ed145);
  point(width/2,40);
  
//***************************nivel 1 derecha *********************
 if (ruta >=1){ //der 1 nivel
 
       strokeWeight(3);
       stroke(#883dba);
       fill(#883dba);
       text("1 D " ,265,95);
       line(width/2,100,315,100);
       line(315,100,315,150);
       strokeWeight(6);
       point(width/2,100);
       point(315,100);
       ruta=0;
       ruta=random(2);
 
 //***************************nivel 2 derecha/derecha *********************   
           if(ruta>=1) {
           
                strokeWeight(3);  
                stroke(#00a8f3);
                fill(#00a8f3);
                text("2 D/D " ,320,145);
                line(315,150,370,150);
                line(370,150,370,200);
                strokeWeight(6);
                point(315,150);
                point(370,150);
                point(370,200);   
                ruta=0;
                ruta=random(2);
                
                if (ruta>=1){
//***************************nivel 3 derecha/derecha/derecha *********************            
                    strokeWeight(3);  
                    stroke(#8cfffb);
                    fill(#8cfffb);
                    text("3-D/D/D" ,375,195);
                    text("H" ,405,255);
                    line(370,200,420,200);
                    line(420,200,420,250);
                    strokeWeight(6);
                    point(370,200);
                    point(420,200);
                    point(420,250);
                }
//***************************nivel 3 derecha/derecha/izquierda *********************                    
                else
                {                       
                       strokeWeight(3);  
                       stroke(#ffaec8);
                       fill(#ffaec8);
                       text("3-D/D/I" ,315,195);
                       text("G" ,320,255);
                       line(370,200,315,200);
                       line(315,200,315,250);
                       strokeWeight(6);
                       point(370,200);
                       point(315,200);
                       point(315,250);
                  
                }
                     
          }
                     
//***************************nivel 2 derecha/izquierda *********************     
 
           else
           {             
            strokeWeight(3);  
            stroke(#b83dba);
            fill(#b83dba);
            text("2 D/I " ,265,145);
            line(315,150,260,150);
            line(260,150,260,200);
            strokeWeight(6);
            point(315,150);
            point(260,150);
            point(260,200); 
            ruta=0;
            ruta=random(2);
            
 //***************************nivel 3 derecha/izquierda/derecha *********************            
               if(ruta>=1){             
                   strokeWeight(3);  
                   stroke(#b97a56);
                   fill(#b97a56);
                   text("3-D/I/D " ,265,195);
                   text("F" ,295,255);
                   line(310,200,260,200);
                   line(310,200,310,250);
                   strokeWeight(6);
                   point(310,200);
                   point(260,200);
                   point(310,250);
                   
            }
            
 //***************************nivel 3 derecha/izquierda/izquierda *********************            
            else {             
                      strokeWeight(3);  
                      stroke(#88001b);
                      fill(#88001b);
                      text("3-D/I/I " ,210,195);
                      text("E" ,215,255);
                      line(210,200,260,200);
                      line(210,200,210,250);
                      strokeWeight(6);
                      point(210,200);
                      point(260,200);
                      point(210,250);
              
            }
             
           }
           
  }
  //***************************nivel 1 izquierda *****************************  
else {                  
        
       strokeWeight(3);
       stroke(#ff7f27);
       fill(#ff7f27);
       text("1 I " ,130,95);
       line(width/2,100,100,100);
       line(100,100,100,150);
       strokeWeight(6);
       point(100,150);
       point(100,100);
       ruta=0;
       ruta=random(2);
       
       
 //***************************nivel 2 izquierda/derecha *****************************       
      
        if(ruta >=1){        
              strokeWeight(3);
              stroke(#88001b);
              fill(#88001b);
              text("2 I/D " ,110,145);
              line(100,150,155,150);
              line(155,150,155,200);
              strokeWeight(6);
              point(155,150);
              point(100,150);  
              ruta=0;
              ruta=random(2);
//***************************nivel 3 izquierda/derecha/derecha *********************              
              if(ruta>=1) {
                        
                   strokeWeight(3);  
                   stroke(#ec1c24);
                   fill(#ec1c24);
                   text("3-I/D/D" ,165,195);
                   text("D" ,190,255);
                   line(155,200,205,200);
                   line(205,200,205,250);
                   strokeWeight(6);
                   point(155,200);
                   point(205,200);
                   point(205,250);
              }
              
//***************************nivel 3 izquierda/derecha/izquierda *********************                      
              else{
                 
                         strokeWeight(3);  
                         stroke(#c4ff0e);
                         fill(#c4ff0e);
                         text("3-I/D/I" ,105,195);
                         text("C" ,115,255);
                         line(105,200,155,200);
                         line(105,200,105,250);
                         strokeWeight(6);
                         point(155,200);
                         point(105,200);
                         point(105,250);
               }
        }
//***************************nivel 2 izquierda/izquierda *****************************      
       
        else{               
            
               strokeWeight(3);
               stroke(#585858);
               fill(#585858);
               text("2 I/I " ,55,145);
               line(100,150,55,150);
               line(55,150,55,200);
               strokeWeight(6);
               point(55,150);
               point(100,150);   
               ruta=0;
               ruta=random(2);
 
 //***************************nivel 3 izquierda/izquierda/derecha *********************                                 
               if(ruta>=1){
                          
                     strokeWeight(3);  
                     stroke(#ffca18);
                     fill(#ffca18);
                     text("3-I/I/D" ,55,195);
                     text("B" ,85,255);
                     line(55,200,100,200);
                     line(100,200,100,250);
                     strokeWeight(6);
                     point(55,200);
                     point(100,200);
                     point(100,250);
                
               }
//***************************nivel 3 izquierda/izquierda/izquierda *********************               
               else{
                          
                      strokeWeight(3);  
                      stroke(#0ed145);
                      fill(#0ed145);
                      text("3-I/I/I" ,5,195);
                      text("A" ,10,255);
                      line(5,200,55,200);
                      line(5,200,5,250);
                      strokeWeight(6);
                      point(5,200);
                      point(55,200);
                      point(5,250);
               }
                              
        }
          
  }



}
