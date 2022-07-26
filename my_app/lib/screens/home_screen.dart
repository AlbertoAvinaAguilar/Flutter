import 'package:flutter/material.dart';
import 'screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeScreen'),
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // final route = MaterialPageRoute(
                //     builder: (context) => const RegistroCuenta());

                Navigator.pushNamed(context, 'registroCuenta');
              },
              child: const Text('Registrar'),
            ),
            TextButton(
              onPressed: () {
                // final route = MaterialPageRoute(
                //     builder: (context) => const RecuperarCuenta());

                Navigator.pushNamed(context, 'recuperarCuenta');
              },
              child: const Text('Recuperar contraseña'),
            ),
          ],
        ));
  }
}
