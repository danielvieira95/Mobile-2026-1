import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProdutoScreen extends StatefulWidget {
  const ProdutoScreen({super.key});

  @override
  State<ProdutoScreen> createState() => _ProdutoScreenState();
}

class _ProdutoScreenState extends State<ProdutoScreen> {
  // Função void initState para exibir os dados assim que a tela for carregada
  void initState(){
    super.initState();
    leituradados();
  }

  // Cria variavel dado

  List dados =[];
  Future<void> leituradados()async{
    String url = 'http://10.109.83.10:3000/produtos';
    http.Response resposta = await http.get(Uri.parse(url));

    if(resposta.statusCode==200){
      setState(() {
        dados = jsonDecode(resposta.body) as List<dynamic> ; // Conversao dos produtos para uma lista no formato json
        print(dados);
      });
    }
    else{
      print(resposta.statusCode);
      throw Exception('Falha ao consumir API');
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('App aula 11'),
      ),

      body:  Center(
        child: ListView.builder(
          itemCount: dados.length,
          itemBuilder: (context,index){
            final item =dados[index];
            return ListTile(
            title: Text('Nome: ${item['nome']}',style: TextStyle(fontSize: 18),
            textAlign:TextAlign.center ,),
            subtitle: Column(
              children: [
                Text('Valor: R\$ ${item['valor']}',style: TextStyle(fontSize: 18),),
                Text('Qtde: ${item['qtde']}',style: TextStyle(fontSize: 18),)
              ],
            ),
            
            );
          }),
      ),
    );
  }
}