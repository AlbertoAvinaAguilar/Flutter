import 'package:flutter/material.dart';

class RegistroCuenta extends StatelessWidget {
  const RegistroCuenta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('RegistroCuenta'),
          elevation: 0,
        ),
        body: const Center(child: Text('Registrar cuenta')));
  }
}
