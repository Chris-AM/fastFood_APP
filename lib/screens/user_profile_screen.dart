import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          "User",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: const <Widget>[
          Text('Modificar datos del usuario'),
        ],
      ),
    );
  }
}
