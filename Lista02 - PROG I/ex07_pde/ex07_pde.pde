void setup(){
  size(500, 500);
}

void draw(){
  background(0);
  fill(200);
  rect(0, height/2 - 40, width, 80);
  
  if (mouseY >= height/2 - 40 && mouseY <= height/2 + 40){
    println("DENTRO"); 
  }
  else{
    println("FORA"); 
  }  
}
