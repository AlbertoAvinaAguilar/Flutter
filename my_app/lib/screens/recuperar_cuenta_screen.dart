import 'package:flutter/material.dart';

class RecuperarCuenta extends StatelessWidget {
  const RecuperarCuenta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('RecuperarCuenta'),
          elevation: 0,
        ),
        body: const Center(child: Text('Recuperar cuenta')));
  }
}
