import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
 int clickCounter = 0;
 String wordClick = "cliks";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
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
      floatingActionButton: FloatingActionButton(
        onPressed: (){

          clickCounter ++;
          clickCounter==1?wordClick="click":wordClick="clicks";
          setState(() {
            
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}