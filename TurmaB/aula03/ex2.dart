// Exemplo 2 
import 'dart:io';

void main(){
  // Mensagem na tela
  print("Digite seu nome: ");
  String nome = stdin.readLineSync()!;
  print("Digite sua idade");
  // Variavel do tipo inteira
  // stdin.readLineSync  pega valores como String
  int idade =int.parse(stdin.readLineSync()!);
  if(idade>=18){
    print("Maior de idade");

  }
  else{
    print('Menor de idade');
  }
  print("Nome: $nome e idade: $idade anos");
}