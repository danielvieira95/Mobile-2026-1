// Exemplo 3 - Digitar dois numeros e calcular sua média
// 19/02/2026
import 'dart:io';
void main(){
  double n1,n2,res; // declara 3 variaveis do tipo double
  print("Digite o numero n1: ");
  // double.parse realiza a conversao do valor de string para double
  n1 = double.parse(stdin.readLineSync()!);
  print("Digite o numero n2: ");
  n2 = double.parse(stdin.readLineSync()!);
  res = (n1+n2)/2;
  print("Nota 1: $n1 ");
  print("Nota 2: $n2 ");
  print("Media: $res ");
  if(res>=6){
    print("Parabéns ! Aprovado");
  }
  else{
    print("Reprovado");
  }
}
