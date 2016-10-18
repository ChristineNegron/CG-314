class ball {
  //global varialble
  float x=0;
  float y=0;
  float speedx=5;
  float speedy=5;
  float green=random(50, 255);
  float sizer= random(20, 60);
  int score=0;
  float grow=0;
  float h=height;

  //constructor
  ball(float _x, float _y) {
    x=_x;
    y=_y;
  }

  void run() {
    display();
    move();
    bounce();
    gravity();
  }


  //functions


  void move() {
    x=x+speedx;
    y=y+ speedy;
  }

  void  bounce() {
    if (x>width||x<0) {
      speedx=-speedx;
    }

    if (y>height||y<0) {
      speedy=-speedy;
    }
  }

  void gravity() {
    speedy +=random(.2, .5);
  }

  void display() {
    fill(100, green, 100);
    ellipse(x, y, sizer, sizer);
  }
}