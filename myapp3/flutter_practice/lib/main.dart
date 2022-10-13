import 'package:flutter/material.dart';
import 'package:flutter_practice/screens/card.dart';

import 'screens/listview_builder_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //const mensaje = 'Hola Mundo'; //Creacion de una variable

    return MaterialApp(
      title: 'Startup Name Generator',
      home: CardScreen(),

      theme: ThemeData.light().copyWith(
          appBarTheme:
              const AppBarTheme(color: Color.fromARGB(255, 12, 87, 148))),

      // Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Startup Name Generator'),
      //   ),
      //   body: const Center(
      //     //child: Text(mensaje), //pasamos la variable
      //     child:
      //         RandomWords(), //Utilizamos un statefulwidget que obtiene una palabra en ingles aleatoria
      //   ),
      // ),
    );
  }
}
