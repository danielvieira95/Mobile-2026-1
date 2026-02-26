/*
Exemplo 04 classe usuario
26/02/2026
*/

class Usuario{
  String? usuario;
  String ? senha;

  // metodo de autenticação
  void autentica(){
    String usuario= "Senai";
    String senha ="senai@2026";

    if(this.usuario==usuario && this.senha ==senha){
      print('Login correto');
    }
    else{
      print('Login incorreto');
    }
  }


}

void main(){
  Usuario cliente = Usuario();
  cliente.usuario='Senai';
  cliente.senha="senai@2026";
  cliente.autentica();
}
