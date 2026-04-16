// importa biblioteca para poder criar os widgets
import 'package:apptb10/tela01.dart';
import 'package:flutter/material.dart';
// importa a biblioteca responsavel por criar animaçao
import 'package:animated_splash_screen/animated_splash_screen.dart';

// importa a biblioteca por criar a transição entre paginas
import 'package:page_transition/page_transition.dart';
void main() {
  runApp(TelaApp());
}

// Cria a classe Tela App do tipo stateless widget

class TelaApp extends StatelessWidget {
  const TelaApp({super.key}); // Construtor

  @override
  Widget build(BuildContext context) {
    // retorna um material app que permite criar as telas e widgets
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    // theme permite escolher o tema do app
    theme: ThemeData(
      useMaterial3: true,
      // permite personalizar as cores do app
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      // Cria um tema para o botao
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          // adiciona espaçamento ao aplicativo
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 12
          ),
          // forma retangular do botao
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          )
        )
      )
    ),
    // home 
    // Animated Splash Screen para criar animação
    home: AnimatedSplashScreen(
      splash: Icons.home, // poderia ser imagem, icone
      splashIconSize: 200, // tamanho do icone
      splashTransition: SplashTransition.scaleTransition, // aumenta e diminui o icone
      pageTransitionType: PageTransitionType.leftToRight,
      nextScreen: TelaHome(), // chama a segunda tela

      // cor de fundo
      backgroundColor: Colors.red,
      ),
      
   );
  }
}