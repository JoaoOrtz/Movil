// Archivo: main.dart

import 'package:flutter/material.dart';
import 'package:flutter_appointment/cuerpo.dart';
import 'package:flutter_appointment/encabezado.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFE8E8E8),
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(69.0),
          child: Encabezado(),
        ),
        body: const SingleChildScrollView(
          child: Cuerpo(),
        ),
      ),
    );
  }
}
