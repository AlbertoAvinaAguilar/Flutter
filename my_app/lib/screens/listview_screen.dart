import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  //Lista estatica de elementos
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListViewScreen'),
          elevation: 3.0,
        ),
        body: ListView(
          children: [
            //NOS PERMITE UNA LISTA DE WIDGETS
            ...options //RECORREMOS LA LISTA
                .map((game) => ListTile(
                      title: Text(game),
                      trailing: const Icon(Icons
                          .arrow_forward_ios_outlined), //Widget que nos permite mostrar un elemento a la derecha del titulo
                    ))
                .toList(),
          ],
        ));
  }
}
