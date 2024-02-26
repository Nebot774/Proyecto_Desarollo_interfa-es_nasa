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
    switch (roverName) {
      case 'Sojourner':
        Navigator.push(context, MaterialPageRoute(builder: (context) => SojournerScreen()));
        break;
      case 'Insight':
        Navigator.push(context, MaterialPageRoute(builder: (context) => InsightScreen()));
        break;
      case 'Mars3':
        Navigator.push(context, MaterialPageRoute(builder: (context) => Mars3Screen()));
        break;
      case 'Ingenuity':
        Navigator.push(context, MaterialPageRoute(builder: (context) => IngenuityScreen()));
        break;
      case 'Opportunity':
        Navigator.push(context, MaterialPageRoute(builder: (context) => OpportunityScreen()));
        break;
      case 'Curiosity':
        Navigator.push(context, MaterialPageRoute(builder: (context) => CuriosityScreen()));
        break;
      case 'Perseverance':
        Navigator.push(context, MaterialPageRoute(builder: (context) => PerseveranceScreen()));
        break;
      case 'Spirit':
        Navigator.push(context, MaterialPageRoute(builder: (context) => SpiritScreen()));
        break;
      default:
      // Opción por defecto si no se reconoce el nombre
        break;
    }
  }
}
