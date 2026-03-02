/*

Programação orientada a objeto
Herança e construtor
02/03/2026
*/

// Classe Mae

class Animal{
  String nome;
  int idade;
  // Cria o construtor
  Animal(this.nome, this.idade);


  // Cria o metodo 
  void dormir(){
    print('O animal $nome está dormindo');
  }
}


// Cria a classe filha

class Cachorro extends Animal{

  // Cria o construtor da classe filha
  Cachorro(nome,idade):super(nome,idade);

  void latir(){
    print('O animal $nome está latindo');
  }
}

class Tigre extends Animal{
  String cor;
  Tigre(nome,idade,this.cor):super(nome,idade);


  void atacar(){
    print('O animal Tigre $nome atacou');
  }
}

void main(){

  // Cria o objeto Rocky a partir da classe Cachorro
  Cachorro Rocky = Cachorro("Rocky", 3);
  Rocky.latir();
  print('O animal ${Rocky.nome} tem ${Rocky.idade} anos');
  Rocky.nome='Creed';
  Rocky.idade=5;
  print('O animal ${Rocky.nome} tem ${Rocky.idade} anos');

  Tigre Memphis = Tigre("Memphis",30,"Branco");
  Memphis.atacar();
}