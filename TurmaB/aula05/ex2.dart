/*
Exemplo 2 - Polimorfismo

05/03/2026
*/

// Cria a classe produtos

import 'dart:collection';

class Produtos{
  String nome;
  int qtde;
  double preco;
  String tipo_comunic;
  double consumo_KW;

  // Cria construtor
  Produtos(this.nome, this.qtde, this.preco, this.tipo_comunic, this.consumo_KW);

  // Cria o metodo ligar
  void ligar(){
    print('Produto ligado');
  }

}

// Cria a classe Filha

class Fritadeira extends Produtos{
  // Cria o construtor herdando parametros da classe pai
  Fritadeira(nome,qtde,preco, tipo_comunic,consumo):super(nome,qtde,preco, tipo_comunic, consumo);

  // polimorfismo
  @override

  void ligar(){
    print('Fritadeira ${nome} ligada');
  }

  void desligar(){
    print('Fritadeira ${nome} desligada');
  }


  void ajusta_temp(int temp){
    int setpoint=250;

    if(temp>=setpoint){
      print('Temperatura ok');
    }else{
      while(temp<250){
        temp = temp+10;
        print("Temperatura ajuste ${temp}");
      }

      print('Temperatura ajustada em 250 oC');
    }

  }
}


// Cria a classe filha Arcondicionado

class Arcondicionado extends Produtos{
  Arcondicionado(nome,qtde,preco,tipo_comunic,consumo):super(nome,qtde, preco, tipo_comunic,consumo);

  @override

  void ligar(){
    print("Ar condicionado ligado");
  }

  void desligar(){
    print('Ar condicionado desligado');
  }


  void ajusta_temp(int temp){
    int setpoint =22;
    if(temp == setpoint){
      print('Temperatura ok');
    }
    else{
      while(temp<setpoint){
        temp = temp +2;
        print('Ajuste de temperatura $temp');
      }

      print('Temperatura ok');
    }
  }
}

void main(){

  Fritadeira Philips = Fritadeira("Philips", 1, 800.0, "Wifi", 1.4);
  Philips.ligar();
  Philips.ajusta_temp(90);

  Arcondicionado LG = Arcondicionado("LG", 2, 5000.0, "Bluetooth", 5.0);
  LG.ligar();
  LG.ajusta_temp(16);
  LG.desligar();

}