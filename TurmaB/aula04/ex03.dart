/*
Exemplo 03 orientação a objeto
Classe com atributo privado
26/02/2026
*/

class Pessoa{
  String ? _nome; // Representa _ atributo privado

  void setNome(String nome){
    _nome = nome;
  }

  String ? getNome(){
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
  print("Nome do cliente: ${cliente.getNome()}");
  Pessoa Daniel = Pessoa();
  Daniel._nome="Filipe";
  print("${Daniel.getNome()}");
  Aluno Pedro = Aluno();
  Pedro.nome = "Pedro";
  print('${Pedro.getNome()}');
  
}
