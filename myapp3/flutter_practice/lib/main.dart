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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Startup Name Generator'),
        ),
        body: const Center(
          //child: Text(mensaje), //pasamos la variable
          child:
              RandomWords(), //Utilizamos un statefulwidget que obtiene una palabra en ingles aleatoria
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  //_ indica privacidad para el solo uso en la clase
  final _suggestions = <WordPair>[]; // NEW
  final _biggerFont = const TextStyle(fontSize: 18); // NEW
  final _saved = <WordPair>{};

  @override
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random(); // NEW
    //return Text(wordPair.asPascalCase);
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        //isOdd retorna una división cuando i sea impar 1,3,5,7,9,11 NOTA inicia en 0
        if (i.isOdd) return const Divider();

        final index = i ~/ 2; // divide el i / 2 y lo pone en numero entero
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }

        final alreadySaved = _saved.contains(_suggestions[index]);
        return ListTile(
          title: Text(
            _suggestions[index].asPascalCase,
            style: _biggerFont,
          ),
          trailing: Icon(
            alreadySaved ? Icons.favorite : Icons.favorite_border,
            color: alreadySaved ? Colors.red : null,
            semanticLabel: alreadySaved ? 'Remove from saved' : 'Save',
          ),
          onTap: () {
            setState(() {
              if (alreadySaved) {
                _saved.remove(_suggestions[index]);
              } else {
                _saved.add(_suggestions[index]);
              }
            });
          },
        );
      },
    );
  }
}
