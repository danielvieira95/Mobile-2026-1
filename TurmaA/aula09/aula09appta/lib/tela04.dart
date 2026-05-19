// Criando tela do Chatbot

import 'package:flutter/material.dart'; // biblioteca que permite criar os widgets no flutter
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'dart:convert'; // biblioteca para tratar os json
import 'package:http/http.dart' as http; // biblioteca para fazer requisições http

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  // Cria a variavel para armazenar o que digitamos no textfield

  final TextEditingController _controller = TextEditingController();
  // Cria uma lista com mensagens 
  final List<Map<String,dynamic>> _messages =[]; 

  // Função para enviar mensagem para o Chatbot
  void _sendMessage()async{
    final apiKey = dotenv.env['Langflow_api'];
    final userMessage = _controller.text.trim(); // armazena o que usuario digitar e remove os espaços em branco
    String url ="http://10.0.2.2:7860/api/v1/run/111f4339-ee7a-4cd9-903b-da19aed235ca?stream=false";
     if(url == null || apiKey == null){
      throw Exception(
        "Langflow_Url ou LangFlow Api Key não encontrados no .env");
     }
     // pega o que o usuario digita e remove os espaços para montar a mensagem para ser enviada
    if(_controller.text.trim().isEmpty) return;
    setState(() {
      _messages.add({
        'text':userMessage,
        'isMe':true,
        'time': TimeOfDay.now().format(context),
      });
      _controller.clear();
    });

    try{
      final response = await http.post(Uri.parse(url),
      headers: {"Content-Type":"application/json","x-api-key":apiKey},
      body: jsonEncode(
        {
          "input_value":userMessage,
          "output_type":"chat",
          "input_type":"chat"
        }));

        if(response.statusCode==200){
          final decoded = jsonDecode(utf8.decode(response.bodyBytes)); // decodifica a mensagem recebida
          print("Resposta a API: $decoded");
          // Resposta do Chatbot
          final botReply = decoded["outputs"]?[0]?["outputs"]?[0]?["results"]?["message"]?["text"]??"Não consegui entender !";
          setState(() {
            _messages.add({
              'text':botReply,
              'isMe':false,
              'time':TimeOfDay.now().format(context)
            }
            );
          });
        }else{
          setState(() {
            _messages.add({
              'text':'Erro ao obter resposta do assistente',
              'isMe':false,
              'time':TimeOfDay.now().format(context)
            });
          });
        }      
    }catch(e){
      setState(() {
        _messages.add({
          'text':'Erro de conexão: $e',
          'isMe':false,
          'time':TimeOfDay.now().format(context)
        });
      });
    }

  }

  // Função para limpar as mensagens
  void _limparMessages(){
    setState(() {
      _messages.clear();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person),
          ),
          title: Text('Senai',style: TextStyle(color: Colors.white),),
          
        ),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          Expanded(
            child:
            ListView.builder(
              // tamanho da lista de mensagens
              itemCount: _messages.length,
              itemBuilder: (context,index){
                final msg = _messages[index];
                return MessageBubble(
                  text:msg['text'],
                  isMe:msg['isMe'],
                  time: msg['time']

                );

              })
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Digite sua mensagem',
                      border: InputBorder.none
                    ),
                  ),),
                  IconButton(
                    onPressed: _sendMessage, icon: Icon(Icons.send,color: Colors.teal,)),
                    IconButton(onPressed: _limparMessages, icon: Icon(Icons.clear,color: Colors.teal,))
                
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  // Cria variaveis e construtor
  final String text;
  final bool isMe;
  final String time;
  // Cria construtor
  const MessageBubble({required this.text, required this.isMe, required this.time, super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe? Alignment.centerRight: Alignment.centerLeft,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: isMe? Colors.green[100]: Colors.grey[300],
              borderRadius: BorderRadius.circular(12),
              
            ),
            child: Text(text),
          ),
          Text(time,style: TextStyle(fontSize: 10,color: Colors.grey),)
        ],
      ),
    );
  }
}