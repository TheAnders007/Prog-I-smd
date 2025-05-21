void setup(){
  size(300, 300);
}

void draw(){
  rect(100, 100, 100, 100);
  if (mouseX > 100 && mouseY > 100 && mouseX < 200 && mouseY < 200) {
    println("DENTRO"); 
  } else {
    println("FORA");
  }
}

//O programa não está funcionando de maneira coerente tendo em vista que está sendo
//utilizado o operador OU, que ao invés de restringir mais, está ampliando as condições.
