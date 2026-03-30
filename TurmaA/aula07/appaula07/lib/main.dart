import 'package:flutter/material.dart';

void main() {
  runApp(Telaprincipal());
}

// Cria a classe tela principal
/*
Esta classe é o ponto de entrada do aplicativo e um Stateless widget, o que significa que ela não possui estado
Dentro do metodo build, o widget Material App é  retornado, com a tela principal Campo texto
*/



class Telaprincipal extends StatelessWidget {
  const Telaprincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CampoTexto(),

    );
  }
}

class CampoTexto extends StatefulWidget {
  const CampoTexto({super.key});

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  /*
  Todo código vai aqui nessa classe
  */

  // Variavel que vai armazenar o que o usuario digita
  TextEditingController ctexto = TextEditingController();
  TextEditingController _controller = TextEditingController();
  String? msg;

  void exibir(){
    setState(() {
      print(ctexto.text);
      ctexto.text;
    });
  }

  void limpar(){
    setState(() {
      ctexto.text="";
      msg=" ";
      _controller.text="";
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aula 07 - Aplicativo Caixa de texto',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // Children estabelece uma relação com os outros elementos da minha coluna
        /*
        Classe Campo texto
        Esta classe é do tipo StatefulWidget, pois ela possui um estado mutável, no caso o valor
        do texto inserido no campo de texto.
        A criação do estado é feita pela classe Campotextostate
        Dentro da classe Campotextstate, temos o controlador de texto (TextEditingController),
        que é utilizado para manipular o conteudo dentro do campo texto
        */

        /*
        O uso do textfield
        O TextField é utilizado para capturar o texto digitado pelo usuario. No seu código, temos dois
        campos de texto
        O primeiro é utilizado para capturar o nome do usuario e é controlado pela variavel ctexto do tipo
        TextEditingController
        O segundo campo é utilizado para capturar um numero
        O Botão verificar chama a função print que exibe o texto digitado no primeiro campo no terminal
         */

       
        children: [

           // Cria o widget TextField
           TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: 'Digite seu nome'
            ),
            // controller função que monitora o que é digitado atraves da variavel ctexto
            controller: ctexto,
           ),

           // Cria outro widget TextField
           TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Digite um numero'
            ),
            controller: _controller,

            // O Texto vai aparecendo conforme eu digito
            /*onChanged: (text) {
              setState(() {
                msg=text;
                print(msg);
              });
              
            },
            */


            // onsubmited

            onSubmitted: (text){
              setState(() {
                msg=text;
                print(text);
              });

            },
           ),

           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(onPressed: exibir, child: Text('Exibir')),
            ),
            ElevatedButton(onPressed: limpar, child: Icon(Icons.clear_all))
            ],
           ),
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: Container(
              width: 200,
              height: 50,
              child: Text('${ctexto.text}', style: TextStyle(fontSize: 20,color: Colors.white),),
              color: Colors.lightBlue,
             ),
           ),

           Container(
            width: 200,
            height: 50,
            child: Text('$msg', style: TextStyle(fontSize: 20,color: Colors.white),),
            color: Colors.lightBlue,
           )
           


        ],
      ),
    );
  }
}