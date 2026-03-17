/*
Exemplo Get e Setter
16/03/2026
*/


class Produto{

  // atributo privado - usa se o _ para indicar privado

  String ? nomeprod;
  double _preco = 0.0;

  // Getter retorna o valor do atributo _preco

  double get preco => _preco;

  // Setter define um novo valor para _preco com validacao

  set preco(double novopreco){
    if(novopreco>0){
      _preco = novopreco;
    }else{
      print('O preco deve ser maior do que zero');
    }
  }
}

void main(){

  // Criando um objeto da classe produto

  Produto tenis = Produto();
  tenis.nomeprod = "Tenis";

  tenis.preco =-5;
  print('Preco do produto ${tenis.nomeprod}: R\$ ${tenis.preco}');
  tenis.preco=200;
  print('Preco do produto ${tenis.nomeprod}: R\$ ${tenis.preco}');

}