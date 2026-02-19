// Exemplo 1 linguagem Dart
// Biblioteca que permite que o usuario digite valores utilizando o teclado

import 'dart:io';
// Função principal do codigo
void main(){
 
 print("Digite seu nome"); // exibe mensagem na tela
 String nome = stdin.readLineSync()!; // Cria variavel nome para armazenar o que o usuario digita e converte para String
 print("Olá $nome !"); // Exibe a mensagem na tela acessando o valor da variavel

}