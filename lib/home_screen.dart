import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle fontSize30 =
        const TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    int contador = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador de Clicks'),
        elevation: 3,
      ),

      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Numero de Clicks',
              style: fontSize30,
            ),
            Text('$contador',style: fontSize30)
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          print('Hola mundo');
        },
      ),

    );
  }
}