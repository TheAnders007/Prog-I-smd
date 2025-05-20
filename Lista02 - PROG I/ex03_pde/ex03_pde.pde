void setup(){
   size(1000, 1000); 
   noStroke();
   println(width * 0.34/2, height * 0.34/2,width/2 * 0.67, height/2 * 0.67);
}

void draw(){
   fill(255, 0, 0);
   rect(0, 0, width, height); 
   fill(0, 255, 0);
   rect(width * 0.33/2, height * 0.33/2, width/100 * 66, height/100 * 66); 
   fill(0, 0, 255);
   rect(width/2 * 0.67, height/2 * 0.67, width * 33/100, height * 33/100); 
}
