/*
Programação orientada a objeto
Herança e construtor
26/02/2026
*/
// Classe Mae
class Animal{

  String nome;
  int idade;
  // Cria o construtor
  Animal(this.nome,this.idade);

  // Cria o metodo
  void dormir(){
    print('O animal ${nome} está dormindo');
  }

}

// Classe filha

class Cachorro extends Animal{
  // Construtor da classe filha
  Cachorro(nome,idade):super(nome,idade);
  void latir(){
    print('O animal ${nome} está latindo');
  }
}

class Tigre extends Animal{
  Tigre(nome,idade,this.cor):super(nome,idade);
  String? cor;
  void atacar(){
    print("O animal Tigre $nome atacou");
  }
}

void main(){
  // Cria o objeto Rocky a partir da classe Cachorro
  Cachorro Rocky = Cachorro("Rocky", 3);
  Rocky.nome="Balboa";
  //Rocky.idade=3;
  Rocky.latir();

  Tigre Memphis = Tigre("Memphis", 30, "Branco");
  Memphis.atacar();
}