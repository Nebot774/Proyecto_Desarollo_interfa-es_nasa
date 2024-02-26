import 'package:flutter/material.dart';
import 'screens/pantalla_inicio.dart';

void main() {
  runApp(MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación',
      debugShowCheckedModeBanner: false, // Esto quita la etiqueta de Debug
      home: PantallaInicio(),
    );
  }
}






