/*
Exemplo com o for
23/02/2026
*/
import 'dart:io';
void main(){
  int res =0, n;
  print('Digite o numero que deseja saber a tabuada: ');
  n = int.parse(stdin.readLineSync()!);
  print('Tabuada do $n');
  // for inicia a variavel, condição e incremento
  for (int i=0; i<11;i++){
    res = n*i;
    print('Res = $n *$i = $res');
  }
}