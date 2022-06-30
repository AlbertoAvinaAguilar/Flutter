import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle fontSize30 = const TextStyle(fontSize: 30);

    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeScreen'),
          elevation: 3.0,
        ),
        body: Center(
          //Alinea el elemento al centro clumna horizontal, row vertical
          child: Column(
            //En columna este se basa en orientacion horizontal
            //crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisSize: MainAxisSize.min, //Vertical
            mainAxisAlignment: MainAxisAlignment.center, //Coulmna en vertical
            children: <Widget>[
              Text('Contador', style: fontSize30),
              Text('Otro texto', style: fontSize30),
              const Text('0',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
            ],
          ),
        ));
  }
}
