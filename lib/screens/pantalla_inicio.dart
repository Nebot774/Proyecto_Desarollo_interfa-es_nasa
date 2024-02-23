import 'package:flutter/material.dart';

class PantallaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffc3d21), // Color hexadecimal para el AppBar
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondo_espacial.png'), // Ruta a tu imagen de fondo
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 100, // Ancho fijo para el logo
                height: 100, // Alto fijo para el logo
                child: Image.asset('assets/logo_Nasa.png'), // Ruta a tu imagen de logo
              ),
              SizedBox(height: 20), // Espacio entre el logo y el título
              Text(
                'Interactúa con la NASA',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xfff4f7fa), // Color del texto
                  fontFamily: 'Roboto',
                ),
              ),
              SizedBox(height: 20), // Espacio entre el título y los botones
              ElevatedButton(
                onPressed: () {
                  // Acción para el botón de inicio de sesión
                },
                child: Text('Inicio de Sesión', style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.bold,)),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff0b3d90), // Color del botón
                ),
              ),
              SizedBox(height: 10), // Espacio entre los dos botones
              ElevatedButton(
                onPressed: () {
                  // Acción para el botón de registrarse
                },
                child: Text('Registrarse', style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.bold,)),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff0b3d90), // Color del botón
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
