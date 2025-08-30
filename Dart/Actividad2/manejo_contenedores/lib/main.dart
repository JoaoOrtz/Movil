import 'package:flutter/material.dart';
import 'package:manejo_contenedores/contenedor.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Image.asset('assets/images/importar-imagen-r.png', ),
            Icon(Icons.accessibility, size: 80, color: Colors.deepOrange,)
          ],
        )
      ),
    );
  }
}
