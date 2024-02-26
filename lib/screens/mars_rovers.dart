import 'package:flutter/material.dart';
import 'package:proyecto_interfaces/models/Item2.dart';

class mars_rovers extends StatelessWidget {
  final List<Item2> items = [
    Item2(imagePath: 'assets/sojouner.png',
        text: 'SOJOURNER',
        roverName: 'Sojourner'),
    Item2(
        imagePath: 'assets/INSIGHT.png', text: 'INSIGHT', roverName: 'Insight'),
    Item2(imagePath: 'assets/MARS3.png', text: 'MARS3', roverName: 'Mars3'),
    Item2(imagePath: 'assets/INGENUITY.png',
        text: 'INGENUITY',
        roverName: 'Ingenuity'),
    Item2(imagePath: 'assets/OPPORTUNITY.png',
        text: 'OPPORTUNITY',
        roverName: 'Opportunity'),
    Item2(imagePath: 'assets/CURIOSITY.png',
        text: 'CURIOSITY',
        roverName: 'Curiosity'),
    Item2(imagePath: 'assets/PERSEVERANCE.png',
        text: 'PERSEVERANCE',
        roverName: 'Perseverance'),
    Item2(imagePath: 'assets/SPIRIT.png', text: 'SPIRIT', roverName: 'Spirit'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mars Rovers en Marte'),
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
                // Llama a navigateToRoverPage para navegar a la pantalla del Mars Rover específico
                items[index].navigateToRoverPage(context);
              },
              child: Card(
                color: Color(0xff0b3d90),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.vertical(top: Radius
                            .circular(4)),
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
