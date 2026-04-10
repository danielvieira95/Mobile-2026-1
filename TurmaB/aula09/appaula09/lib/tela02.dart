// criando a segunda tela do aplicativo

// importa o pacote  para poder criar os widgets
import 'package:flutter/material.dart';

// Cria a classe de sensores

class SensorData{
  final String title;
  final String value;
  final String status;
  final Color statusColor;
  final String imagePath;

  // Cria o construtor

  SensorData({required this.title, required this.value, required this.status, required this.statusColor, required this.imagePath});
}

//  Cria a tela 02

class ColetaDadosScreen extends StatefulWidget {
  const ColetaDadosScreen({super.key});

  @override
  State<ColetaDadosScreen> createState() => _ColetaDadosScreenState();
}

class _ColetaDadosScreenState extends State<ColetaDadosScreen> {

  // Cria lista com os sensores

  final List<SensorData>sensores = [
    // Primeiro sensor

    SensorData(
      title: 'Umidade do solo', 
      value: '80%', status: 'Bom',
       statusColor: Colors.blue,
        imagePath: 'images/1.png'),

        // Segundo sensor

    SensorData(title: 'Temperatura', 
    value: '25 ºC', 
    status: 'Bom',
     statusColor: Colors.blue,
      imagePath: 'images/2.png'),
      
      // Terceiro sensor
       SensorData(title: 'Nível pH', 
    value: '2', 
    status: 'Ruim',
     statusColor: Colors.red,
      imagePath: 'images/3.png'),



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        leading: IconButton(onPressed: ()=>Navigator.pop(context), 
        icon: Icon(Icons.arrow_back,color: Colors.brown,)),
        title: Text('Monitoramento',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      //  corpo do Scaffold

      body: ListView.builder(
        // precisa verificar o tamanho da lista de elementos
        itemCount: sensores.length,
        // context esta relacionado a tela e o index a quantidade de elementos
        itemBuilder: (context,index){
          final sensor = sensores[index];
          return SensorCard(sensor:sensor);

        }),
    );
  }
}


// Cria a classe sensor Card

class SensorCard extends StatelessWidget {
  final SensorData sensor;
  const SensorCard({super.key, required this.sensor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        margin: EdgeInsets.only(bottom: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              child: Image.asset(sensor.imagePath,height: 200,fit: BoxFit.cover,),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(sensor.title,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(sensor.value,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                  child: Container(                 
                  child: Text(sensor.status,style: TextStyle(color: sensor.statusColor,
                  fontWeight:FontWeight.bold ),),),
                )
              ],
      
            )
            
                ],
              ),
            ),
      
            
             
          ],
        ),
      ),
    );
  }
}
