import 'package:flutter/material.dart';

class RecetaDetalladaScreen extends StatelessWidget {
  final dynamic receta;

  const RecetaDetalladaScreen(this.receta, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        title: Text(
          receta['nombre'],
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.orange,
        iconTheme: const IconThemeData(color: Colors.black), // Para que el ícono de regreso también sea negro
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                elevation: 4.0,
                child: Image.asset(receta['imagen']),
              ),
              const SizedBox(height: 16.0), // Espacio entre los dos Card
              // Card para la información
              Card(
                margin: const EdgeInsets.all(20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: <Widget>[
                    Text(
                      'Dificultad: ${receta['dificultad']}',
                      style: const TextStyle(color: Colors.black),
                    ),
                    Text(
                      'Porcion(es): ${receta['porciones']} persona(s)',
                      style: const TextStyle(color: Colors.black),
                    ),
                    Text(
                      'Tiempo: ${receta['tiempo']} minutos',
                      style: const TextStyle(color: Colors.black),
                    ),
                  ]),
                ),
              ),
              const SizedBox(height: 16.0), // Espacio entre los dos Card
              // Card para la información
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    alignment: Alignment.topLeft, // Alinea el texto a la izquierda
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Alinea el texto a la izquierda
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Descripción:',
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: '\n${receta['descripcion']}\n',
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Calorías:',
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text:
                                    '\n${receta['calorias'].toStringAsFixed(1)} kcal\n',
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Ingredientes:',
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: '\n${receta['ingredientes']}\n',
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Utensilios:',
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: '\n${receta['utensilios']}\n',
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Preparación:\n',
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: '${receta['preparacion']}',
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ), // Color naranja claro para el fondo
    );
  }
}
