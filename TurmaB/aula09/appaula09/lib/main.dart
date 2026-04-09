// importa a biblioteca que permite criar os widgets
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DashboardScreen(),
  ));
}

// Cria a classe do tipo Stateless
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  
  // polimorfismo que permite tratar as funções de forma diferente
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Cria o Drawer propriedade que permite criar um elemento lateral

      drawer: Drawer(
        child: ListView(
          // adicionando espaçamento com padding
          padding: EdgeInsets.zero,
          children: [
            // DrawerHeader
            DrawerHeader(
              decoration:BoxDecoration(
                color: Colors.brown
              ) ,
              child: Text('Menu',style:  TextStyle(color: Colors.white),)),
              ListTile(title: Text('Opção 1'),),
              ListTile(title: Text('Opção 2'),)
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        elevation: 5,
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true, // centraliza o titulo do aplicativo
        title: Row(
          children: [
            Image.asset('images/senai.png',height: 40,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('App Agro IoT',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,
              color: Colors.white),),
            ),

            // Spacer
            Spacer(),
            // Permite colocar a foto do usuario logado por exemplo
            CircleAvatar(backgroundColor: Colors.brown[100],
            child: Icon(Icons.person,color: Colors.brown,),)

          ],
        ),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Buscar ...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                )
              ),
            ),
          ),

          SizedBox(height: 30,),
          _DashboardButton(icon: Icons.analytics, label: 'Monitoramento', onTap: (){}),
          SizedBox(height: 10,),
          _DashboardButton(icon: Icons.settings_remote_outlined, label: 'Acionamento', onTap: (){}),
          
          SizedBox(height: 10,),
          _DashboardButton(icon: Icons.smart_toy_outlined, label: 'Chatbot', onTap: (){})
        ],
      ),
    


    );
  }
}


// Cria a classe Dashboard Button

class _DashboardButton extends StatelessWidget {

  // Cria atributos para a classe

  final IconData icon;
  final String label;
  final VoidCallback onTap;
  // cria o construtor
  const _DashboardButton({required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    // Widget novo
    return InkWell(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
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