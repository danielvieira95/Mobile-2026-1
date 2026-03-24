import 'package:aula08/screens/tela1.dart';
import 'package:aula08/screens/tela2.dart';
import 'package:aula08/screens/tela3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(NavBottom());
}

// Cria a classe chamada NavBottom
class NavBottom extends StatelessWidget {
  const NavBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavScreen(),
    );
  }
}

// Cria a classe Statefull

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {

  // Cria uma variavel que quando cada icone do Bottom Navigator
  // For selecionado muda de tela

  int  selectindex =0;

  // constante que irá definir as características do texto do app

  static const TextStyle  optionStyle = TextStyle(fontSize: 30,fontWeight: FontWeight.bold);


  // Cria a lista de Widgets <Telas> que serão exibidos com base na seleção BottomNavigator

  static const List<Widget> _widgetOptions=<Widget>[
    Home(),
    CheckboxExample(),
    RadioButtonEx(),
    //Text('Index 0: Home',style: optionStyle,),
    Text('Index 1: School', style: optionStyle,),
    Text('Index 2: Business', style: optionStyle,),
    Text('Index 3: Chatbot ',style: optionStyle,)

  ];


  // cria uma função que será responsável por alterar o index da seleção de tela

  void onItemTapped(int index){
    setState(() {
      selectindex =index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicativo aula 08'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),

      body: Center(

        child: _widgetOptions.elementAt(selectindex),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectindex,
        selectedItemColor: Colors.white,
        onTap: onItemTapped,
        backgroundColor: Colors.red,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home
            ),
            label: 'Home',
            backgroundColor: Colors.red

            ),
             BottomNavigationBarItem(
            icon: Icon(
              Icons.school_outlined
            ),
            label: 'School',
            backgroundColor: Colors.blue

            ),

              BottomNavigationBarItem(
            icon: Icon(
              Icons.business
            ),
            label: 'Business',
            backgroundColor: Colors.purple

            ),

             BottomNavigationBarItem(
            icon: Icon(
              Icons.smart_toy_outlined
            ),
            label: 'Chatbot',
            backgroundColor: Colors.teal

            ),
            
            

        ]
        
          ),
      
      );

      
        
    
  }
}