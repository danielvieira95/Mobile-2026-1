/*Exemplo de função com passagem de parametro obrigatorio nomeado
23/02/2026
*/

void criarUsuario(int idade,{required String nome}){
  print('Idade: $idade, Usuario: $nome');
}


// Função anonima
var anonimafunc =() => print('Olá Dart !');
void main(){
  // Chama função com parametro nomeado
  criarUsuario(30, nome: 'Daniel');
  anonimafunc();
}