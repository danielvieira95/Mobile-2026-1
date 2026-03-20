import 'package:flutter/material.dart';

void main() {
  runApp(Telaprincipal());
}


// Cria  a classse Tela principal
/*
Esta classe é o ponto de entrada do aplicativo e um StatelessWidget, o que  significa que ela nao possui estado
Dentro do metodo build (), o widget MaterialApp é retornado, com a tela principal sendo o campotexto

*/

class Telaprincipal extends StatelessWidget {
  const Telaprincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Campotexto(),
    );
  }
}


// Cria a classe Campo Texto que é do tipo stateful

class Campotexto extends StatefulWidget {
  const Campotexto({super.key});

  @override
  State<Campotexto> createState() => _CampotextoState();
}

class _CampotextoState extends State<Campotexto> {

  /*
  Todo codigo vai aqui nessa classe
  */

  // Variavel que vai armazenar o que o usuario digita

  TextEditingController ctexto = TextEditingController();
  String? msg;
  void exibir(){
    setState(() {
      ctexto.text;
    });
  }

  void limpar(){
    setState(() {
      ctexto.text="";
      msg="";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicativo Caixa de texto'),
        backgroundColor: Colors.blue,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


          /*

          Classe Campo texto
          Esta classe é do tipo StatefulWidget, pois ela possui um estado mutável ( no caso o valor do texto inserido no campo de texto)
          A criação do estado é feita pela classe Campotextostate.
          Dentro da classe CampoTextstate, temos o controlador de texto (TextEditingController), que é utilizado para manipular o
          conteudo do campo de texto
          */

          /*
          O uso do textfield
          O TextField é utilizado para capturar o texto digitado pelo usuario. No seu código, temos dois campos de texto
          O primeiro é utilizado para capturar o nome do usuario e é controlado pela variavel ctexto do tipo TextEditingController.
          O segundo campo é o campo para capturar um numero.
          O Botao verificar chama a função print que exibe o texto digitado no primeiro campo no terminal
          */

          // Cria o widget TextField

          TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: 'Digite seu nome',
              
            ),
            // monitora o que esta sendo digitado 
            controller: ctexto,

          ),


          



            // Cria o Widget TextField
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Digite um numero'),
              // O texto aparece conforme eu vou digitando
              /*onChanged: (text) {
                setState(() {
                  msg=text;
                  print(text);
                });
              },
              */
                 // O texto aparece somente quando eu aperto ok
              onSubmitted: (text) {
                setState(() {
                  msg=text;
                  print(text);
                });
                
              },
            ),

            Container(
              width: 200,
              height: 50,
              child: Text(ctexto.text,style: TextStyle(fontSize: 20,color: Colors.white),),
              color: Colors.blue,

            ),

            Container(
              width: 200,
              height: 50,
              child: Text('$msg',style: TextStyle(fontSize: 20,color: Colors.white),),
              color: Colors.blue,

            ),

            // Cria o Widget Botao

          ElevatedButton(
            onPressed: exibir, child: Text('Exibir')),

            TextButton(onPressed: limpar, child: Text('Limpar'))

        ],
      ),
    );
  }
}
