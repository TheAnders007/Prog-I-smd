int posX = 10;

void setup(){
  size(300, 300);
  textAlign(CENTER);
}

void draw(){
  background(120);
  
  if(posX < width - 10){ 
    ellipse(posX, height/2, 20, 20);
    posX+=1;
  } else {
    text("VENCEDOR!",  width/2, height/2);
  }
}

void keyPressed(){
  if (keyCode == 32){
    posX = 0;
  }
} 
