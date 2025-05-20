void setup(){
  size(500, 500);
}

void draw(){
  if ((mouseX < width/2) && (mouseY < height/2)){
     println("NO"); 
  }
  else if((mouseX > width/2) && (mouseY < height/2)){
     println("NE"); 
  }
  else if(mouseX < width/2 && mouseY > height/2){
     println("SO"); 
  }
  else if(mouseX > width/2 && mouseY > height/2){
     println("SE"); 
  }
}
  
