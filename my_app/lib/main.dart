import 'package:flutter/material.dart';
import 'package:my_app/screens/home_screen.dart';
import 'package:my_app/screens/listview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //el stateleswidget es estatico no cambia
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //home: HomeScreen(),
      home: Listview1Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
