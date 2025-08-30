import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Franja azul con el título
          Container(
            width: 2000,
            height: 100,
            color: Colors.blueAccent,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(16),
            child: const Text(
              "Hola bb",
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
          ),

          // Parte blanca con los cuadros
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.amber,
                width: 48,
                height: 48,
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.amber,
                width: 48,
                height: 48,
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.amber,
                width: 48,
                height: 48,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
