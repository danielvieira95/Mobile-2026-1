// Importa a biblioteca material que é responsavel pelo design do app

import 'package:flutter/material.dart';

// função principal do app
void main() {
  // função que chama a classe que constroi o app
  runApp(TelaHome());
}

// Cria a classe TelaHome do tipo Stateless
class TelaHome extends StatelessWidget {
  // Construtor Tela Home
  const TelaHome({super.key});

// polimorfismo
  @override
  // Metodo para construir a tela
  Widget build(BuildContext context) {
    return MaterialApp(
      // retirar faixa de debug do app
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('App Aula 06'),
        ),
        body: TelaApp() ,
        
      ) ,
    );
  }
}

// Cria a Tela App do tipo Stateful

class TelaApp extends StatefulWidget {
  // cria o construtor
  //const TelaApp({super.key});
  
 // polimorfismo
 

  @override
  State<TelaApp> createState() => _TelaAppState();
}

// classe com gerenciamento de estado
class _TelaAppState extends State<TelaApp> {
 String? msg;
  // cria função exibe mensagem
  void exibir_msg(){
     setState(() {
       msg = 'SENAI';
     });

  }


  // função para apagar o texto

  void limpar(){
    setState(() {
      msg="";
    });
  }
  // Polimorfismo
  @override
  // Metodo para construir a tela do App
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // posicionamento dos widgets na coluna
        // main axisaligment posicionamento principal do app
      
        //mainAxisAlignment: MainAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.end,
         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
         mainAxisAlignment: MainAxisAlignment.spaceEvenly, // alinhamento principal
         //crossAxisAlignment: CrossAxisAlignment.start, // alinhamento secundario
        children: [
          Container
          (
            height: 100,
           width: 200,
          color: Colors.blue,
          child: Text('$msg',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w900),
          textAlign: TextAlign.center,),
          ),
          Container(
            height: 100,
            width: 200,
            color: Colors.red,
            // Estabelece a relação entre os elementos
            child: Text('Mobile', style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w900),
            textAlign: TextAlign.center,),

          ),

          //criando botoes
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [


               ElevatedButton(
            onPressed: exibir_msg, child: Text('Mensagem'),
            // modifica a cor do botao
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white
            ),),

               ElevatedButton(onPressed: limpar, 
          child: Icon(Icons.clear_all),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white
          ),)
            ],
          )
          

      
        ],
      ),
    );
  }
}


