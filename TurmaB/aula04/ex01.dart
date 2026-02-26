/*
Exemplo 1 - Programação orientada a objeto
26/02/2026
*/

// Cria a classe chamada Casa

class Casa{
  String ? cor; // ? operador ternario verifica se a variavel cor é vazia ou nao
  int ? qtde_p;
  // Cria o construtor
  // this é utilizado sempre para se referir a um atributo ou metodo de dentro da classe
 // Casa(this.cor,this.qtde_p);
  // Cria o metodo chamado abrir porta

  void abrirporta(){
    print('A porta está aberta');
  }
}

void main(){
  // Instancia o objeto chamado minhaCasa
  // Tipo do objeto, nome do objeto, = nome da classe criada
  //Casa minhaCasa = Casa("Azul",2);
  Casa minhaCasa = Casa();
  print('Cor da casa ${minhaCasa.cor}');
  print('Quantidade de portas ${minhaCasa.qtde_p}');
  minhaCasa.cor='Vermelho';
  minhaCasa.qtde_p=3;
  print('Cor da casa ${minhaCasa.cor}');
  print('Quantidade de portas ${minhaCasa.qtde_p}');

}