int[]fourth;
int[]fifth;
int[]sixth;
int[]seventh;
int[]eigth;
void setup() {
  size(480, 120);
  Table stats;
  stats=loadTable("Donaldson.csv", "header");

  fourth=new int [stats.getRowCount()-2];
  fifth=new int [stats.getRowCount()-2];
  sixth=new int [stats.getRowCount()-2];
  seventh=new int [stats.getRowCount()-2];
  eigth=new int [stats.getRowCount()-2];
  for ( int i= 0; i<stats.getRowCount()-2; i++) {

    // int year= stats.getInt(i,0); 
    fourth[i]=stats.getInt(i, 4);
    fifth[i]=stats.getInt(i, 5);
    sixth[i]=stats.getInt(i, 6);
    seventh[i]=stats.getInt(i, 7);
    eigth[i]=stats.getInt(i, 8);
    //println (fifth[i]);
  }
}


void draw() {


  background(255);

  noFill();
  beginShape();
  for (int i=0; i<fourth.length; i++) {
    float x=map(i, 0, fourth.length-1, 20, 460);
    float y=map(fourth[i], 0, 130, 100, 20);
    fill(0);
    text(fourth[i], x, y-(-4));
    noFill();
    vertex(x, y);

    stroke(200);
    line(x, 0, x, height);
    stroke(255, 0, 0);
  }
  endShape();

  noFill();
  beginShape();
  for (int i=0; i<fifth.length; i++) {
    float x=map(i, 0, fifth.length-1, 20, 460);
    float y=map(fifth[i], 0, 130, 100, 20);
    fill(0);
    text(fifth[i], x, y+-3);
    noFill();
    stroke(200);
    line(x, 0, x, height);
    stroke(0, 255, 0);

    vertex(x, y);
  }
  endShape();


  noFill();
  beginShape();
  for (int i=0; i<sixth.length; i++) {
    float x=map(i, 0, sixth.length-1, 20, 460);
    float y=map(sixth[i], 0, 130, 100, 20);
    fill(0);
    text(sixth[i], x, y-(-8));
    noFill();
    stroke(200);
    line(x, 0, x, height);
    stroke(0, 90, 255);

    vertex(x, y);
  }
  endShape();

  noFill();
  beginShape();
  for (int i=0; i<seventh.length; i++) {
    float x=map(i, 0, seventh.length-1, 20, 460);
    float y=map(seventh[i], 0, 130, 100, 20);
    fill(0);
    text(seventh[i], x, y-(-13));
    noFill();
    stroke(200);
    line(x, 0, x, height);
    stroke(131, 173, 1);

    vertex(x, y);
  }
  endShape();



  noFill();
  beginShape();
  for (int i=0; i<eigth.length; i++) {
    float x=map(i, 0, eigth.length-1, 20, 460);
    float y=map(eigth[i], 0, 130, 100, 20);
    fill(0);
    text(eigth[i], x, y-(-4));
    noFill();
    stroke(200);
    line(x, 0, x, height);
    stroke(115, 0, 153);

    vertex(x, y);
  }
  endShape();
}