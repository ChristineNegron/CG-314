//Christine Negron
//Press left or up to spin the white sphere
//the color spheres followthe mouse/when press sor W it changes the z distance

PShape jimmi;
float jimx=1;
float x, y, z;
float rotationy ;
float rotationx ;
float speed=10;
float  lz;
float lrotation=PI/48;


void setup(){
   size(800, 600, P3D); 
   x = width/2;
   y = height/2;
   z = 0;
   lz=0;
     jimmi = loadShape("jimmi.obj");
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
 //Will's part
 translate(width/2, height/2);
 rotate(PI);
  rotateY(jimx/PI);
  jimx+=.1;
  shape(jimmi, 0, -200, 300, 400);



//Leo'spart
  pushMatrix();
  translate(mouseX, mouseY, lz);
  noFill();
  rotateX(lrotation/2);
  stroke(255, 0, 0);
  sphere(100);
  stroke(0, 255, 0);
   rotateX(lrotation/2);
   rotateY(lrotation/4);
  sphere(150);
  stroke(0, 100, 100);
  sphere(250);
  if (keyPressed) {
    if (key == 's') {
      lz+=10;
    }
    if (keyPressed) {
      if (key == 'w') {
        lz-=10;
      }
    }

    lrotation+= PI/48;
  }
  popMatrix();

}