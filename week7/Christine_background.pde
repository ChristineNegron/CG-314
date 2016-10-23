streets street;
void setup() {
  size(800, 600); 
  street= new streets();
}

void draw() {
  background(26,51,22); 
  for (int h=17; h<height; h+=151) {
    street.roads(h);
  }
  
for(float x=0;x<width;x+=162)
for(float y=87;y<width;y+=142){
  street.tree(y,17,x,77);
}
}