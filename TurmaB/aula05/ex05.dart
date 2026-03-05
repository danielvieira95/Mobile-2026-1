/*
Exemplo classe abstrata
05/03/2026
*/

// Cria classe abstrata

abstract class Alimentar{

  void separarIngredientes();
  void pegarTigela();
  void prepararComida();
}

// Classe Filha que implementa a classe abstrata alimentar
class Filha implements Alimentar{
  // Polimorfismo
  @override


  void separarIngredientes(){
    print('Ingredientes preparados');
  }


  @override 

  void pegarTigela(){
    print('Tigela pega');
  }

  @override
 void prepararComida(){
  print('Comida preparada');
 }
}

// Cria função principal
class Filho implements Alimentar{
  String? nome;

   // Polimorfismo
  @override


  void separarIngredientes(){
    print('Ingredientes preparados para o dog ${this.nome} ');
  }


  @override 

  void pegarTigela(){
    print('Tigela pega para o dog ${this.nome}');
  }

  @override
 void prepararComida(){
  print('Comida preparada para o dog ${this.nome}');
 }

}

void main(){
  Filha Jacare = Filha();
  Jacare.separarIngredientes();
  Jacare.pegarTigela();
  Jacare.prepararComida();

  Filho Rocky = Filho();
  Rocky.nome = "Rocky";
  Rocky.separarIngredientes();
  Rocky.pegarTigela();
  Rocky.prepararComida();

}