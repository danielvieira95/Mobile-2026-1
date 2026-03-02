/*
Exemplo 05 - Conceito de herança
02/03/2025
*/

// Classe mae

class Animal{
  String ? nome;
  int ? idade;

  void dormir(){
    print('O animal ${nome} esta dormindo');
  }
}

// Cria classe filha

class Cachorro extends Animal{
  void latir(){
    print('O animal $nome está latindo ');
  }
}

class Tigre extends Animal{
  String ? cor;
  void atacar(){
    print('O animal Tigre $nome atacou');
  }
}

void main(){
  // Cria o objeto Rocky a partir da classe Cachorro
  Cachorro Rocky = Cachorro();
  Rocky.nome='Rocky';
  Rocky.idade = 3;
  Rocky.latir();
  Rocky.dormir();

  // cria o objeto Mephis da classe Tigre
  Tigre Memphis = Tigre();
  Memphis.nome='Memphis';
  Memphis.cor='Branco';
  Memphis.idade=30;
  Memphis.atacar();
  Memphis.dormir();

}