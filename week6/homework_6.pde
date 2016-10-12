//Christine Negron Homework5
//using the keys to move the robot






float x;
float y;

float op=255;
float size=187;
float red=100;
float speedx=5;
float blue;
void setup() {
  background(255);


  size(600, 700);
  y=400;
  
}





void draw() {

background(255);

  red++;
   if(red==255){
   red=50;
   }

for(int x=81;x<840;x+=160)
for(int y=-136;y<833;y+=216){
  
   roboto(x, y, size, op,red,blue);
   blue=255;
 
}

if (mousePressed){
  scale(2);
roboto(x,y,size,op,red,blue);  
x= mouseX;
y= mouseY;

}




  //placing minibots
}
void roboto(float tempx, float tempy, float tempsize, float tempop, float tempred, float tempblue) {
 float speedx=5;
  tempx+=speedx;

  
  fill(tempred, 76, tempblue, tempop);
  noStroke();
  rect(tempx-83, tempy-115, tempsize-40, tempsize); 
  fill(0, 0, 0, tempop);
  rect(tempx-78, tempy-109, tempsize-67, tempsize-116); 
  fill(tempred, 253, tempblue, tempop);
  ellipse(tempx-48, tempy-79, tempsize-159, tempsize-166);
  ellipse(tempx-(-1), tempy-79, tempsize-159, tempsize-166);
  fill(tempred, 200, tempblue, tempop);
  rect(tempx-(-64), tempy-56, tempsize-140, tempsize-161);
  rect(tempx-(-85), tempy-105, tempsize-161, tempsize-112);
  rect(tempx-130, tempy-56, tempsize-140, tempsize-161);
  rect(tempx-131, tempy-106, tempsize-161, tempsize-111);
  fill(tempred, 69, tempblue, tempop);
}