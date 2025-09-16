import 'package:flutter/material.dart';

class Encabezado extends StatelessWidget {
  const Encabezado({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 500,
          height: 69,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            color: Color(0xfff3f3f3),
          ),
          child: Row(
            children: [

              // Titulo
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Usuarios",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFFB20000),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 10, bottom: 2),
                child: Container(
                  width: 40,
                  height: 40,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/icons/userP.png",
                        width: 40,
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
