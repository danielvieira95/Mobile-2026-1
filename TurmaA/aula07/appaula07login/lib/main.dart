import 'package:appaula07login/tela2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login(),
  ));
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // Logica do app

  // Cria variaveis para armazenar o usuario e senha
  TextEditingController user = TextEditingController();
  TextEditingController senha = TextEditingController();

  // função para realizar login

  _verificarLogin(){
    if(user.text=='Senai' && senha.text=='2026'){
      // Chama a outra tela
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Tela02()));
     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Login correto'),duration: Duration(seconds: 5),));
    }
    else{
         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Login incorreto'),duration: Duration(seconds: 5),));

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: Image.asset('images/senai.png',fit: BoxFit.fill,),
            ),
            // Widget Sizedbox

            SizedBox(
            height: 250,
            width: 250,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'Digite seu usuario',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    controller: user,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      // hintText eu clico no textfield e o texto some
                      hintText: 'Digite sua senha',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                    ),
                  
                    obscureText: true,
                    obscuringCharacter: '*',
                    controller: senha,
                  ),
                ),


              ],
            ),
            ),


            ElevatedButton(onPressed: _verificarLogin, child: Text('Login')),
            ElevatedButton(onPressed: (){
              setState(() {
                user.text='';
                senha.text='';
              });
            }, child: Text('Limpar'))
          ],
        ),
      ),

    );
  }
}