import 'package:flutter/material.dart';

class Tela02 extends StatelessWidget {
  const Tela02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('App aula 07 - Login'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: 200,
              height: 200,
              color: Colors.red,
              child: Text('Tela 02',style: TextStyle(fontSize: 30,),textAlign: TextAlign.center,
               ),
            )
          ],
        ),
      ),
    );
  }
}