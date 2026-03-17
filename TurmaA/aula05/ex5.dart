/*
Exemplo classe abstrata
16/03/2026
*/

// Cria a classe abstrata

abstract class Alimentar{

  // cria os metodos
   
   void separarIngredientes();
   void pegarTigela();
   void prepararComida();


}


// Classe filha que implementa a classe abstrata alimentar

class Filha implements Alimentar{
  // Polimorfismo

  @override

  void separarIngredientes(){
    print('Ingredientes separados');
  }

  void pegarTigela(){
    print('Tigela pega');

  }

  void prepararComida(){
    print('Comida preparada');
  }
}

// Cria a classe filho

class Filho implements Alimentar{
  String ? nome;

  // Polimorfismo

  @override

  void separarIngredientes(){
    print('Ingredientes preparados para o dog ${this.nome}');
  }

  void pegarTigela(){
    print('Tigela pega para o dog ${this.nome}');
  }

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
  Rocky.nome='Rocky';
  Rocky.separarIngredientes();
  Rocky.pegarTigela();
  Rocky.prepararComida();
}