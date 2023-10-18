Bacteria[] bob;
 //declare bacteria variables here  
 void setup()  
 {    
   size(500,500);
   bob = new Bacteria[100];
   for(int i = 0; i < bob.length; i++){
     bob[i] = new Bacteria();
   }
 }
 void draw()  
 {    
   background(0);
   for(int i = 0; i < bob.length; i++){
   bob[i].show();
   bob[i].walk();
   }  
 }
 class Bacteria    
 {
   int myX, myY, myColor;
   Bacteria()
   {
     myX = (int)(Math.random()*500)+1;
     myY = (int)(Math.random()*500)+1;
     myColor = color(255,0,0);
 }
 void walk(){
   if(mouseX > myX){
     myX = myX + (int)(Math.random()*6)-2;
     myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   }
     else if(mouseX < myX){
      myX = myX + (int)(Math.random()*-6)+2;
      myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
     }
      else{
     myX = myX + (int)(Math.random()*10)-5;
     myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      }
    if(mouseY > myY){
     myY = myY + (int)(Math.random()*6)-2;
     myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    }
     else if(mouseY < myY){
      myY = myY + (int)(Math.random()*-6)+2;
      myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
     }
      else{
        myY = myY + (int)(Math.random()*10)-5;
        myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      }
     
   }
  void show(){
    fill(myColor);
    ellipse(myX,myY,15,15);
  }
 Bacteria(int x, int y){
   myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   myX = x;
   myY = y;
   }
 }


