int h;

void setup (){
  size(300, 300);
  colorMode(HSB, 360, 100, 100);
  h = int(random(0, 360));
}

void draw(){
  fill(h, 100, 100);
  ellipse(50, 150, 100, 100);
  if (h <= 240) fill(h + 120, 100, 100);
  else fill(120 - 360 + h, 100, 100);
  ellipse(150, 150, 100, 100); 
  if (h <= 120) fill(h + 240, 100, 100);
  else fill(240 - 360 + h, 100, 100);
  ellipse(250, 150, 100, 100); 
}

void mousePressed(){
  h = int(random(0, 360));
}
