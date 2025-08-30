import 'package:flutter/material.dart';

class Estilo extends StatelessWidget {
  const Estilo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter layout demo'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Image.asset(
            'assets/images/images2.jfif', 
            fit: BoxFit.cover, 
            height: 240,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Título y calificación
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Oeschinen Lake Campground",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Kandersreg, Switzerland",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min, 
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 20), 
                        SizedBox(width: 4), 
                        Text("41", style: TextStyle(fontSize: 16)), 
                      ],
                    ),
                  ],
                ),
                
                SizedBox(height: 24),
                
                // Botones de acción
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.call, color: Colors.blue),
                        SizedBox(height: 4),
                        Text("CALL", style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.near_me, color: Colors.blue),
                        SizedBox(height: 4),
                        Text("ROUTE", style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.share, color: Colors.blue),
                        SizedBox(height: 4),
                        Text("SHARE", style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  ],
                ),
                
                SizedBox(height: 24),
                
                // Descripción
                Text(
                  "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. "
                  "Situated 1,678 meters above sea level, it is one of the larger Alpine Lakes. "
                  "A gondola ride from Kandersreg, followed by a half-hour walk through pasture "
                  "and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. "
                  "Activities enjoyed here include rowing, and riding the summer toboggan run.",
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}