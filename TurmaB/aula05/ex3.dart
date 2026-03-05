/*
Exemplo classe abstrata
05/03/2026
*/

// Interface ou contrato = classe abstrata

abstract class Forma{

  double calcularArea();
}

// Classe que vai implementar essa interface

class Circulo implements Forma{
  double raio;
  Circulo(this.raio);

  // Polimorfismo

  @override

  double calcularArea(){
    return 3.14*raio*raio;
  }
}


// Classe retangulo

class Retangulo implements Forma{
  double largura, altura;
  Retangulo(this.largura,this.altura);

  @override

  double calcularArea(){
    return altura*largura;
  }
}

void main(){

  Forma forma1 = Circulo(5);

  Forma forma2 = Retangulo(4, 6);

  print("A area do circulo: ${forma1.calcularArea()}");
  print("A area do retangulo: ${forma2.calcularArea()}");
}