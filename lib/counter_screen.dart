import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;
  TextStyle estilofuente30 =
      const TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter Scrren'), elevation: 3),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Numero de clicks",
            style: estilofuente30,
          ),
          Text(
            "$contador",
            style: estilofuente30,
          ),
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              child: const Text('+', style: TextStyle(fontSize: 24)),
              onPressed: () {
                setState(() {
                  contador++;
                });
              }),
              const SizedBox(width: 20),
          FloatingActionButton(
              child: const Text('-', style: TextStyle(fontSize: 24)),
              onPressed: () {
                setState(() {
                  (contador > 0) ? contador-- : 0;
                });
              }),
              const SizedBox(width: 20),
          FloatingActionButton(
              child: const Icon(Icons.refresh),
              onPressed: () {
                setState(() {
                  contador = 0;
                });
              }),
              
        ],
      ),
    );
  }
}
