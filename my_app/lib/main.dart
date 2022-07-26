import 'package:flutter/material.dart';
import 'package:my_app/router/app_routes.dart';

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
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
