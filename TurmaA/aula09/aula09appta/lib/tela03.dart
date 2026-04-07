// Tela de acionamento

import 'package:flutter/material.dart';

class Telaacionamento extends StatefulWidget {
  const Telaacionamento({super.key});

  @override
  State<Telaacionamento> createState() => _TelaacionamentoState();
}

class _TelaacionamentoState extends State<Telaacionamento> {
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
        leading: IconButton(onPressed: ()=> Navigator.pop(context), 
        icon: Icon(Icons.arrow_back,color: Colors.white,)),
        title: Text('Acionamento',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
              
                alignment: Alignment.center,
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                color: status_cor,
                borderRadius: BorderRadius.circular(30)
                ) ,
                
                child: Text('Bomba de irrigação',textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold,color: Colors.black),),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white
              ),
                onPressed: _ligarBomba, child: Text('Ligar bomba')),
            ),
        
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
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