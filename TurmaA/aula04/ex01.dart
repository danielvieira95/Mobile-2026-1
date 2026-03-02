/*
Exemplo 01 - Programação orientada a objeto 
02/03/2026
*/

//import 'dart:io';

// Cria a classe Casa

class Casa{
  String ? cor; // Operador ternario verifica se a variavel cor é vazia ou não

  int?  qtde_p ;
  //int valor = int.parse(stdin.readLineSync()!);

  // Cria um metodo chama abrir porta
  void abrirporta(){
    print('A porta está aberta');
  }
}

// Cria a função principal
void main(){

  // Instancia o objeto chamado minhaCasa
  // Tipo de objeto, nome do objeto = nome da classe criada
  Casa minhaCasa = Casa();
  print('Cor da casa ${minhaCasa.cor}');
  print('Quantidade de portas: ${minhaCasa.qtde_p}');
  minhaCasa.cor = "Vermelho";
  minhaCasa.qtde_p = 2;
    print('Cor da casa ${minhaCasa.cor}');
  print('Quantidade de portas: ${minhaCasa.qtde_p}');
  

}
