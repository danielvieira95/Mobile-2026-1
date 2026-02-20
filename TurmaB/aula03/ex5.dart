// Exemplo switch case
import 'dart:io';
void main(){
  double n1,n2,res; // declara variaveis do tipo double
  var op ;// variavel do tipo var chamada op
  // variavel do tipo var ela faz a inferencia do tipo de dado 
  //var n3 = int.parse(stdin.readLineSync()!);
  var msg ;
  do {

  
  print('Operações:');
  print('+: soma');
  print('-: subtracao');
  print('*: multiplicação');
  print('/: dividir');
  print('Digite o numero n1: ');
  n1 = double.parse(stdin.readLineSync()!);
  print('Digite o numero n2: ');
  n2 = double.parse(stdin.readLineSync()!);
  print('Escolha a operacao');
  op = stdin.readLineSync();

  switch(op){
    case '+':
    res = n1+n2;
    print('Resultado: $res');
    break;

    case '-':
    res = n1-n2;
    print('Resultado: $res');
    break;

    case '*':
    res = n1*n2;
    print('Resultado: $res');
    break;

    case '/': 
    if(n2!=0){
      res= n1/n2;
      print('Resultado: $res');
    }
    else{
      print('Divisão por zero tende ao infinito \n digite um novo valor para n2: ');
      print('Digite o numero n2: ');
      n2 = double.parse(stdin.readLineSync()!);
      if(n2!=0){
        res = n1/n2;
        print('Resultado: $res');
      }
    }
    break;
    default:
    print('Operacao invalida');
  }

print('Deseja continuar ? ');
msg = stdin.readLineSync();
}while(msg =='s'|| msg=='S');
print('Finalizando calculadora');
}

