import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lista de usuarios")),
      body: Center(
        child: Container(width: 200, height: 100, color: Colors.black),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("Bienvenidos aQUI",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.amberAccent,
            backgroundColor: Colors.black,
            fontSize: 25.0,
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.italic,
            letterSpacing: 5.0,
            wordSpacing: 5.0,
            textBaseline: TextBaseline.alphabetic,
            height: 10.0,
            shadows: [
              Shadow(
                  color: Color.fromARGB(255, 223, 223, 223),
                  blurRadius: 16,
                  offset: Offset(1, 1))
            ]));
  }
}
