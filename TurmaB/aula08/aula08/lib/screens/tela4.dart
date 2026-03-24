import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  // cria uma variavel do tipo TextEditingController _controller
  final TextEditingController _controller = TextEditingController();

  // Cria lista com mensagens
  final List<Map<String,dynamic>> _messages=[
    {
      'text': 'Tipos de solos agricola',
      'isMe':true,
      'time':'5:20 PM',
    },

    {
      'text': 'Calcario e Argiloso',
      'isMe':false,
      'time':'5:20 PM',
    },
   

   {
      'text': 'Qual a melhor semente para plantar em maio',
      'isMe':true,
      'time':'5:22 PM',
    },

    {
      'text': 'Agro e IoT',
      'isMe':false,
      'time':'5:25 PM',
    },


    

  ];

  void _sendMessage(){
    if(_controller.text.trim().isEmpty)return;
    setState(() {
      _messages.add({
        'text':_controller.text.trim(),
        'isMe':true,
        // pega a hora da mensagem digitada
        'time':TimeOfDay.now().format(context)
      });
      _controller.clear();
    });
  }

  

    // Função para limpar as mensagens
    void _limparMensagens(){
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
          title: Text('Chatbot',style: TextStyle(color: Colors.white),),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: _messages.length,
              itemBuilder: (context,index){
                final msg = _messages[index];
                return  MessageBuble(
                  text: msg['text'], isMe: msg['isMe'], time: msg['time']);
              })
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 8,vertical: 4
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          hintText: 'Digite sua mensagem',
                          border: InputBorder.none
                        ),
                        
                      ),
                      
                      ),
                      IconButton(onPressed: _sendMessage, icon: Icon(Icons.send,color: Colors.teal,)),
                      IconButton(onPressed: _limparMensagens, icon: Icon(Icons.clear,color: Colors.teal,)),
                  ],
                ),
                )
        ],
      ),
    );
  }
}



class MessageBuble extends StatelessWidget{
  // cria variaveis e construtor 

  final String text;
  final bool isMe;
  final String time;
  const MessageBuble({super.key, required this.text, required this.isMe, required this.time});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Align(
      alignment: isMe? Alignment.centerRight:Alignment.center,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: isMe?Colors.green[100]:Colors.grey[300],
              borderRadius: BorderRadius.circular(12)
            ),
            child: Text(text),
          ),
          Text(time,style: TextStyle(fontSize: 10,color: Colors.grey),)
        ],
      ),
    );
  }
}