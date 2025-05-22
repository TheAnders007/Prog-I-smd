int estado = 2;

void setup(){
  size(300, 500); 
  noStroke();
}

void draw(){
  background(120);
  
  if (estado == 2) fill(255, 0, 0);
  else fill(0);
  ellipse(width/2, 50, 100, 100);
  
  if (estado == 1) fill(255, 255, 0);
  else fill(0);
  ellipse(width/2, 250, 100, 100);
  
  if (estado == 0) fill(0, 255, 0);
  else fill(0);
  ellipse(width/2, 450, 100, 100);
}

void keyPressed(){
  if (keyCode == 40) {
    if (estado == 2) estado = 0;
    else estado+=1;
  }
}
