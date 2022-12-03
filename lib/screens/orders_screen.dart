import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          "Crea tu pedido",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: const <Widget>[
          Text('Carrusel para los productos'),
          Text('Aquí van los pedidos'),
        ],
      ),
    );
  }
}
