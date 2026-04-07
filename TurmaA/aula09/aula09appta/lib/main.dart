import 'package:aula09appta/tela02.dart';
import 'package:aula09appta/tela03.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:  DashboardScreen(),
  ));
}

// Cria classe do tipo Stateless
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  // polimorfismo que permite tratar cada função  de forma particular
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Drawer propriedade do Scaffold que permite criar um elemento lateral
    drawer: Drawer(
      child:  ListView(
        // adicionando espaçamento com o padding
        padding:  EdgeInsets.zero,
        children: [
          // Widget DrawerHeader onde vamos colocar o titulo do Drawer
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.brown
            ),
            child: Text('Menu',style: TextStyle(color: Colors.white),),),
            ListTile(title: Text('Opção 1'),),
            ListTile(title: Text('Opção 2'),)
        ],
      ),
    ),
    appBar: AppBar(
      backgroundColor: Colors.red,
      elevation: 5,
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: true, // centraliza o titulo do app,
      title:Row(
        children: [
          Image.asset('images/senai.png',height: 40,),
          Padding(padding: EdgeInsets.all(12),
          child: Text('App Agro IoT',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,
          color: Colors.white
          ),),),

          
          Spacer(),
          // permite colocar a foto do usuario logado por exemplo
          CircleAvatar(
            backgroundColor: Colors.brown[100],
            child: Icon(Icons.person,color: Colors.brown,),
          )
          
        ],
      ),
    ),

    body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Buscar ...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30)
              )
            ),
          ),
        ),

        SizedBox(height: 30,),
        _DashboardButton(icon: Icons.analytics, label: 'Monitoramento', onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ColetaDadosScreen()));
        }),
        SizedBox(height: 10,),
        _DashboardButton(icon: Icons.settings_remote_outlined, label: 'Acionamento', onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Telaacionamento()));
        }),

        SizedBox(height: 10,),
        _DashboardButton(icon: Icons.smart_toy_outlined, label: 'Chatbot', onTap: (){})

      ],
    ),

    );
  }
}


// Cria a classe DashboardButton

class _DashboardButton extends StatelessWidget {

  // Cria atributos para a classe
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  // Cria construtor
  const _DashboardButton({required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    // Widget novo Inkwell
    return  InkWell(
      onTap: onTap,
      child:  Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            
          ),
          elevation: 5,
          child: Padding(padding: EdgeInsets.symmetric(vertical: 30,horizontal: 15),
          child: Row(
            children: [
              Icon(icon,color: Colors.brown,size: 40,),
              SizedBox(width: 16,),
              Text(label,style: TextStyle(fontSize: 18,color: Colors.brown),)
            ],
          ),),
          
          
        ),
      );
    
  }
}
