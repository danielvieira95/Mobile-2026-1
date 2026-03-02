/*
Programação orientada a objeto
Ex 04
02/03/2026
*/

class Usuario{

  String ? usuario;
  String ? senha;

  // metodo de autenticação

  void autentica(){
    String usuario = "Senai";
    String senha = "senai@2026";
    // this refere-se a um atributo de dentro da classe
    if (this.usuario== usuario && this.senha == senha){
      print('Login correto');

    }
    else{
      print('Login incorreto');
    }
  }
}

void main(){
  Usuario cliente = Usuario();
  cliente.usuario = 'Senai';
  cliente.senha='senai@2026';
  cliente.autentica();
}