class Veiculo{
  #marca;
  #modelo;
  #anoFabricacao;
  #velocidadeAtual;
  constructor(marca, modelo, anoFabricacao){
    this.marca = marca;
    this.modelo = modelo;
    this.anoFabricacao = anoFabricacao
    this.velocidadeAtual = 0;
  }

  get marca (){
    return this.#marca;
  }

  set marca(valor){
    if(valor.trim() != '') {this.#marca = valor;}
    else console.log("Marca não pode ser vazio!")
  }
    
  get modelo (){
    return this.#modelo;
  }
    
  set modelo(valor){
    if(valor.trim() != '') {this.#modelo = valor}
    else console.log("Modelo não pode ser vazio!")
  }
    
  get anoFabricacao(){
    return this.#anoFabricacao;
  }
    
  set anoFabricacao(valor){
    if(typeof(valor) == 'number') {this.#anoFabricacao = valor}
    else console.log("Ano de Fabricação deve ser um número!")
  }
    
  get velocidadeAtual(){
    return this.#velocidadeAtual;
  }
    
  set velocidadeAtual(valor){
    if (valor >= 0) {this.#velocidadeAtual = valor}
    else console.log("Valor da velocidade deve ser no mínimo 0!")
  }
    
    
  acelerar(valor){
    this.velocidadeAtual = this.velocidadeAtual + valor;
  }
    
  frear(valor){
    this.velocidadeAtual = this.velocidadeAtual - valor;
    if (this.velocidadeAtual < 0) {
        this.velocidadeAtual = 0;
    }
  }
}


    
    
    
class Carro extends Veiculo{
  #nivelCombustivel;
  constructor(marca, modelo, anoFabricacao, nivelCombustivel){
    super(marca, modelo, anoFabricacao);
    this.nivelCombustivel = nivelCombustivel
  }
    
  get nivelCombustivel(){
    return this.#nivelCombustivel;
  }
    
  set nivelCombustivel(valor){
    if (valor >= 0 && valor<=100) {
        this.#nivelCombustivel = valor;
    }
    else console.log("Nível do Combustível deve estar entre 0 e 100!")
  }
    
  abastecer(litros){
    this.nivelCombustivel = this.nivelCombustivel + litros;
    if (this.nivelCombustivel > 100) {
       this.nivelCombustivel = 100;
       console.log("Nível de Combustível chegou ao limite!")
    }
  }
    
  viajar(km){
    if (this.nivelCombustivel >= km/10) {
       this.nivelCombustivel = this.nivelCombustivel - km/10;
    }
    else console.log("Não há combustível suficiente para a viagem!")
  }
}



    
    
    
class Caminhao extends Veiculo{
  #capacidadeCarga;
  #cargaAtual;
  constructor(marca, modelo, anoFabricacao, capacidadeCarga, cargaAtual){
    super(marca, modelo, anoFabricacao);
    this.capacidadeCarga = capacidadeCarga;
    this.cargaAtual = cargaAtual;
  }
    
  get capacidadeCarga(){
    return this.#capacidadeCarga;
  }
    
  set capacidadeCarga(valor){
    if (valor >= 0) {
      this.#capacidadeCarga = valor
    }
    else console.log("Capacidade de Carga deve ser no mínimo 0!")
  }
    
    
  get cargaAtual(){
    return this.#cargaAtual;
  }
    
  set cargaAtual(valor){
    if (valor >= 0) {
      this.#cargaAtual = valor
    }
    else console.log("Valor de Carga deve ser no mínimo 0!")
  }
    
  carregar(peso){
    if(this.cargaAtual + peso <= this.capacidadeCarga) {
      this.cargaAtual = this.cargaAtual + peso; 
      console.log("Peso Carregado!")
    }
    else console.log("Não é possível carregar o peso pois excederia a carga máxima!")
  }
    
  descarregar(peso){
    if (peso < 0) {console.log("Peso deve ser positivo!")}
    else {
      this.cargaAtual = this.cargaAtual - peso;
      if (this.cargaAtual < 0) {
        this.cargaAtual = 0;
      }
    }
  }
}


let veic1 = new Carro("Chevrolet", 'Onix', 2014, 20)
let veic2 = new Caminhao("Mercedes", 'Delivery', 2020, 80, 20)

veic1.acelerar(5)
veic2.acelerar(9)
    
console.log(`Velocidade do Carro: ${veic1.velocidadeAtual} | Velocidade do Caminhão: ${veic2.velocidadeAtual}`)
    
veic1.abastecer(20)
veic1.viajar(50)
    
console.log(`Nível de Combustível do Carro: ${veic1.nivelCombustivel}`)
    
veic2.carregar(30)
veic2.carregar(85)
    
console.log(`Nível de Carga do Caminhão: ${veic2.cargaAtual}`)
    
veic1.frear(3)
veic2.frear(2)
    
console.log(`Velocidade do Carro: ${veic1.velocidadeAtual} | Velocidade do Caminhão: ${veic2.velocidadeAtual}`)

