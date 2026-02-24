// Primeiro exemplo na linguagem Dart

import 'dart:io'; // biblioteca para permitir que o usuario digite informações via teclado
// função principal do codigo
void main(){

  print('Digite seu nome'); // Exibe mensagem no terminal
  String nome = stdin.readLineSync() !; // Cria variavel para armazenar o que o usuario digita e converte para String
  print('Olá $nome'); // Exibe mensagem na tela


}