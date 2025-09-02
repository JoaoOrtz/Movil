import 'package:flutter/material.dart';
import 'second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animaciones Nativas Flutter'),
        backgroundColor: Colors.blueAccent,
        elevation: 4, // Sombra para efecto de profundidad
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blueAccent, Colors.lightBlue],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 🎯 EXPLICAR: Botones con diferentes tipos de animación
              // Cada botón llama a un método específico de navegación
              _buildTransitionButton(
                context,
                'Fade Animation', // Animación de desvanecimiento
                Colors.red,
                Icons.visibility, // Icono representativo
                () => _navigateWithFade(context), // Callback con animación específica
              ),
              const SizedBox(height: 20),
              _buildTransitionButton(
                context,
                'Scale Animation', // Animación de escalado
                Colors.green,
                Icons.zoom_in,
                () => _navigateWithScale(context),
              ),
              const SizedBox(height: 20),
              _buildTransitionButton(
                context,
                'Slide Animation', // Animación de deslizamiento
                Colors.blue,
                Icons.arrow_forward,
                () => _navigateWithSlide(context),
              ),
              const SizedBox(height: 20),
              _buildTransitionButton(
                context,
                'Rotation Animation', // Animación de rotación
                Colors.orange,
                Icons.rotate_right,
                () => _navigateWithRotation(context),
              ),
              const SizedBox(height: 20),
              _buildTransitionButton(
                context,
                'Custom Animation', // Animación personalizada combinada
                Colors.purple,
                Icons.animation,
                () => _navigateWithCustom(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 🎯 EXPLICAR: Método reusable para construir botones
  // Este patrón evita código duplicado y mantiene consistencia
  Widget _buildTransitionButton(
    BuildContext context,
    String text,
    Color color,
    IconData icon,
    VoidCallback onPressed, // Función que se ejecuta al presionar
  ) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 24),
      label: Text(
        text,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // Color de fondo dinámico
        foregroundColor: Colors.white, // Color del texto e icono
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Bordes redondeados
        ),
        elevation: 4, // Sombra para efecto 3D
      ),
    );
  }

  // 🎯 EXPLICAR: Diferentes métodos de navegación con animaciones únicas

  // 1. ANIMACIÓN FADE (Desvanecimiento)
  void _navigateWithFade(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => const SecondPage(
          title: 'Fade Animation',
          color: Colors.redAccent,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          // 🎯 EXPLICAR: FadeTransition cambia la opacidad
          return FadeTransition(
            opacity: animation, // animation va de 0.0 a 1.0
            child: child,
          );
        },
        transitionDuration: const Duration(milliseconds: 800), // Duración controlable
      ),
    );
  }

  // 2. ANIMACIÓN SCALE (Escalado)
  void _navigateWithScale(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => const SecondPage(
          title: 'Scale Animation',
          color: Colors.greenAccent,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          // 🎯 EXPLICAR: ScaleTransition + Tween + CurvedAnimation
          return ScaleTransition(
            scale: Tween<double>(begin: 0.0, end: 1.0).animate(
              CurvedAnimation(parent: animation, curve: Curves.elasticOut),
              // Tween: Interpolación de valores
              // CurvedAnimation: Curva personalizada (efecto elástico)
            ),
            child: child,
          );
        },
        transitionDuration: const Duration(milliseconds: 600),
      ),
    );
  }

  // 3. ANIMACIÓN SLIDE (Deslizamiento)
  void _navigateWithSlide(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => const SecondPage(
          title: 'Slide Animation',
          color: Colors.blueAccent,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          // 🎯 EXPLICAR: SlideTransition con Offset
          const begin = Offset(1.0, 0.0); // Comienza fuera de pantalla a la derecha
          const end = Offset.zero;        // Termina en posición normal (0,0)
          const curve = Curves.easeInOut; // Curva suave de entrada y salida

          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);
          // 🎯 EXPLICAR: animation.drive() conecta la animación con el tween

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
        transitionDuration: const Duration(milliseconds: 500),
      ),
    );
  }

  // 4. ANIMACIÓN ROTATION (Rotación) + SCALE (Combinada)
  void _navigateWithRotation(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => const SecondPage(
          title: 'Rotation Animation',
          color: Colors.orangeAccent,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          // 🎯 EXPLICAR: Animaciones combinadas (anidadas)
          return RotationTransition(
            turns: Tween<double>(begin: 0.0, end: 1.0).animate(
              CurvedAnimation(parent: animation, curve: Curves.easeInOut),
              // turns: 1.0 = 360° de rotación
            ),
            child: ScaleTransition(
              scale: Tween<double>(begin: 0.5, end: 1.0).animate(
                CurvedAnimation(parent: animation, curve: Curves.easeOut),
                // Scale: de 50% a 100% de tamaño
              ),
              child: child,
            ),
          );
        },
        transitionDuration: const Duration(milliseconds: 700),
      ),
    );
  }

  // 5. ANIMACIÓN CUSTOM (Personalizada) - SLIDE + FADE
  void _navigateWithCustom(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => const SecondPage(
          title: 'Custom Animation',
          color: Colors.purpleAccent,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          // 🎯 EXPLICAR: Combinación de múltiples transiciones
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0.0, 1.0), // Desde abajo
              end: Offset.zero,              // Hasta posición normal
            ).animate(CurvedAnimation(parent: animation, curve: Curves.fastOutSlowIn)),
            child: FadeTransition(
              opacity: animation, // Se desvanece simultáneamente
              child: child,
            ),
          );
        },
        transitionDuration: const Duration(milliseconds: 600),
      ),
    );
  }
}