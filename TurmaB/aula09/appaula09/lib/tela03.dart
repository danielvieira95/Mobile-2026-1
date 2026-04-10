// Tela acionamento
import 'package:flutter/material.dart';

class Telaacionamento extends StatefulWidget {
  const Telaacionamento({super.key});

  @override
  State<Telaacionamento> createState() => _TelaacionamentoState();
}

class _TelaacionamentoState extends State<Telaacionamento> {

  // Cria variavel booleana para acionamento

  final bool status = false;
  Color status_cor = Colors.grey;

  _ligarBomba(){
    setState(() {
      status_cor = Colors.green;
    });
  }

  _desligarBomba(){

    setState(() {
      status_cor = Colors.grey;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        leading: IconButton(onPressed: ()=>Navigator.pop(context),
         icon: Icon(Icons.arrow_back,color: Colors.white,)),
         title: Text('Acionamento',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
         centerTitle: true,
      ),

      body: Center(
        child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                // Alinha o texto do container
                alignment: Alignment.center,
              
                width: 200,
                height: 200,
                color: status_cor,
                child: Text('Bomba de irrigação',textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
              
              ),
            ),


            SizedBox(
              width: double.infinity, // acompanha a largura da tela do app
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.brown,
                foregroundColor: Colors.white
                
                ),
                
                onPressed: _ligarBomba, child: Text('Ligar Bomba')),
            ),


            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.brown,
                foregroundColor: Colors.white
                
                ),
                
                onPressed: _desligarBomba, child: Text('Desligar bomba')),
            )
          ],
        ),
      ),
    );
  }
}