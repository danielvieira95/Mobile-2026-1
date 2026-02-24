/*
Exemplo 05 utilizando switch case e do while
23/02/2026
*/

import 'dart:io';
void main(){
  double n1,n2,res; // declara as variaveis do tipo double
  var op ; // 
  var msg; 
  do{

  

  print('Operações:');
  print('+: Soma');
  print('-: Subtração');
  print('*: multiplicação');
  print('/: Dividir');
  print('Digite o numero n1: ');
  n1=double.parse(stdin.readLineSync()!);
  print('Digite o numero n2');
  n2 = double.parse(stdin.readLineSync()!);
  print('Escolha a operação: ');
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
     res = n1/n2;
    print('Resultado: $res');
    }
    else{
      print('Divisão por zero tende ao infinito \n digite um novo valor para n2 ');
      print('Digite um numero para n2');
      n2 = double.parse(stdin.readLineSync()!);
      if(n2!=0){
        res = n1/n2;
        print('Resultado: $res');
      }
      
      

    }
    
    break;
    default: 
    print('Operação invalida');
    
    

  }
  print('Deseja continuar ?');
  msg = stdin.readLineSync();

  }while(msg=='s' || msg =='S');
}