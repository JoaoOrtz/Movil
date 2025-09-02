import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String title;
  final Color color;

  const SecondPage({
    super.key,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: color, // 🎯 EXPLICAR: Color dinámico según la animación
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context), // 🎯 EXPLICAR: Vuelve atrás
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              color.withOpacity(0.2), // 🎯 EXPLICAR: Opacidad dinámica
              color.withOpacity(0.4), // Gradiente basado en el color principal
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                _getIconForAnimation(title), // 🎯 EXPLICAR: Icono dinámico
                size: 80,
                color: color,
              ),
              const SizedBox(height: 24),
              Text(
                '¡Transición Exitosa!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: color, // 🎯 EXPLICAR: Color consistente con la animación
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Animación: $title', // 🎯 EXPLICAR: Muestra el tipo de animación
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () => Navigator.pop(context), // Cierra esta página
                style: ElevatedButton.styleFrom(
                  backgroundColor: color, // 🎯 EXPLICAR: Botón temático
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Volver atrás'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 🎯 EXPLICAR: Método que devuelve iconos según el tipo de animación
  // Muestra cómo podemos personalizar la UI basada en propiedades
  IconData _getIconForAnimation(String title) {
    switch (title) {
      case 'Fade Animation':
        return Icons.visibility; // Icono para fade
      case 'Scale Animation':
        return Icons.zoom_in; // Icono para scale
      case 'Slide Animation':
        return Icons.arrow_forward; // Icono para slide
      case 'Rotation Animation':
        return Icons.rotate_right; // Icono para rotation
      case 'Custom Animation':
        return Icons.animation; // Icono para custom
      default:
        return Icons.animation; // Icono por defecto
    }
  }
}