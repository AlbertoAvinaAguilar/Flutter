import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Cards')),
        body: SingleChildScrollView(
            child: Column(
          children: const [
            itemOrden(),
            itemOrden(),
            itemOrden(),
            itemOrden(),
            itemOrden(),
            itemOrden(),
            itemOrden(),
            itemOrden(),
            itemOrden(),
            itemOrden(),
          ],
        ))

        //   ListView(
        //   padding: const EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 5),
        //   children: const [
        //     itemOrden(),
        //     itemOrden(),
        //     itemOrden(),
        //     itemOrden(),
        //     itemOrden(),
        //     itemOrden(),
        //   ],
        // )

        );
  }
}
