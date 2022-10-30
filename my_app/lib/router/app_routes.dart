import 'package:flutter/material.dart';
import 'package:my_app/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'inicioSplash';

  static Map<String, Widget Function(BuildContext)> routes = {
    'inicioSplash': (BuildContext context) => const HomePage(
        "Bienvenido a RCE!", "RIVERA CORTES Y ESCAMILLA CONSULTORES A.C."),
    // 'inicioSplash': (BuildContext context) => const SplashScreen(),
    'homeLogin': (BuildContext context) => const HomeScreen(),
    'registroCuenta': (BuildContext context) => const RegistroCuenta(),
    'recuperarCuenta': (BuildContext context) => const RecuperarCuenta(),
  };
}
