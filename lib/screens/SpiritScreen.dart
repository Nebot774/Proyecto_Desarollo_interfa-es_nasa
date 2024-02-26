import 'package:flutter/material.dart';

class SpiritScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spirit'),
        backgroundColor: Color(0xfffc3d21),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0), // Ajusta este valor para controlar el tamaño de los bordes
          child: Image.asset(
            'assets/spirit.png', // Asegúrate de reemplazar esto con la ruta correcta a tu imagen
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}


