/*
Aula 05 - Exemplo polimorfismo
05/03/2026
*/


// Cria a classe mae Animal
class Animal{
  void fazerSom(){
    print('O animal faz um som !');
  }
}

// Cria a classe filha
class Cachorro extends Animal{

  // polimorfismo
  @override
  void fazerSom() {
   print('O Cachorro late Au au');
  }
}

 // Cria a classe filha 
 class Gato extends Animal{
  @override
  void fazerSom() {
   print('O Gato mia');
  }
 }


 void main(){
  Animal meuAnimal = Cachorro();
  meuAnimal.fazerSom();

  Animal meuAnimal1 = Gato();
  meuAnimal1.fazerSom();
 }