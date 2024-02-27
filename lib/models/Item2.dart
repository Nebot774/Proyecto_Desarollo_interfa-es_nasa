import 'package:flutter/material.dart';
import 'package:proyecto_interfaces/screens/SojournerScreen.dart';
import 'package:proyecto_interfaces/screens/InsightScreen.dart';
import 'package:proyecto_interfaces/screens/Mars3Screen.dart';
import 'package:proyecto_interfaces/screens/IngenuityScreen.dart';
import 'package:proyecto_interfaces/screens/OpportunityScreen.dart';
import 'package:proyecto_interfaces/screens/CuriosityScreen.dart';
import 'package:proyecto_interfaces/screens/PerseveranceScreen.dart';
import 'package:proyecto_interfaces/screens/SpiritScreen.dart';


class Item2 {
  final String imagePath;
  final String text;
  final String roverName; // Campo para identificar el Mars Rover o vehículo

  Item2({required this.imagePath, required this.text, required this.roverName});

  void navigateToRoverPage(BuildContext context) {
    Widget? page; // Hacer 'page' nullable para manejar el caso default

    switch (roverName) {
      case 'Sojourner':
        page = SojournerScreen();
        break;
      case 'Insight':
        page = InsightScreen();
        break;
      case 'Mars3':
        page = Mars3Screen();
        break;
      case 'Ingenuity':
        page = IngenuityScreen();
        break;
      case 'Opportunity':
        page = OpportunityScreen();
        break;
      case 'Curiosity':
        page = CuriosityScreen();
        break;
      case 'Perseverance':
        page = PerseveranceScreen();
        break;
      case 'Spirit':
        page = SpiritScreen();
        break;
      default:
      // Opción por defecto si no se reconoce el nombre. Podemos optar por no hacer nada aquí.
      // Por ejemplo, regresar directamente para evitar navegación sin destino.
        return;
    }

    if (page != null) {
      Navigator.of(context).push(PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => page!,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          // Definir la animación de rotación
          var tween = Tween(begin: 0.0, end: 1.0);
          var curve = Curves.easeInOut;
          var curvedAnimation = CurvedAnimation(
            parent: animation,
            curve: curve,
          );

          return RotationTransition(
            turns: Tween(begin: 0.0, end: 1.0).animate(curvedAnimation),
            child: child,
            alignment: Alignment.center, // El punto de origen de la rotación
          );
        },
      ));
    }


  }
}

