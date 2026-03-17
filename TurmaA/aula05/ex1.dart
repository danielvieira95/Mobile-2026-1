/*
Exemplo polimorfismo
16/03/2026
*/


// Cria a classe mae Animal

class Animal{
  void fazerSom(){
    print('O animal faz um som');

  }
}

// Cria a classe filha  

class Cachorro extends Animal{

  // polimorfismo

  @override

  void fazerSom(){
    print('O cachorro late Au au');
  }
}

// Cria a classe filha chamada gato

class Gato extends Animal{
  String nome;
  Gato(this.nome);
  @override
  void fazerSom() {
    print('O gato mia');
  }
}

void main(){
  Animal meuAnimal = Cachorro();

  meuAnimal.fazerSom();

  Animal Rocky = Animal();
  Rocky.fazerSom();

  Gato Garfield = Gato("Garfield");
  print('O nome do gato é ${Garfield.nome}');

  Garfield.fazerSom();
}