import 'package:flutter/material.dart';

class itemOrden extends StatelessWidget {
  const itemOrden({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Card(
      elevation: 6,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: size.width * 0.55,
              height: size.height * 0.2,
              color: Colors.amber,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('NÚMERO DE TRABAJO: 17',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text('INMUEBLE:0', style: TextStyle(fontSize: 16)),
                    Text('DERIVADA:0', style: TextStyle(fontSize: 16))
                  ],
                ),
              )),
          Container(
              width: size.width * 0.41,
              height: size.height * 0.2,
              color: Colors.blueAccent,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text('2022-08-15 12:30:00',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    Text('EN PROCESO', style: TextStyle(fontSize: 16)),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
