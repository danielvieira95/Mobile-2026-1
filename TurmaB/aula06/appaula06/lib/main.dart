// importa biblioteca para criar o design do app
import 'package:flutter/material.dart';

// Função principal do aplicativo
void main() {
  // runApp é a função responsável por chamar as telas do aplicativo
  runApp(TelaApp());
}

// Cria classe do tipo Stateless
class TelaApp extends StatelessWidget {
  const TelaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text("App Aula 06 - Multi child layout"),
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          children: [
            // Cria a linha
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                Icon(Icons.star,color: Colors.yellow, size: 50,),
                Icon(Icons.favorite,color:  Colors.red,size:50),
                Icon(Icons.thumb_up,color: Colors.blue, size: 50,)

              ],
            ),

            SizedBox(
              height: 20,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blueAccent,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.black,
                  child: Text('Stack',
                  style: TextStyle(fontSize: 20,
                  color: Colors.white),
                  textAlign: TextAlign.center,
                  
                  ),
                )
              ],
            ),

            SizedBox(
              height: 350,
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.person_2),
                    title: Text('Usuario 1'),
                    subtitle: Text('Descrição do usuario 1'),
                  ),
                  ListTile(
                    leading: Icon(Icons.person_2_rounded),
                    title: Text('Usuario 2'),
                    subtitle: Text('Descrição do usuario 2'),
                  ),
                  ListTile(
                    leading: Icon(Icons.person_3),
                    title: Text('Usuario 3'),
                    subtitle: Text('Descrição do usuario 3'),
                  ),
                  ListTile(
                    leading: Icon(Icons.person_2),
                    title: Text('Usuario 4'),
                    subtitle: Text('Descrição do usuario 4'),
                  ),
                  ListTile(
                    leading: Icon(Icons.person_2),
                    title: Text('Usuario 5'),
                    subtitle: Text('Descrição do usuario 4'),
                  ),
                  
                  ListTile(
                    leading: Icon(Icons.person_2),
                    title: Text('Usuario 6'),
                    subtitle: Text('Descrição do usuario 4'),
                  ),


                ],
              ),
            )
          ],
        ) ,
      ) ,
    );
  }
}