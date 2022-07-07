import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  //Lista estatica de elementos
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListViewScreen'),
          elevation: 3.0,
        ),
        body: ListView.separated(
          itemCount:
              options.length, //Esto es requerido en un listview separated
          itemBuilder: (context, i) => ListTile(
            //Esto es requerido
            title: Text(options[i]),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.indigo,
            ),
            onTap: () {
              final game = options[i];
              print(game);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
