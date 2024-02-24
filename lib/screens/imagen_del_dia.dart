import 'package:flutter/material.dart';

class imagen_del_dia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Imagen del Día'),
        backgroundColor: Color(0xfffc3d21),
      ),
      body: SingleChildScrollView( // Envuelve el contenido en un SingleChildScrollView
        child: Container(
          color: Colors.black, // Puedes cambiar el color del fondo si lo deseas
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/la_iamgen_del_dia.png', // Reemplaza con la ruta de tu imagen
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Fecha:2024-2-24', // Reemplaza con el título de tu imagen
                  style: TextStyle(
                    color: Color(0xfff4f7fa),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600, // Semi-bold
                    fontSize: 40,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Descripción:El módulo de aterrizaje robótico Odysseus de Intuitive Machines ha logrado el primer aterrizaje estadounidense en la Luna desde la misión Apolo 17 en 1972. Lanzado en un cohete SpaceX el 15 de febrero, el módulo de aterrizaje del tamaño de una cabina telefónica alcanzó la órbita lunar el día 21 y aterrizó en la superficie lunar. a las 6:23 pm ET el 22 de febrero. Su región de aterrizaje está a unos 300 kilómetros al norte del polo sur de la Luna, cerca de un cráter designado Malapert A. Descansando sobre su costado, el módulo de aterrizaje actualmente está recolectando energía solar y transmitiendo datos al centro de control de misión de Intuitive Machines en Houston. La misión marca el primer aterrizaje comercial sin tripulación en la Luna. Antes del aterrizaje, la cámara de Odysseus\u2019 capturó esta imagen de gran angular (las patas de aterrizaje se ven a la derecha) mientras volaba sobre el cráter Schomberger a unos 200 kilómetros de su lugar de aterrizaje. Odiseo todavía estaba a unos 10 kilómetros sobre la superficie lunar.', // Reemplaza con la descripción de tu imagen
                  style: TextStyle(
                    color: Color(0xfff4f7fa),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.normal, // Regular
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

