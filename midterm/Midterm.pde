//Christine_negron
//midterm







//declare
ball[] ballCollection = new ball[30];

   float yellow=200;
  float grow=120;

void setup() {

  size(600, 600);
  smooth();
  //initialize

  for (int i = 0; i<ballCollection.length; i++)
  {
    ballCollection[i] = new ball(random(0, width), random(0, 200));
  }
}


void draw() {

  background(0); 
  //ball functionality
  //backgrounder();
 
 

  grow++;
  if (grow==250){
    
   grow=120; 
  }
  
  for(int h=0;h<600;h+=63){
  fill(100,yellow,100);
  ellipse(h,h,33,29);
  noFill();
  stroke(255);
  ellipse(h,h,45,49);
  ellipse(h,h,101,103);
  ellipse(h,h,grow,grow);
  

}


  for (int i=0; i<ballCollection.length; i++) {
    ballCollection[i].run();
  }
  
  
  
}