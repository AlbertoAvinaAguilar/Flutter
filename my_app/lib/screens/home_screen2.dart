import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //Aqui van las propiedades que vamos a manipular con e stateful widget en el setstage
  int counter = 0;

  void operacionesButtons(int option) {
    if (option == 1) {
      //aumentar
      counter++;
    } else if (option == 2) {
      //restar
      counter--;
    } else {
      //en 0
      counter = 0;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSize = TextStyle(fontSize: 30, fontWeight: FontWeight.w500);

    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeScreen'),
          elevation: 3.0,
        ),
        body: Center(
          //Alinea el elemento al centro clumna horizontal, row vertical
          child: Column(
            //En columna este se basa en orientacion horizontal
            //crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisSize: MainAxisSize.min, //Vertical
            mainAxisAlignment: MainAxisAlignment.center, //Coulmna en vertical
            children: <Widget>[
              const Text('Contador', style: fontSize),
              const Text('Otro texto', style: fontSize),
              Text('$counter', style: fontSize),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton:
            CustomFloatingActions(increaseFn: operacionesButtons));
  }
}

class CustomFloatingActions extends StatelessWidget {
  //separamos el widget para una mejor lectura del codigo e implementamos las funciones con argumentos para realizar las operaciones
  final Function increaseFn;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          onPressed: () {
            //Funcion equitativa a =>
            increaseFn(1);
          },
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_outlined),
          onPressed: () => increaseFn(3),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => increaseFn(2),
        ),
      ],
    );
  }
}
