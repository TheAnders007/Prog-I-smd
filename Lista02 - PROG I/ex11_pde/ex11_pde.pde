int h;

void setup(){
  size(300, 300);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  
  h = int(random(0, 360));
}

void draw(){
  background(0);
  fill(h, 100, 100);
  rect(0, 125, 100, 50);
  if (h <= 210) fill (h + 150, 100, 100);
  else fill (150 - 360 + h, 100, 100);
  rect(100, 125, 100, 50);  
  if (h <= 150) fill (h + 210, 100, 100);
  else fill (210 - 360 + h, 100, 100);
  rect(200, 125, 100, 50);  
}
