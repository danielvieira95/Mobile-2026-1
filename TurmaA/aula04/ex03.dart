/*
Exemplo 03 - Programação orientada a objeto
02/03/2026
*/


class Pessoa{

  String ? _nome ; // Representa atributo privado

  // Cria o metodo
  void setNome(String nome){
    _nome = nome;
  }

  String ? _getNome(){
    return _nome;
  }

  
}


class Aluno{
  String ? nome;
  getNome(){
    return nome;
  }
}

void main(){
  Pessoa cliente = Pessoa();
  cliente._nome = "Daniel";
  print("Nome do cliente: ${cliente._getNome()}");

  Pessoa Daniel = Pessoa();
  Daniel._nome = 'Filipe';
  print('${Daniel._getNome()}');
  Aluno Pedro = Aluno();
  Pedro.nome = "Pedro";
  print('${Pedro.getNome()}');
}