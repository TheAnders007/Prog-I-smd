color fundo;

void setup(){
  size(500, 500);
  noStroke();
  fundo = color(255, 0, 0);
}

void draw(){
  background(fundo);
  square(width/2 - 25, height/2 - 25, 50);
  
  if (mouseX >= width/2 - 25 && mouseX <= width/2 + 25 && mouseY >= height/2 - 25 && mouseY <= height/2 + 25) {
    fundo = color(0, 255, 0); 
  }
  else if (mouseX >= width/2 - 55 && mouseX <= width/2 + 55 && mouseY >= height/2 - 55 && mouseY <= height/2 + 55){
    fundo = color(255, 255, 0); 
  }
  else{
    fundo = color(255, 0, 0); 
  }
}
