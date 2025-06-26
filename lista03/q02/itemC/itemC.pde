size(500, 200);

for (int i = 0; i < 10; i++){
   if (i % 3 == 0) fill(255, 0, 0);
   else if(i % 3 == 1) fill(0, 255, 0);
   else fill(0, 0, 255);
   ellipse(25 + i * 50, height/2, 25, 25);
}
