/* Exemplo de função com passagem de parametro obrigatorio nomeado
19/02/2026
*/

void criarUsuario(int? idade, {required String nome}){
  print('Idade: $idade, Usuario: $nome');
}
// Criando uma variavel var chamada anonimafunc 
var anonimafunc =()=> print('Olá Mobile');
  
void main(){
  criarUsuario(20, nome: "Daniel");
  anonimafunc();
}

/*(){
  print("Botao pressionado");
}

void leiturabotao(){

}
*/