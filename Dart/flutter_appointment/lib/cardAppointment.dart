import 'package:flutter/material.dart';

class CardAppointment extends StatelessWidget {
  const CardAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          // El height puede ser ajustado o eliminado si usas un Column en el Container
          height: 200,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xFFF4F4F4),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Imagen de perfil
                      Image.asset(
                        "assets/icons/userP.png",
                        width: 60,
                        height: 60,
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Joao Estid Ortiz Cuello",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Container(
                                height: 25,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 3,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFF7DFF7B),
                                ),
                                child: const Text(
                                  "Activo",
                                  style: TextStyle(
                                    color: Color(0xFF168700),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                height: 25,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFFE8E8E8),
                                ),
                                child: const Text(
                                  "Administrador",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Espacio entre el encabezado y la información de contacto
                const SizedBox(height: 20),
                // Información de contacto
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/usarioC.png",
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "CC 1021806280",
                      style: TextStyle(color: Color(0xFF797979)),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/celular.png",
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "3008239274",
                      style: TextStyle(color: Color(0xFF797979)),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/email.png",
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "joaoesrtid@gmail.com",
                      style: TextStyle(color: Color(0xFF797979)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          // El height puede ser ajustado o eliminado si usas un Column en el Container
          height: 200,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xFFF4F4F4),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Imagen de perfil
                      Image.asset(
                        "assets/icons/userP.png",
                        width: 60,
                        height: 60,
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Danier Alvarez Agudelo",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Container(
                                height: 25,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 3,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0x68FF8888),
                                ),
                                child: const Text(
                                  "Inactivo",
                                  style: TextStyle(
                                    color: Color(0xFF870000),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                height: 25,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFFE8E8E8),
                                ),
                                child: const Text(
                                  "Cliente",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Espacio entre el encabezado y la información de contacto
                const SizedBox(height: 20),
                // Información de contacto
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/usarioC.png",
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "PPT 1022211220",
                      style: TextStyle(color: Color(0xFF797979)),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/celular.png",
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "3018232244",
                      style: TextStyle(color: Color(0xFF797979)),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/email.png",
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "danier@gmail.com",
                      style: TextStyle(color: Color(0xFF797979)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 20),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          // El height puede ser ajustado o eliminado si usas un Column en el Container
          height: 200,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xFFF4F4F4),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Imagen de perfil
                      Image.asset(
                        "assets/icons/userP.png",
                        width: 60,
                        height: 60,
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Samuel Cordoba Mendez",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Container(
                                height: 25,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 3,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0x68FF8888),
                                ),
                                child: const Text(
                                  "Inactivo",
                                  style: TextStyle(
                                    color: Color(0xFF870000),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                height: 25,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFFE8E8E8),
                                ),
                                child: const Text(
                                  "Técnico",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Espacio entre el encabezado y la información de contacto
                const SizedBox(height: 20),
                // Información de contacto
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/usarioC.png",
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "CC 192623200",
                      style: TextStyle(color: Color(0xFF797979)),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/celular.png",
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "3016222549",
                      style: TextStyle(color: Color(0xFF797979)),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/email.png",
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "samir@gmail.com",
                      style: TextStyle(color: Color(0xFF797979)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 40),

        Column(
          children: [
            Image.asset("assets/icons/Vector.png", width: 20, height: 20),
            Text("Cargar más Usuarios", style: TextStyle(
              color: Color(0xFFB20000)
            ),)
          ],
        ),

        const SizedBox(height: 40),

      ],
    );
  }
}
