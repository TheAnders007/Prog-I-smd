size(600, 600);
colorMode(HSB, 360, 100, 100);
noStroke();

for (int i = 15; i > 0; i--){
    fill(220, 100, 100 - i * (100/15));
    ellipse(width/2, height/2, i * width/15, i * width/15);
}
