/*
Exemplo Get e Setter
05/03/2026
*/


class Produto{

  // atributo privado - usa-se _ para indicar privado
  String ? nomeprod;
  double _preco = 0.0;

  // Getter Retorna o valor do atributo _preco

  double get preco => _preco;

  // Setter define um novo valor para _preco com validaçao

  set preco(double novopreco){
    if(novopreco>0){
      _preco = novopreco;
    }else{
      print('O preço deve ser maior do que zero');
    }
  }
}

void main(){
  // Criando um objeto da classe Produto
  Produto tenis = Produto();
  tenis.nomeprod= "Tenis";

  tenis.preco=50.0;
  print("Preço do produto ${tenis.nomeprod}:  R\$ ${tenis.preco}");
  tenis.preco=200;
  print("Preço do produto ${tenis.nomeprod}:  R\$ ${tenis.preco}");

}