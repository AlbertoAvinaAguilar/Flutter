import 'package:flutter/material.dart';
import 'package:my_app/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //el stateleswidget es estatico no cambia
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomeScreen(),
      //home: const SplashScreen(),
      initialRoute: 'inicioSplash',
      routes: {
        'inicioSplash': (BuildContext context) => const SplashScreen(),
        'homeLogin': (BuildContext context) => const HomeScreen(),
        'registroCuenta': (BuildContext context) => const RegistroCuenta(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
