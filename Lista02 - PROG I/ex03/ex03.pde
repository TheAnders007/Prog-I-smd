int d;

void setup(){
   size(700, 400); 
   noStroke();
}

void draw(){
   if (width < height) d = width;
   else d = height;
   
   fill(255, 0, 0);
   ellipse(width/2, height/2, d, d); 
   fill(0, 255, 0);
   ellipse(width/2, height/2, d/100 * 66, d/100 * 66); 
   fill(0, 0, 255);
   ellipse(width/2, height/2, d * 33/100, d * 33/100); 
}
