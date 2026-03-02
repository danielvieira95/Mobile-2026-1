/*
Exemplo 02  - Programação orientada a objeto
02/03/2026
*/

class Carro{

  // Cria o atributo marca com o valor Nissan
  String marca = "Nissan";
  int ano = 2026;


  // Cria um metodo para abrir a porta do carro
  
  void abrirporta(int nqtde){
    if(nqtde==1){
      print('Porta do motorista aberta');
    }

    else if(nqtde==2){
      print('Porta do motorista e do passageiro aberta');
    }

    else if(nqtde ==3){
      print('Porta do motorista, passageiro e traseira aberta');
    }
    else{
      print('As 4 portas do veiculo estão abertas');
    }
  }


  void fecharporta(int nqtde){
     if(nqtde==1){
      print('Porta do motorista fechada');
    }

    else if(nqtde==2){
      print('Porta do motorista e do passageiro fechada');
    }

    else if(nqtde ==3){
      print('Porta do motorista, passageiro e traseira fechada');
    }
    else{
      print('As 4 portas do veiculo estão fechadas');
    }
  }

  void ligar(){
    print('Carro ligado');
  }

  void desligar(){
    print('Carro desligado');
  }
}


void main(){


  // Instancia o objeto Tiida

  Carro Tiida = Carro();
  Tiida.marca= 'Nissan Tiida';
  Tiida.ligar();
  print('Exibir infos carro: ');
  print('${Tiida.marca}');
  print('${Tiida.ano}');
  //Tiida.abrirporta(3);
  Tiida.fecharporta(3);
  Tiida.desligar();
}