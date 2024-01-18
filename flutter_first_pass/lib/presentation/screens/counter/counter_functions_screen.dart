import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterFunctionsScreen> {
 int clickCounter = 0;
 String wordClick = "cliks";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Funciones"),
        leading: IconButton(icon: const Icon(Icons.refresh), onPressed: () {  //icono antes del titulo
               clickCounter =0;
               setState(() {});
         },),
         actions: [
          IconButton(icon: const Icon(Icons.plus_one), onPressed: () {  //icono antes del titulo
               clickCounter ++;
               setState(() {});
         },),
         IconButton(icon: const Icon(Icons.exposure_minus_1), onPressed: () {  //icono antes del titulo
               clickCounter --;
               setState(() {});
         },),
         ],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              wordClick,
            ),
            Text(
              '$clickCounter',
              style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100), //Theme.of(context).textTheme.headlineMedium,
            ),

          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
      CustomFloatingButton(icon: Icons.refresh,tooltipText: "Restablecer",onPressed: () {
        setState(() {
          clickCounter =0;
        });
      },),
      const SizedBox(height: 10),
      CustomFloatingButton(icon: Icons.plus_one,tooltipText: "Aumentar", onPressed: () {
        setState(() {
          clickCounter ++;
          clickCounter==1?wordClick="click":wordClick="clicks";
        });
      },),
      const SizedBox(height: 10),
      CustomFloatingButton(icon: Icons.exposure_minus_1,tooltipText: "Disminuir", onPressed: () {
        setState(() {
          if(clickCounter ==0) return;
          clickCounter --;
          clickCounter==1?wordClick="click":wordClick="clicks";
        });
      },),],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class CustomFloatingButton extends StatelessWidget {

  final IconData icon;
  final String tooltipText;
  final VoidCallback? onPressed;

  const CustomFloatingButton({
    super.key, required this.icon, required this.tooltipText, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      tooltip: tooltipText,
      child: Icon(icon),
    );
  }
}