import 'package:flutter/material.dart';

class Buscar extends StatelessWidget {
  const Buscar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: 39,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 10),
          child: Image.asset(
             "assets/icons/search.png",
              width: 20,
              height: 20, 
          ),
          )
        ],
      ),
    );
  }
}
