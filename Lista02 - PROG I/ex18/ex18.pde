int sat = 100;

void setup(){
  size(300, 300); 
  colorMode(HSB, 360, 100, 100);
}

void draw(){
  
  fill(150, sat, 100);
  rect(width/2 - 50, height/2 - 25, 100, 50); 
  
  if (mouseX > width/2 - 50 && mouseX < width/2 + 50 && mouseY > height/2 - 25 && mouseY < height/2 + 25) sat = 50;
  else sat = 100;
}

void mousePressed(){
  if (mouseX > width/2 - 50 && mouseX < width/2 + 50 && mouseY > height/2 - 25 && mouseY < height/2 + 25) background(random(0, 360), 100, 100);
  else background(0, 0, 50);
}
