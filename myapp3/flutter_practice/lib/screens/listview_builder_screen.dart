import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {
  final options = const [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15'
  ]; //Lista de string

  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lista desde otro screen'),
        ),
        //ListView builder crear una lista de forma perezosa viene
        //ListView separated crear una lista de forma perezosa viene
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(options[index]),
                  //trailing va un icono al final del title
                  trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  onTap: () {
                    final game = options[index];
                    print(game);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
