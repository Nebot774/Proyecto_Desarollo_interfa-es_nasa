import 'package:flutter/material.dart';

class asteroides_cercanos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Datos específicos para la lista de acercamientos cercanos
    List<String> datosAcercamiento = [
      '1 de junio de 1900 (Mercurio): Velocidad relativa de 30.94 km/s; distancia de aproximación de 6,664,519 km.',
      '7 de julio de 1900 (Venus): Velocidad relativa de 31.78 km/s; distancia de aproximación de 21,193,326 km.',
      '27 de julio de 1900 (Tierra): Velocidad relativa de 23.86 km/s; distancia de aproximación de 32,572,329 km.',
      '11 de febrero de 1902 (Mercurio): Velocidad relativa de [velocidad]; distancia de aproximación de [distancia] km.',
      '2 de septiembre de 1903 (Tierra): Velocidad relativa de [velocidad]; distancia de aproximación de [distancia] km.',
      '26 de julio de 1904 (Tierra): Velocidad relativa de [velocidad]; distancia de aproximación de [distancia] km.',
      '13 de abril de 1907 (Venus): Velocidad relativa de [velocidad]; distancia de aproximación de [distancia] km.',
      '23 de agosto de 1907 (Tierra): Velocidad relativa de [velocidad]; distancia de aproximación de [distancia] km.',
      '17 de agosto de 1908 (Tierra): Velocidad relativa de [velocidad]; distancia de aproximación de [distancia] km.',
      '31 de julio de 1909 (Tierra): Velocidad relativa de [velocidad]; distancia de aproximación de [distancia] km.',
      '2 de septiembre de 1912 (Tierra): Velocidad relativa de [velocidad]; distancia de aproximación de [distancia] km.',
      '24 de julio de 1913 (Tierra): Velocidad relativa de [velocidad]; distancia de aproximación de [distancia] km.',
      '17 de enero de 1914 (Venus): Velocidad relativa de [velocidad]; distancia de aproximación de [distancia] km.',
      '12 de septiembre de 1915 (Mercurio): Velocidad relativa de [velocidad]; distancia de aproximación de [distancia] km.',
      '26 de agosto de 1916 (Tierra): Velocidad relativa de [velocidad]; distancia de aproximación de [distancia] km.',
      '22 de mayo de 1917 (Mercurio): Velocidad relativa de [velocidad]; distancia de aproximación de [distancia] km.',
      '9 de agosto de 1917 (Tierra): Velocidad relativa de [velocidad]; distancia de aproximación de [distancia] km.'
    ];


    return Scaffold(
      appBar: AppBar(
        title: Text('Asteroides cercanos a la Tierra', style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w500)),
        backgroundColor: Color(0xfffc3d21),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          _buildRichText('Id_Nombre: ', ['ID 3542519(2010 PK9)']),
                          _buildRichText('URL: ', ['https://ssd.jpl.nasa.gov/tools/sbdb_lookup.html#/?sstr=3542519']),
                          _buildRichText('Magnitud: ', [' Su magnitud absoluta es de 21.81.']),
                          _buildRichText('Diametro Estimado: ', ['En kilómetros: 0.115 a 0.258 km.']),
                          _buildRichText('Classificacion Peligrossidad: ', ['Se considera un asteroide potencialmente peligroso.Además, ha tenido numerosos acercamientos cercanos a diferentes cuerpos celestes, incluyendo Mercurio, Venus y la Tierra']),
                          _buildRichText('Datos Acercamiento Cercano: ', datosAcercamiento),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/asteroide2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/pie_foto_nasa.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRichText(String labelText, List<String> values) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: labelText,
            style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w600, color: Color(0xfff4f7fa)),
          ),
          ...values.map((value) => TextSpan(
            text: '\n$value',
            style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.normal, color: Color(0xfff4f7fa)),
          )).toList(),
        ],
      ),
    );
  }

}

