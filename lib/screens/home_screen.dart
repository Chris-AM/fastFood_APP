import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: const <Widget>[
            Text('Aquí va lo que desees publicar')
        ],
      ),
    );
  }
}