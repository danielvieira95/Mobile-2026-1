import 'package:flutter/material.dart';  // importa a biblioteca responsável pelos widgets
// importa a biblioteca que permite realizar a requisição http
import 'package:http/http.dart' as http;

// importa a biblioteca que permite tratar os json
import 'dart:convert';


class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {

  // cria variavel para armazenar o cep digitado pelo usuario
   TextEditingController ncep = TextEditingController();

   String ? logradouro; // Converte para string se a variavel nao for vazia
   String ? bairro;
   String ? cidade;
   String ? ddd;
   String ? estado;

   // async de função assincrona

   _consultaCep()async{
    // Cria a variavel com a url para consultar o CEP
    String url = "https://cep.awesomeapi.com.br/${ncep.text}";
   // String url2 = "https://viacep.com.br/ws/${ncep.text}/json/";

    // Cria a variavel http response

    http.Response response; // variavel que vai armazenar a resposta da api

    response = await http.get(Uri.parse(url));

    // Realizar um parse da resposta da API

    Map<String,dynamic> dados = jsonDecode(response.body);

    print("Codigo de status da api ${response.statusCode.toString()}");
    print('Resposta da Api');
    print('${response.body}');

    // Gerenciamento de estados do app

    setState(() {

      logradouro = dados['address'];
      bairro = dados['district'];
      cidade = dados['city'];
      ddd = dados['ddd'];
      estado = dados['state'];
      
    });

   }

    // função para limpar
   _limpar(){

    setState(() {
      ncep.text="";
      logradouro ="";
      bairro="";
      cidade = "";
      estado ="";
      ddd = "";
    });

   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('App aula 10'),
      ),

      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.number, // tipo do teclado
            decoration: InputDecoration(
              labelText: 'Digite o cep',
              
            ),
            
            controller: ncep,
          ),

          SizedBox(
            width: double.infinity, // ocupa toda a largura da tela
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                onPressed: _consultaCep, child: Text('Consultar')),
            ),
          ),
             

             // botao limpar

             SizedBox(
            width: double.infinity, // ocupa toda a largura da tela
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                onPressed: _limpar, child: Text('Limpar')),
            ),
          ),

          Text('Endereço: ', style: TextStyle(fontSize: 18),),
          Text('Logradouro: ${logradouro} ',style: TextStyle(fontSize: 18),),
          Text('Bairro ${bairro}', style: TextStyle(fontSize: 18),),
          Text('Cidade: ${cidade} - ${estado}', style: TextStyle(fontSize: 18),),
          Text('DDD: ${ddd}', style: TextStyle(fontSize: 18),)

        ],
      ),
    );
  }
}