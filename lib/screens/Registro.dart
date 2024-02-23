import 'package:flutter/material.dart';

class Registro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
        backgroundColor: Color(0xfffc3d21),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondo_espacial.png'), // Ruta a tu imagen de fondo
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Registro',
                  style: TextStyle(
                    fontSize: 44,
                    fontWeight: FontWeight.bold,
                    color: Color(0xfff4f7fa), // Color del texto
                    fontFamily: 'Roboto',
                  ),
                ),
                SizedBox(height: 30), // Espacio entre el texto y el primer campo de texto
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Correo Electronico',
                    labelStyle: TextStyle(
                      color: Color(0xfff4f7fa), // Color del texto
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                SizedBox(height: 20), // Espacio entre los dos campos de texto
                TextField(
                  obscureText: true, // Para que sea un campo de contraseña
                  decoration: InputDecoration(
                    labelText: 'Usuario',
                    labelStyle: TextStyle(
                      color: Color(0xfff4f7fa), // Color del texto
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                SizedBox(height: 20), // Espacio entre los dos campos de texto
                TextField(
                  obscureText: true, // Para que sea un campo de contraseña
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    labelStyle: TextStyle(
                      color: Color(0xfff4f7fa), // Color del texto
                      fontFamily: 'Roboto',
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
