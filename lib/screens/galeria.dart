import 'package:flutter/material.dart';
import 'package:proyecto_interfaces/models/Item3.dart';

class galeria extends StatelessWidget {

  final List<Item3> items = List.generate(
    24,
        (index) => Item3(imagePath: 'assets/images/image_$index.png', id: index),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galería'),
        backgroundColor: Color(0xfffc3d21),
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // Mostrando 4 imágenes por fila
            mainAxisSpacing: 10, // Espacio vertical entre tarjetas
            crossAxisSpacing: 10, // Espacio horizontal entre tarjetas
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              color: Color(0xff0b3d90),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.asset(
                  items[index].imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

