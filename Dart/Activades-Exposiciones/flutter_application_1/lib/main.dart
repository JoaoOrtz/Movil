import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barra de Progreso con Círculo Animado',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const LinearProgressWithMovingCircle(),
    );
  }
}

class LinearProgressWithMovingCircle extends StatefulWidget {
  const LinearProgressWithMovingCircle({super.key});

  @override
  State<LinearProgressWithMovingCircle> createState() => _LinearProgressWithMovingCircleState();
}

class _LinearProgressWithMovingCircleState extends State<LinearProgressWithMovingCircle>
    with TickerProviderStateMixin {
  late AnimationController _progressController;
  late AnimationController _circleController;
  late Animation<double> _circleAnimation;
  bool _isProgressing = false;
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    
    // Controlador para la animación del círculo (siempre activa)
    _circleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat(reverse: true);
    
    // Animación para el movimiento del círculo
    _circleAnimation = Tween<double>(begin: -15, end: 15).animate(
      CurvedAnimation(
        parent: _circleController,
        curve: Curves.easeInOut,
      ),
    );
    
    // Controlador separado para el progreso
    _progressController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..addListener(() {
        if (_isProgressing) {
          setState(() {
            _progress = _progressController.value;
          });
          
          // Detener el progreso si llega al 100%
          if (_progress >= 1.0) {
            _isProgressing = false;
          }
        }
      });
  }

  void _toggleProgress() {
    setState(() {
      _isProgressing = !_isProgressing;
      if (_isProgressing) {
        _progressController.forward(from: _progress);
      } else {
        _progressController.stop();
      }
    });
  }

  void _resetProgress() {
    setState(() {
      _progress = 0.0;
      _isProgressing = false;
      _progressController.reset();
    });
  }

  @override
  void dispose() {
    _progressController.dispose();
    _circleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double barWidth = MediaQuery.of(context).size.width * 0.8;
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Barra de Progreso con Círculo Animado'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.deepPurple.shade100,
              Colors.blue.shade100,
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Título
                const Text(
                  'Barra de Progreso con Círculo en Movimiento',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                  textAlign: TextAlign.center,
                ),
                
                const SizedBox(height: 40),
                
                // Contenedor de la barra de progreso
                Container(
                  height: 40,
                  width: barWidth,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepPurple.withOpacity(0.3),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      // Fondo de la barra de progreso
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      
                      // Barra de progreso
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                        width: barWidth * _progress,
                        height: 40,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.deepPurple,
                              Colors.blue.shade700,
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      
                      // Círculo animado que siempre se mueve
                      AnimatedBuilder(
                        animation: _circleAnimation,
                        builder: (context, child) {
                          return Positioned(
                            left: (barWidth * _progress) - 15 + _circleAnimation.value,
                            child: Container(
                              width: 30,
                              height: 40,
                              alignment: Alignment.center,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.deepPurple.withOpacity(0.5),
                                      blurRadius: 5,
                                      spreadRadius: 1,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(height: 20),
                
                // Porcentaje de progreso
                Text(
                  '${(_progress * 100).toStringAsFixed(0)}%',
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
                
                const SizedBox(height: 40),
                
                // Botones de control
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Botón para iniciar/detener el progreso
                    ElevatedButton(
                      onPressed: _toggleProgress,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _isProgressing ? Colors.red : Colors.green,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 16,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            _isProgressing ? Icons.pause : Icons.play_arrow,
                            size: 24,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            _isProgressing ? 'Pausar' : 'Avanzar',
                            style: const TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    
                    const SizedBox(width: 20),
                    
                    // Botón para reiniciar
                    ElevatedButton(
                      onPressed: _resetProgress,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 16,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.refresh, size: 24),
                          SizedBox(width: 8),
                          Text(
                            'Reiniciar',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                
                const SizedBox(height: 30),
                
                // Indicador de estado
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        _isProgressing ? Icons.play_arrow : Icons.pause,
                        color: _isProgressing ? Colors.green : Colors.red,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        _isProgressing 
                          ? 'Progresando...' 
                          : 'Progreso pausado',
                        style: TextStyle(
                          fontSize: 16,
                          color: _isProgressing ? Colors.green : Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Icon(
                        Icons.motion_photos_on,
                        color: Colors.blue,
                      ),
                      const SizedBox(width: 4),
                      const Text(
                        'Círculo siempre animado',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(height: 20),
                
                // Información adicional
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'El círculo blanco siempre está en movimiento, incluso cuando el progreso está pausado.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}