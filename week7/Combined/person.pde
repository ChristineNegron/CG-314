class Person {
  
  
  float x;
  float y;
  float size;
  color theColorskin = color(242, 174,100);
  color theColorshirt = color(93, 13,160);
  color theColorpants = color(19,30,210);
 
  
   Person(float tempX, float tempY, float tempSize, color tempColorskin, color tempColorshirt , color tempColorpants){
     
     
     
    x = tempX;
    y = tempY;
  size = tempSize;
  theColorskin = tempColorskin;
  theColorshirt = tempColorshirt;
  theColorpants = tempColorpants;
  ///
  ///
  ///Israel
   ///
  ///
  ///
   ///
  ///
  ///
  
  
  
  
}
//CN editted move
void move (){
if(keyPressed){
 if(keyCode==UP){
   
  y-=10; 
   
 }
 
   if(keyCode==LEFT){
   
  x-=10; 
   
 }
   if(keyCode==RIGHT){
   
  x+=10; 
   
 }
}

}


void display (){
  
  
  noStroke ();
//strokeWeight(2);
//CN-I editted out RectMode since it was affecting the background
  //  rectMode (CENTER); 
  
  
fill(159, 39,193);

 
  rect(x, y+7, size/-0.6, size);
    
    //face
   
   fill(theColorskin);
   
     fill (255);
   ellipse(x, y/1.1, 100,100);
   
   //beak
    fill (242,181,56);
   triangle(x+15,y-60,x+17,y-25,x+71,y-27);
   
   //eye
   
    fill (0);
     ellipse(x-7, y/1.1, 20,20);
     
     noFill ();
     noStroke ();
     ellipse(x-16, y/1.5, 24,22);
     
     //arms
     
     fill(255);
     
    // triangle(x,y,x+40,y-50,x+100,y-50); // front
    // triangle(x,y,x-40,y+50,x-100,y+50); //back
      triangle(x,y,x+20,y+80,x-20,y+76); //mid
     
     //legs
     
     fill(theColorpants);
     
     triangle(x,y+70,x+20,y+107,x-20,y+108); //mid
     //triangle(x,y+90,x+100,y+220,x+80,y+250); //front
     //triangle(x,y+90,x-100,y+220,x-80,y+250); //back
         
}}