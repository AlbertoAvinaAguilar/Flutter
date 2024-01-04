import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Esto permite que cualquier widget en la aplicación obtenga el estado mediante el ChangeNotifierProvider
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

//puede notificar a otros sobre sus propios cambios
class MyAppState extends ChangeNotifier {
  //Aqui va la logica empresarial o de negocio
  var current = WordPair.random(); //variable de tipo texto
  int numero = 0; //variable de tipo numero

  var favorites = <WordPair>[]; //Lista de tipo WordPair

  void getNext() {
    //Metodo encargado de generar otra palabra aleatoria
    current = WordPair.random();
    notifyListeners(); //Metodo de ChangeNotifier que cambia el estado de la aplicacion
  }

  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //build() método que se llama automáticamente cada vez que cambian las circunstancias del widget
    var appState = context.watch<
        MyAppState>(); //Instancia de el ChangeNotifier provider, mediante watch realiza un seguimiento de locas cambios del estado
    var pair = appState.current;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('A random idea:'),
            BigCrad(pair: pair),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    appState.getNext();
                    print('button pressed!');
                  },
                  child: Text('Next'),
                ),
                ElevatedButton(
                  onPressed: () {
                    appState.getNext();
                    print('button pressed!');
                  },
                  child: Text('Next'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BigCrad extends StatelessWidget {
  const BigCrad({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context); //Tema principal accedemos a el

    var style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );

    return Card(
      color:
          theme.colorScheme.primary, //Asignamos el color de este tema a la card
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          pair.asLowerCase,
          style: style,
        ),
      ),
    );
  }
}
