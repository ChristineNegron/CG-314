int toolSelect=0;
float yellow=255;
float blue=255;
float red=255;

void setup() {
  size(800, 600);
  background(34, 212, 30);
}


void kcolor() {
  noStroke();
  fill(red, yellow, blue);
  if (keyPressed) {

    //Changing the color red
    if (key =='r') {
      red=red-3;
    } else if (key=='R') {
      red=red+3;
    }

    //Changing the color Yellow
    if (key =='y') {
      yellow=yellow-3;
    } else if (key=='Y') {
      yellow=yellow+3;
    }


    //Changing the color Blue
    if (key =='b') {
      blue=blue-3;
    } else if (key=='B') {
      blue=blue+3;
    }

    //changing to black

    if (key =='k') {
      yellow=0;
      blue=0;
      red=0;
    }
  }
}




void draw() {



  kcolor();
stroke(2);
  //Displaying the shapes
  fill(red, yellow, blue);
  rect(5, 124, 90, 50);
  ellipse(51, 219, 50, 50);
  rect(26, 64, 50, 50);




  //Rectangle sectiom
  if (mouseX>5&& mouseX<80&&mouseY>93&&mouseY>124+-50) {
    toolSelect=1;
  }

  //Ellipse section
  if (mouseX>4&& mouseX<51+54&&mouseY>174&&mouseY<219+50) {
    toolSelect=2;
  }

  //square section
  //having trouble with selecting square
  if (mouseX>26&& mouseX<66&&mouseY<74&&mouseY>91) {
    toolSelect=3;
  }




  //attaching rectangle to mouse when Pressed
  if (mousePressed){
    noStroke();
    fill(red, yellow, blue);
    if (toolSelect==1) {
      rect(mouseX-45, mouseY-25, 90, 50);
    }

    //attaching Ellipse to mouse when Pressed
    if (toolSelect==2) {
      ellipse(mouseX, mouseY, 50, 50);
    }
    //attaching Square to mouse when Pressed
    if (toolSelect==3) {
      rect(mouseX-45, mouseY-25, 50, 50);
    }
  }


  if (keyPressed) {
    if (key =='h') {
      background(34, 212, 30);
    }
  }
    //Displaying the shapes
    stroke(1);
    fill(243, 254, 243);
    rect(0,0,126,311);
    stroke(2);
  fill(red, yellow, blue);
  rect(5, 124, 90, 50);
  ellipse(51, 219, 50, 50);
  rect(26, 64, 50, 50);

}