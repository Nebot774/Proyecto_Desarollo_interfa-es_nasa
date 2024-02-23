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
                width: 300, // Ancho fijo para el logo
                height: 300, // Alto fijo para el logo
                child: Image.asset('assets/logo_Nasa.png'), // Ruta a tu imagen de logo
              ),
              SizedBox(height: 20), // Espacio entre el logo y el título
              Text(
                'Interactúa con la NASA',
                style: TextStyle(
                  fontSize: 44,
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
                child: Text(
                  'Inicio de Sesión',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 3.0,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff0b3d90),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
              ), // Espacio entre los dos botones
              SizedBox(height: 20), // Espacio adicional arriba

              ElevatedButton(
                onPressed: () {
                  // Acción para el botón de registrarse
                },
                child: Text(
                  'Registrarse',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 3.0,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff0b3d90),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
