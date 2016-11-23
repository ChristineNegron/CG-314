import processing.video.*;

Capture video;


void setup() {
  size(640, 480);
  video = new Capture(this, 640, 480);
  video.start();
}


void draw() {
  background(0);
  image(video, 0, 0);
  
  loadPixels();
video.loadPixels();


  for (int x = 0; x<width-1; x++){
    for (int y= 0; y<height-1; y++) {
      int theIndex = x + y * width;
      int theIndex2 = x + 1 + y * width;
      float b1 = brightness(video.pixels[theIndex]);
      float b2 = brightness(video.pixels[theIndex2]);
      float diff = abs(b1 - b2);
     

      pixels[theIndex] = color(diff*32,diff*0);
  
 pixels[theIndex] = color(diff*53,diff*13,-1,150);
 
 pixels[theIndex2] = color(diff*53,diff*13,-1,150);
      
    }
  }
updatePixels();
video.updatePixels();



}


void captureEvent(Capture video) {
  video.read();
}