import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String titulo;
  final String subtitulo;

  // HomePage({Key? key}) : super(key: key);
  const HomePage(this.titulo, this.subtitulo, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title1 = Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
            style: const TextStyle(
                fontFamily: "Roboto-Bold",
                // fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Color.fromRGBO(255, 251, 251, .90)),
            titulo),
        Text(
            style: const TextStyle(
                fontFamily: "Roboto-Bold",
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Color.fromRGBO(240, 240, 240, .89)),
            subtitulo),
      ],
    );

    final contenido = Container(
        margin: const EdgeInsets.only(top: 84.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(115.0),
              child: const Image(
                  width: 150,
                  height: 150,
                  image: AssetImage("assets/login/logo.jpg")),
            ),
            title1,
          ],
        ));

    return MaterialApp(
      title: 'RCE',
      home: Scaffold(
          body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/login/fondo-blur.jpg"),
          fit: BoxFit.cover,
        )),
        child: contenido,
        // child: Stack(
        //   alignment: Alignment.center,
        //   children: [
        //     Container(
        //       alignment: Alignment.center,
        //       color: Color.fromARGB(133, 238, 239, 240),
        //       width: double.infinity,
        //       height: 100,
        //     ),
        //     Center(
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: const [
        //           Text(
        //               style: TextStyle(
        //                   fontSize: 40,
        //                   color: Color.fromARGB(255, 51, 51, 51)),
        //               "Bienvenidos"),
        //         ],
        //       ),
        //     ),
        //   ],
        // )
      )),
    );
  }
}
