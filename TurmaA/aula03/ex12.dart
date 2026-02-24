/*
Exemplo Função assincrona
23/02/2026
*/

// Função assincrona
Future<void> carregarDados()async{
  print('Carregando ...');
  await Future.delayed(Duration(seconds: 2));
  print('Dados carregados');

}

void main()async{
  await carregarDados();
}