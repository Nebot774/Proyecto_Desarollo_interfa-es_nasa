import 'package:flutter/material.dart';
import 'package:proyecto_interfaces/models/Item.dart';
import 'package:proyecto_interfaces/screens/imagen_del_dia.dart';
import 'package:proyecto_interfaces/screens/galeria.dart';
import 'package:proyecto_interfaces/screens/asteroides_cercanos.dart';
import 'package:proyecto_interfaces/screens/mars_rovers.dart';

class Home extends StatelessWidget {
  final List<Item> items = [
    Item(imagePath: 'assets/imagen_del_dia.png', text: 'Imagen del día', page: imagen_del_dia()),
    Item(imagePath: 'assets/asteroide.png', text: 'Asteroides cercanos a la tierra', page: asteroides_cercanos()),
    Item(imagePath: 'assets/mar_rover.png', text: 'Mars Rovers en Marte', page: mars_rovers()),
    Item(imagePath: 'assets/galeria_nasa.png', text: 'Galería', page: galeria()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Color(0xfffc3d21),
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) => items[index].page,
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      var begin = Offset(1.0, 0.0); // Comienza desde la derecha
                      var end = Offset.zero;
                      var curve = Curves.ease;

                      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                      var slideAnimation = animation.drive(tween);

                      return SlideTransition(
                        position: slideAnimation,
                        child: child,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 500), // Duración de la transición
                  ),
                );
              },
              child: Card(
                color: Color(0xff0b3d90),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(4)),
                        child: Image.asset(
                          items[index].imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        items[index].text,
                        style: TextStyle(
                          color: Color(0xfff4f7fa),
                          fontSize: 40,
                          fontFamily: 'Roboto',
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}


