/*
Exemplo classe abstrata
16/03/2026
*/

// Interface ou contrato = classe abstrata

abstract class Forma{
  double calcularArea();
}

// Cria classe que vai implementar essa interface

class Circulo implements Forma{
  double raio;
  Circulo(this.raio);

  // Polimorfismo
  @override
  double calcularArea() {
    // TODO: implement calcularArea
    return 3.14*raio*raio;
  }

}

class Retangulo implements Forma{
  double largura,altura;
  Retangulo(this.largura,this.altura);

  @override

  double calcularArea(){
    return altura *largura;
  }
}

void main(){
  Forma forma1 = Circulo(5);
  Forma forma2 = Retangulo(4, 7);

  print('A area do circulo: ${forma1.calcularArea()}');
  print('A area do retangulo: ${forma2.calcularArea()}');
}