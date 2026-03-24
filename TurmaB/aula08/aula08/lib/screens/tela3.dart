import 'package:flutter/material.dart';

class RadioButtonEx extends StatefulWidget {
  const RadioButtonEx({super.key});

  @override
  State<RadioButtonEx> createState() => _RadioButtonExState();
}

class _RadioButtonExState extends State<RadioButtonEx> {
  // Cria uma variavel chamada select option
  int ? selectoption;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
         Container(width: 300,height: 300,
          child: Image.asset('images/senai.png'),
          ),
        RadioListTile<int>(
          title: Text('Opção 1'),
          value: 1, groupValue: selectoption, 
          onChanged: (value){
            setState(() {
              selectoption = value;
            });
          }),

          RadioListTile<int>(
          title: Text('Opção 2'),
          value: 2, groupValue: selectoption, 
          onChanged: (value){
            setState(() {
              selectoption = value;
            });
          }),

          RadioListTile<int>(
          title: Text('Opção 3'),
          value: 3, groupValue: selectoption, 
          onChanged: (value){
            setState(() {
              selectoption = value;
            });
          }),

          Text('Radio button opção:  $selectoption',style: TextStyle(fontSize: 18)),

         

      ],
    );
  }
}