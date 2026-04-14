import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:appaula10/tela1.dart';
import 'package:flutter/material.dart'; // importa a biblioteca do material.dart
import 'package:page_transition/page_transition.dart'; // importa biblioteca de animaçao de pagina
void main() {
  runApp(TelaApp());
}

// Cria a classe Tela App do tipo stateless widget
class TelaApp extends StatelessWidget {
  const TelaApp({super.key}); // construtor

  @override
  Widget build(BuildContext context) {
    // retorna um material app que permite criar as telas e widgets
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // permite escolher o tema do aplicativo
      theme: ThemeData(useMaterial3: true,
      // permite personalizar as cores do app
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      // cria um tema para o botao
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          // adiciona espaçamento ao aplicativo
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
          // Forma retangular do botao
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
        )
      )
      ),

      // home
      // AnimatedSplashScreen - permite criar animação no app
      home: AnimatedSplashScreen(
        duration: 3000, // duração em segundos
        splash: Icons.home, // Poderia ser uma imagem, icone
        splashIconSize: 200, // Tamanho do icone
        splashTransition: SplashTransition.scaleTransition, // tipo de animaçao
        pageTransitionType: PageTransitionType.leftToRight,
         nextScreen: TelaHome(),
         // cor de fundo
         backgroundColor: Colors.red,
         
         ),
    );

    
  }
}