import 'package:flutter/material.dart';
import 'package:my_app/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'inicioSplash';

  static Map<String, Widget Function(BuildContext)> routes = {
    'inicioSplash': (BuildContext context) => const HomePage(),
    // 'inicioSplash': (BuildContext context) => const SplashScreen(),
    'homeLogin': (BuildContext context) => const HomeScreen(),
    'registroCuenta': (BuildContext context) => const RegistroCuenta(),
    'recuperarCuenta': (BuildContext context) => const RecuperarCuenta(),
  };
}
