import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class Cadastroprodutos extends StatefulWidget {
  const Cadastroprodutos({super.key});

  @override
  State<Cadastroprodutos> createState() => _CadastroprodutosState();
}

class _CadastroprodutosState extends State<Cadastroprodutos> {
  // cria as variaveis para cadastro dos produtos
  TextEditingController nomeprod = TextEditingController();
  TextEditingController valorprod = TextEditingController();
  TextEditingController qtde = TextEditingController();

  _cadastrarproduto()async{
    String url = "http://10.109.83.10:3000/produtos";
    // Cria estrutura de mensagem para cadastro dos produtos
    Map<String,dynamic>prod={
      "id":nomeprod.text,
      "nome":nomeprod.text,
      "valor":valorprod.text,
      "qtde":qtde.text
    };

    await http.post(Uri.parse(url),
    headers: <String,String>{
      'Content-type':'application/json; charset=UTF-8'
    },
    body: jsonEncode(prod)
    );
    nomeprod.text="";
    valorprod.text="";
    qtde.text="";

    showDialog(
      context: context,
       builder: (BuildContext){
        return AlertDialog(
          content: Text('Produto ${nomeprod.text} cadastrado !'),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              }, child: Text('Fechar'))
          ],
        );

       });

  }

  // Função para deletar um produto

  _deletarproduto(){
    // metodo para deletar um produto

    http.delete(Uri.parse('http://10.109.83.10:3000/produtos/${nomeprod.text}'));
    nomeprod.text="";
    showDialog(context: context, 
    builder: (BuilderContext){
      return AlertDialog(
        content: Text('Produto ${nomeprod.text} deletado !'),
        actions: [
          TextButton(
            onPressed: (){
              Navigator.pop(context);
            }, child: Text('Fechar'))
        ],
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blue,
        title: Text('App aula 11'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
                hintText: 'Digite o nome do produto'
              ),
              controller: nomeprod,
            ),
          ),

           Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
                hintText: 'Digite o valor do produto'
              ),
              controller: valorprod,
            ),
          ),


           Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
                hintText: 'Digite a quantidade do produto'
              ),
              controller: qtde,
            ),
          ),

          ElevatedButton(onPressed: _cadastrarproduto, child: Text('Cadastrar produto')),
          ElevatedButton(onPressed: _deletarproduto, child: Text('Deletar produto')),
          
        ],
        
        
      ),

    );
  }
}