import 'package:flutter/material.dart';

class Bienvenido extends StatelessWidget {
  const Bienvenido({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/login/fondo.jpg"),
          fit: BoxFit.cover,
        )),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              color: const Color.fromARGB(133, 238, 239, 240),
              width: double.infinity,
              height: 100,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                      style: TextStyle(
                          fontSize: 40, color: Color.fromARGB(255, 51, 51, 51)),
                      "Bienvenidos"),
                ],
              ),
            ),
          ],
        ));
  }
}
