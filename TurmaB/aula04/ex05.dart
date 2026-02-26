/*
Programação orientada a objeto conceito de herança
26/02/2026
*/

// Classe mae
class Animal{
  String ? nome;
  int? idade;

  void dormir(){
    print('O animal ${nome} esta dormindo');
  }
}


// Cria classe filha
class Cachorro extends Animal{
  void latir(){
    print('O animal ${nome} está latindo');
  }
}

// Cria classe filha
class Tigre extends Animal{
  String ? cor;
  void atacar(){
    print('O animal Tigre $nome atacou');
  }
}

void main(){
  // Cria objeto Rocky a partir da classe cachorro
   Cachorro Rocky = Cachorro();
   Rocky.nome="Rocky";
   Rocky.idade=3;
   Rocky.latir();
   Rocky.dormir();

   Tigre Memphis = Tigre();
   Memphis.nome='Memphis';
   Memphis.cor = "Branco";
   Memphis.idade = 30;
   Memphis.atacar();

}