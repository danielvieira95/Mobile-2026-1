// Exemplo 02
import 'dart:io';

void main(){
  // mensagem na tela

  print('Digite seu nome: ');
  String nome = stdin.readLineSync()!;
  print('Digite sua idade');
  int idade = int.parse(stdin.readLineSync()!); // converte a idade do usuario para inteiro
  if(idade>=18){
    print('Maior de idade');
  }
  else{
    print('Menor de idade');
  }
  print('Nome: $nome e idade: $idade anos');
}