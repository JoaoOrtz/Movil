import 'package:flutter/material.dart';
import 'package:flutter_appointment/buscar.dart';
import 'package:flutter_appointment/cardAppointment.dart';

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        SizedBox(height: 10),
        const Buscar(),
        SizedBox(height: 10),
        const CardAppointment()

      ],
    );
  }
}