import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
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

  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lista desde otro screen'),
        ),
        //ListView builder crear una lista de forma perezosa viene
        //ListView separated crear una lista de forma perezosa viene
        body: ListView(
          children: [
            //
            ...options
                .map((opciones) => ListTile(
                      leading: const CircleAvatar(
                          //leading es un icono que va antes de el title
                          backgroundImage: NetworkImage(
                              "https://cdn.pixabay.com/photo/2015/12/28/02/58/home-1110868_960_720.png"),
                          radius: 20),
                      title: Text(opciones),
                      //trailing va un icono al final del title
                      trailing: const Icon(Icons.add_box_rounded),
                    ))
                .toList()
          ],

          //Comentado porque iteraremos la lista de options que viene arriba
          // const [
          //   ListTile(
          //     leading: CircleAvatar(
          //         //leading es un icono que va antes de el title
          //         backgroundImage: NetworkImage(
          //             "https://cdn.pixabay.com/photo/2015/12/28/02/58/home-1110868_960_720.png"),
          //         radius: 20),
          //     title: Text('Hola Mundo'),
          //   )
          // ],
        ));
  }
}
