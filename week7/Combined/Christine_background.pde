streets street;
Person player;


float px=width/2;
float py= 500;

void setup() {
  size(800, 600); 
  street= new streets();
  player= new Person(400,py,10,#B71A1A,150,#97B71A);
}

void draw() {
  background(26,51,22); 

  
  
  for (int h=17; h<height; h+=151) {
   
    street.roads(h);
  }
  
for(float tx=0;tx<width;tx+=162)
for(float ty=87;ty<width;ty+=142){
  street.tree(ty,17,tx,77);
}

//If person makes it across the street alive then it wins



  player.display();
  player.move();
if(player.y<0||player.y>height){
  
  
  textSize(40);
 text("You Survived", 200, height/2); 
  
}
}