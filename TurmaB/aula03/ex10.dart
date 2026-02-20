/*
Exemplo função com passagem de parametros opcionais
19/02/2026
*/

void exibirMensagem(String mensagem,[String remetente ="Anonimo"]){
  print("Mensagem de $remetente: $mensagem");
}

void main(){
  exibirMensagem("Bem vindo ao curso de mobile com Flutter");
  exibirMensagem("Bem vindo ao curso de mobile com Flutter",'Prof Daniel');
}