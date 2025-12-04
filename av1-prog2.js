//Questão 01

let car1;
let camin1;

class Veiculo{
  #marca;
  #modelo;
  #anoFabricacao;
  #velocidadeAtual;

  constructor(marca, modelo, anoFabricacao, velocidadeAtual = 0){
    this.#marca = marca;
    this.#modelo = modelo;
    this.#anoFabricacao = anoFabricacao;
    this.#velocidadeAtual = velocidadeAtual;
  }

  get getMarca(){
    return this.#marca;
  }

  get getModelo(){
    return this.#modelo;
  }

  get getAnoFabricacao(){
    return this.#anoFabricacao
  }

  get getVelocidadeAtual(){
    return this.#velocidadeAtual
  }

  set setMarca(x){
    if(x.trim() != '') {
      this.#marca = x
    }
    else {
      console.log("O Valor de marca não pode ser vazio!")
    }
  }

  set setModelo(x){
    if(x.trim() == '') {
      this.#modelo = x
    }
    else {
      console.log("O Valor de modelo não pode ser vazio!")
    }
  }

  set setAnoFabricacao(x){
    if(typeof(x) == 'number') {
      this.#anoFabricacao = x
    }
    else {
      console.log("O Valor do Ano de Fabricação deve ser um número!")
    }
  }

  set setVelocidadeAtual(x){
    if(x >= 0) {
      this.#velocidadeAtual = x
    }
    else {
      console.log("O Valor da Velocidade Atual deve ser no mínimo 0!")
    }
  }

  acelerar(valor){
    this.setVelocidadeAtual = this.getVelocidadeAtual + valor
  }

  frear(valor){
    this.setVelocidadeAtual = this.getVelocidadeAtual - valor
    if (this.getVelocidadeAtual < 0) this.setVelocidadeAtual = 0
  }
}



class Carro extends Veiculo {
  #nivelcombustivel;
  constructor(marca, modelo, anoFabricacao, velocidadeAtual = 0, nivelCombustivel){
    super(marca, modelo, anoFabricacao, velocidadeAtual, nivelCombustivel);
    this.#nivelcombustivel = nivelCombustivel;
  }

  get getNivelCombustivel(){
    return this.#nivelcombustivel;
  }

  set setNivelCombustivel(valor){
    if (this.#nivelcombustivel >= 0 && this.#nivelcombustivel <= 100) {
       this.#nivelcombustivel = valor; 
    }
    else{
       console.log("Nível de Combustível deve ser entre 0 e 100.")
    }
  }

  abastecer(litros){
    if(this.getNivelCombustivel < 100) this.setNivelCombustivel = this.getNivelCombustivel + litros
    
    if(this.getNivelCombustivel > 100) {
      this.setNivelCombustivel = 100
      console.log("Nível de Combustível chegou ao máximo!") 
    }
  }

  viajar(km){
    if (this.getNivelCombustivel > 0 && km <= this.getNivelCombustivel) {
      this.setNivelCombustivel = this.getNivelCombustivel - km/10
    }
    
    else console.log("Não há combustível para viagem!!")
  }
}


class Caminhao extends Veiculo{
  #capacidadeCarga;
  #cargaAtual;
  constructor(marca, modelo, anoFabricacao, velocidadeAtual = 0, capacidadeCarga, cargaAtual){
    super(marca, modelo, anoFabricacao, velocidadeAtual, capacidadeCarga, cargaAtual);
    this.#capacidadeCarga = capacidadeCarga;
    this.#cargaAtual = cargaAtual;
  }
  
  get getCapacidadeCarga(){
    return this.#capacidadeCarga;
  }

  set setCapacidadeCarga(valor){
    if (this.#capacidadeCarga >= 0) {
       this.#capacidadeCarga = valor; 
    }
    else{
       console.log("Capacidade de Carga deve ser no mínimo 0!")
    }
  }

  get getCargaAtual(){
    return this.#cargaAtual;
  }

  set setCargaAtual(valor){
    if (this.#cargaAtual >= 0) {
       this.#cargaAtual = valor; 
    }
    else{
       console.log("Carga Atual deve ser no mínimo 0!")
    }
  }

  carregar(peso){
    if (this.getCargaAtual + peso <= this.getCapacidadeCarga){
      this.setCargaAtual = this.getCargaAtual + peso
      console.log("O peso foi adicionado!")
    }
    else{
      console.log("O peso não foi adicionado devido ao limite de carga!")
    }
  }

  descarregar(peso){
    if (this.getCargaAtual - peso >= 0){
      setCargaAtual = this.getCargaAtual - peso
    }
    else {
      console.log("O peso inserido para ser retirado ultrapassa a carga atual!")
    }
  }
}



car1 = new Carro('Chevrolet', 'Onix', 2014, 90, 80)
cam1 = new Caminhao('Star', 'Americano', 2020, 100, 20, 2)

car1.acelerar(20)
console.log("Nova Velocidade do Carro: " + car1.getVelocidadeAtual)

cam1.acelerar(25)
console.log("Nova Velocidade do Caminhão: " + cam1.getVelocidadeAtual)
            
car1.abastecer(5) 
console.log("Nível de Combustível (Carro): " + car1.getNivelCombustivel)

car1.viajar(10)
console.log("Nível de Combustível (Carro): " + car1.getNivelCombustivel)

cam1.carregar(6)
console.log("Nível de Carga (Caminhão): " + cam1.getCargaAtual)

cam1.carregar(20)
console.log("Nível de Carga (Caminhão): " + cam1.getCargaAtual)


car1.frear(20)
console.log("Nova Velocidade do Carro: " + car1.getVelocidadeAtual)

cam1.frear(25)
console.log("Nova Velocidade do Caminhão: " + cam1.getVelocidadeAtual)



console.log("\n\n\n")




//------------------------------------------------------------------------------------

//Questão 02

notas = [1, 2, 3, 4, 5, 6, 7, 8]


function media(array){
  let soma = 0;
  for (nota of array){
    soma += nota;
  }
  return soma/array.length;
}

function aumenta05(array){
  novoArray = array.map(function(nota){ 
     if(nota <= 9.5){
       return nota + 0.5
     } else {
       return parseInt(nota + 10 - nota)
     }
  })
  return novoArray
}

function trocarNota(array, valor){
  array.shift(array[0])
  array.unshift(valor)
}

function listarNotas(array){
  contador = 0
  for (nota of array){
    console.log(`Nota do Aluno (${contador}): ${nota}`)
    contador++
  }
}

console.log("Média de Notas: " + media(notas))
console.log("Notas + Aumento de 0.5: " + aumenta05(notas))
trocarNota(notas, 9.5)

console.log("Primeira Nota Alterada: " + notas)

listarNotas(notas)



















