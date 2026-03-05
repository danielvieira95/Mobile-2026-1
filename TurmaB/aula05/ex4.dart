/* 
Exemplo polimorfismo
05/03/2026
*/

class Forma{
  void desenhar(){
    print('Desenho generico');
  }
}

class Circulo extends Forma{
  @override
  void desenhar() {
   print("Desenhando um circulo");
  
  }

  void desenharForma(Forma forma){
    forma.desenhar();
  }
}

void main(){

  // Instancio minha figura circulo

  Circulo figura = Circulo();
  figura.desenharForma(Circulo());
}