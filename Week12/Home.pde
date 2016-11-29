float x, y, z;
float rotationy ;
float rotationx ;
float speed=10;


void setup(){
   size(800, 600, P3D); 
   x = width/2;
   y = height/2;
   z = 0;
}

void draw(){



  background(0);
    

  
pushMatrix();
  translate(x, y, z);
  noFill();
    rotateY(rotationy);
    rotationy++;
     rotateX(rotationx);
    rotationx=0;
  stroke(255);
sphereDetail(25);
  sphere(255);

  if(keyPressed){
 
      if (keyCode==LEFT){
   rotationx+=1; 
    
  }
    
  
  if (keyCode==UP){
   rotationy+=10; 
    
  }
  
  }
  popMatrix();



}