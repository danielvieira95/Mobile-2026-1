import 'package:aula11app/screens/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.white,
      primarySwatch: Colors.blue,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white
        )
      )
    ),
    home: Login(),

  ));
}

