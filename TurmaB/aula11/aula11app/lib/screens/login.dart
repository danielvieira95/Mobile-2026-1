import 'package:aula11app/screens/cadastroprodutos.dart';
import 'package:aula11app/screens/cadastrousuario.dart';
import 'package:flutter/material.dart'; // biblioteca de design do Flutter
import 'package:http/http.dart' as http; // biblioteca que permite realizar as requisições http
import 'dart:convert'; // biblioteca que permite fazer os parses para tratamento do json

// Cria classe  chamada login
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // Cria variaveis para usuario e senha
  TextEditingController user = TextEditingController();
  TextEditingController senha = TextEditingController();
  // variavel para exibir a senha
   bool exibir = false;

   // função para realizar o login
   _verificaLogin()async{
    // Cria variavel Flag para quando encontrar o login
    bool encuser = false;
    // url com a api dos usuarios
    String url = "http://10.109.83.10:3000/usuarios";
    // Cria a variavel para armazenar a resposta da api
    http.Response resposta = await http.get(Uri.parse(url)); // Resposta assincrona

    print(resposta.statusCode);

    // Cria uma variavel para armazenar os dados

    var dados = json.decode(resposta.body) as List ; // armazena os dados na forma de lista
    print("${dados[0]["login"]} ${dados[0]["senha"]}");


    // cria laço de repetição para exibir mais de um usuario cadastrado na api

    for(int i=0; i<dados.length;i++){
      print("${dados[i]["login"]}   ${dados[i]["senha"]}");

      if(user.text == dados[i]["login"] && senha.text == dados[i]["senha"]){
        // variavel encuser muda para true
        encuser = true;
      }
    }
    if (encuser==true){
      print("Usuario ${user.text} encontrado");
      encuser = false;
      // Vai para outra tela

      Navigator.push(context, MaterialPageRoute(
        builder: (context)=> Cadastroprodutos()));
        user.text = "";
     senha.text="";
    } 
        

   else{
     print('Usuario não encontrado');
     user.text="";
     senha.text="";
     // Cria um showdialog

     showDialog(
      context: context, 
      builder: (BuildContext){
        return AlertDialog(
          content: Text(
            'Usuário não encontrado'
          ),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              }, child: Text('Fechar'))
          ],
        );

      });
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
            TextFormField(
              // Tipo de teclado
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
                icon: Icon(Icons.people_alt_outlined,color: Colors.blue,),
                hintText: 'Digite seu login'
              ),
              controller: user,
            ),

            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
                icon: Icon(Icons.key_off_outlined,color: Colors.blue,),
                suffixIcon: IconButton(onPressed: (){
                  setState(() {
                    exibir=!exibir;
                  });
                }, icon: Icon(exibir? Icons.visibility_off:Icons.visibility)),
                hintText: 'Digite sua senha',
                
              ),
              obscureText: exibir,
              obscuringCharacter: '*',
              controller: senha,
            ),
            ElevatedButton(onPressed: _verificaLogin, child: Text('Entrar')),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=>Cadastrousuario()));
            }, child: Text('Cadastrar'))
          ],
        ),
      ),
    );
  }
}