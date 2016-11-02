class Enemy{
  
  
  
  float x;
  float y;
 float speed= 10;
 
 Enemy(float tempX, float tempY){
   x = tempX;
   y = tempY;
 }
 void display(){
   x+=speed;
  rect(x,y,50,50); 
  
  
   
 
 }
  
}