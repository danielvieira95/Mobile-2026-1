import 'package:flutter/material.dart';
// biblioteca que permite requisição http
import 'package:http/http.dart' as http;
import 'dart:convert'; // biblioteca que permite tratar os json

class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {

  //  Cria variavel para armazenar o cep digitado pelo usuario

  TextEditingController ncep = TextEditingController();
  String? logradouro; // Converte para string apenas se a variavel logradouro nao for vazia
  String ? bairro;
  String ? cidade;
  String ? ddd;
  String ? estado;
   // Cria a função para cosultar o cep

   // async de função assincrona
   _consultaCep()async{

    // Cria a variavel com a url para consultar o Cep

    String url = "https://cep.awesomeapi.com.br/${ncep.text}"; //

    // Cria a variavel http response
    http.Response response; // variavel que vai armazenar a resposta da api
    response = await http.get(Uri.parse(url));

    // Realizar um parse da resposta da API
     Map<String,dynamic>dados = json.decode(response.body);

    setState(() {
      logradouro = dados['address'];
      bairro = dados['district'];
      cidade = dados['city'];
      ddd = dados['ddd'];
      estado = dados['state'];
      
    });

   
  print("Codigo de status da api ${response.statusCode.toString()}");
  print("Resposta da api");
  print("${response.body}");

   }


    
   // Função para limpar
   _limpar(){
    setState(() {
      ncep.text = "";
      logradouro = "";
      bairro = "";
      cidade = "";
      estado = "";
      ddd ="";

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
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Digite o Cep'
            ),
            controller: ncep,
          ),
          
          // Caixa
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                onPressed: _consultaCep, child: Text('Consultar')),
            ),
              width: double.infinity, // faz o botao ocupar a largura do app 
          ),
          

          // Caixa
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                onPressed: _limpar, child: Text('Limpar')),
            ),
              width: double.infinity, // faz o botao ocupar a largura do app 
          ),
          Text('Endereço: ',style: TextStyle(fontSize: 18),),
          Text('Logradouro: ${logradouro}',style: TextStyle(fontSize: 18),),
          Text('Bairro: ${bairro}',style: TextStyle(fontSize: 18),),
          Text('Cidade: ${cidade} - ${estado}',style: TextStyle(fontSize: 18),),
          Text('DDD: ${ddd}',style: TextStyle(fontSize: 18),)
        ],
      ),
    );
  }
}