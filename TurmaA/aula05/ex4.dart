/*
Exemplo polimorfismo
16/03/2026*/


class Forma{

  void desenhar(){
    print('Desenho genérico');
  }
}

class Circulo extends Forma{
  @override
  void desenhar(){
    print('Desenhando um circulo');
  }

  void desenharForma(Forma forma){
    forma.desenhar();
  }
}

void main(){
  Circulo figura = Circulo();
  figura.desenharForma(Circulo());
}