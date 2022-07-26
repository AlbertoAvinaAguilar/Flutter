import 'package:flutter/material.dart';
import 'package:my_app/screens/screens.dart';

void main() => runApp(const SplashScreen());

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: TextButton(
        onPressed: () {
          final route =
              MaterialPageRoute(builder: (context) => const HomeScreen());

          Navigator.pushReplacement(context,
              route); //este pushReplacement limpia o destruye la vista anterior como la pila anterior
        },
        child: const Text('Ir a home'),
      ),
    ));
  }
}
