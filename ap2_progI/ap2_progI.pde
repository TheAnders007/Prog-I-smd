int[][] M = new int[10][10];
int contRed = 0;

void setup(){
  size(500, 500); 
  ellipseMode(CORNER);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  
  for (int i = 0; i < 10; i++){
     for (int j = 0; j < 10; j++){
        M[i][j] = int(random(0, 360));
        if(M[i][j] < 30) contRed+=1;
     }
  }
  println(contRed);
}

void draw(){
  background(100, 0, 20);
  for (int l = 0; l < 10; l++){
    for (int c = 0; c < 10; c++){
       fill(M[l][c], 100, 100);
       if (l % 2 == 1 && c % 2 == 0) semiArcos(c * 50, l * 50, 50, 0);
       else if (l % 2 == 1 && c % 2 == 1) semiArcos(c * 50, l * 50, 50, 1);
       else if (l % 2 == 0 && c % 2 == 0) semiArcos(c * 50, l * 50, 50, 2);
       else if (l % 2 == 0 && c % 2 == 1) semiArcos(c * 50, l * 50, 50, 3);
    }
  }
}

void semiArcos(int x, int y, int t, int p){
   if (p == 0) arc(x - t, y - t, t*2, t*2, 0, HALF_PI);
   else if (p == 1) arc(x, y - t, t*2, t*2, HALF_PI, PI);
   else if (p == 2) arc(x, y, t*2, t*2, PI, radians(270));
   else if (p == 3) arc(x - t, y, t*2, t*2, radians(270), TWO_PI);
}
