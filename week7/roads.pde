//making the roads
class streets{
  
  


void roads(float tempy){
  
  //road 
  fill(150);
  rect(0,tempy,width,100);
  
  
  //road lines
    
  for(float i=0;i<width;i+=170){
    fill(255,229,5);
    rect(i,tempy+40,53,9);
  }
  
  
}




//trees
void tree(float treey,float treesize,float treex,float treeheight){

  noStroke();
  //trunk
  fill(85,27,4);
  rect(treex,treey,treesize,treeheight);
  fill(19,229,13);

    ellipse(treex+(treex/79),treey-(treey/35), treesize+(treesize*5),treesize+(treesize*4));

}
}