import processing.sound.*;
SoundFile file;


ball player;
Enemy[] enemy = new Enemy [100];
float x;
float y;
float sizeball=30;
color ballcolor=#0021D1;
int life=5;
int score=0;
float growTitle=129;

void setup() {

  size(800, 600);
  player = new ball();
  x=width/2;
  y=height/2;
  //enemy=new enemy();

  for (int i = 0; i<enemy.length; i++) {
    float badx = random(-10000, 0);
    float bady = random(1, height);
    enemy[i] = new Enemy (badx, bady);
  }
  file = new SoundFile(this, "sample.mp3");
}






void draw() {



  background(100);
  player.display(x, y, sizeball, ballcolor);
  if (keyPressed) {
    if (keyCode==UP) {
      y-=10;
    }
    if (keyCode==DOWN) {

      y+=10;
    }
    if (keyCode==LEFT) {
      x-=10;
    }
    if (keyCode==RIGHT) {

      x+=10;
    }
  }

  for (int i = 0; i<enemy.length; i++) {
    enemy[i].display();

    if (y-15>enemy[i].y-30&&y+15<enemy[i].y+80&&x+15<enemy[i].x+80&&x-15>enemy[i].x-30) {
      //(x-15> enemy[i].x&&y+15> enemy[i].y&& y-15<enemy[i].y+50&&x+15<enemy[i].x+50)
      //if (enemy[i].x<x && enemy[i].x>x-45&&enemy[i].y>y-45&& enemy[i].y<y+45 && life>0) {
      life=life-1;
      file.play();
      if (enemy[i].x<800) {

        score=score+10;
      }
    }
  }

  text("Life", 30, 30);
  if (life<=0) {
    growTitle++;
    background(0);
    textSize(growTitle);
    text("LOSER!", 191, 306);
    life=0;
    if (growTitle>=170) {
      growTitle=170;
    }
  }

  if (score== 10*100) {
    background(0);
    textSize(growTitle);
    growTitle++;
    text("you WIN!", 191, 306);
    if (growTitle>=170) {
      growTitle=170;
    }
  }
}