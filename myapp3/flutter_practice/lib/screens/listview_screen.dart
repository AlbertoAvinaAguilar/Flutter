import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lista desde otro screen'),
        ),
        body: ListView(
          children: const [
            ListTile(
              leading: CircleAvatar(
                  //leading es un icono que va antes de el title
                  backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2015/12/28/02/58/home-1110868_960_720.png"),
                  radius: 20),
              title: Text('Hola Mundo'),
            )
          ],
        ));
  }
}
