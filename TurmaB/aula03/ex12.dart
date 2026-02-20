/* Função assincrona
Usadas para operações que levam tempo para serem concluidas como chamadas de APIs
*/

Future<void> carregarDados()async{
  print('Carregando ...');
  await Future.delayed(Duration(seconds: 2));
  print('Dados carregados');

}

void main()async{
  await carregarDados();
}