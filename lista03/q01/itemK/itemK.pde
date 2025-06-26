int n = 3;
int qtdDiv = 0;

for (int i = 1; i <= n; i++){
  if (n%i == 0){
     if (i < n) print(i + ", ");
     else if (i == n) print(i + ".");
     qtdDiv+= 1;
  }
}

println("\nTotal de Divisores:", qtdDiv);

if (qtdDiv == 2) println(n, "é primo.");
else println(n, "não é primo");
