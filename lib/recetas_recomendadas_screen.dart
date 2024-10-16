import 'package:flutter/material.dart';
import 'receta_detallada_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recetas Recomendadas',
      theme: ThemeData(
        primaryColor: Colors.orange,
        backgroundColor: Colors.orange[100],
      ),
      home: RecetasRecomendadasScreen(),
    );
  }
}

class RecetasRecomendadasScreen extends StatefulWidget {
  const RecetasRecomendadasScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RecetasRecomendadasScreenState createState() =>
      _RecetasRecomendadasScreenState();
}

class _RecetasRecomendadasScreenState extends State<RecetasRecomendadasScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("What'll you cook?"),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('Recetas recomendadas✅',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: _recetas.length,
              itemBuilder: (BuildContext context, int index) {
                final receta = _recetas[index];
                return Card(
                  child: ListTile(
                    leading: Image.asset(
                      receta['imagen'],
                    ),
                    title: Text(receta['nombre']),
                    subtitle: Text(
                        '${receta['dificultad']} - ${receta['porciones']} porciones - ${receta['tiempo']} min'),
                    trailing:
                        Text('${receta['calorias'].toStringAsFixed(1)} kcal'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                RecetaDetalladaScreen(receta)),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.orange[100], // Color naranja claro para el fondo
    );
  }

  final List<dynamic> _recetas = [
    {
      'nombre': 'Salchichas con apio',
      'imagen': 'assets/images/salchichas.jpg',
      'descripcion':
          'Deliciosa botana para llevar con el sabor tradicional de Sazonador Líquido MAGGI y Salsa Tipo Inglesa CROSSE & BLACKWELL',
      'dificultad': 'Fácil',
      'porciones': 4,
      'tiempo': 10,
      'utensilios': 'Sartén',
      'ingredientes':
          '1 Pieza Cebolla filetead\n500 Gramos Salchicha cortadas en rodajas\n2 Cucharadas Aceite de maíz\n3 Piezas Jitomate sin semillas y cortados en cubos\n2 Cucharadas Sazonador Líquido MAGGI (200 ml)\n2 Cucharadas Salsa Tipo Inglesa CROSSE & BLACKWELL\n1 Manojo Cilantro fresco desinfectado y picado (100 g)\n1 Taza Apio picado',
      'preparacion':
          'Freír\n\n1.Calienta el aceite en una sartén y fríe la cebolla y las salchichas hasta que doren ligeramente, agrega los jitomates, el Sazonador Líquido MAGGI y la Salsa Tipo Inglesa CROSSE & BLACKWELL, mezcla y cocina durante 5 minutos.\n\nMezclar\n\n2.Retira las salchichas del fuego y mezcla con el cilantro y el apio.\n\nServir\n\n3.Sirve en un recipiente con tapa y disfruta.',
      'calorias': 416.2,
    },
    {
      'nombre': 'Rollitos suaves de jamón',
      'imagen': 'assets/images/rollitos.jpg',
      'descripcion':
          'Rollitos rellenos de verduras con el sabor tradicional de Media Crema NESTLÉ Deslactosada',
      'dificultad': 'Fácil',
      'porciones': 4,
      'tiempo': 10,
      'utensilios': 'Sartén',
      'ingredientes':
          '1 Botella Media Crema NESTLÉ Deslactosada\n1 Pieza Papa cocida y cortada en cubos\n1/2 Taza Verduras congeladas zanahorias y chícharos\n1/2 Manojo Cilantro fresco desinfectado y picado (50 g)\n1 Pieza Chile serrano picado\n1 Cucharadita Sal con cebolla en polvo\n16 Rodajas Jamón de pavo',
      'preparacion':
          'Mezclar\n\n1.- Mezcla la Media Crema NESTLÉ con la papa, las zanahorias y los chícharos descongelados, el cilantro, el chile serrano y la sal con cebolla.\n\nEnrollar\n\n2.- Coloca en una rebanada de jamón un poco del relleno de las verduras, enrolla y asegura con un palillo.\n\nServir\n\n3.- Sirve en un recipiente con tapa.',
      'calorias': 235.9,
    },
    {
      'nombre': 'Pastel explosión de fresas',
      'imagen': 'assets/images/pastelfresas.jpg',
      'descripcion':
          'Aprovecha las frutas de temporada y cocina un rico PASTEL EXPLOSIÓN de FRESAS preparado con Leche Condensada LA LECHERA para compartirlo en familia.',
      'dificultad': 'Díficil',
      'porciones': 12,
      'tiempo': 237,
      'utensilios':
          'Cazo\nHorno\nBatidora de mano\nBatidora\nBandeja de horno\nTabla de cortar\nCuchillo\nNevera',
      'ingredientes':
          '3/4 Taza de Aceite de maíz\n5 Limones (su ralladura)\n5 Huevos\n1 Taza de Leche Evaporada CARNATION CLAVEL\n1/2 Taza de Azúcar\n1 Cucharadita de Polvo para hornear\n1 1/2 Tazas de Harina para hot cakes\n1 Barra de Mantequilla a temperatura ambiente (90 g)\n2 Barras de Queso crema a temperatura ambiente (190 g c/u)\n2/3 Taza de Leche Condensada LA LECHERA\n2 Limones (su jugo)\n2 Limones (su ralladura)\n1/4 Sobre de Gelatina de sabor a fresa (8 g)\n3/4 Taza de Agua caliente\n10 Fresas desinfectadas y cortadas en rebanadas\n5 Merengues blancos\n3 Fresas desinfectadas\n1 Macarrón',
      'preparacion':
          'Hornea\n\n1.- Horno precalentado a 180 °C.\n\n2.- Para el pastel, licúa el aceite de maíz con la ralladura de 5 limones, los huevos, 1 taza de Leche Evaporada CARNATION CLAVEL, el azúcar, el polvo para hornear y la harina para hot cakes, vierte en un molde de 22 cm engrasado y enharinado; hornea a 180 °C de 45 a 50 minutos o hasta que al introducir un palillo este salga limpio; deja enfriar y desmolda. Retira la orilla y la superficie del bizcocho con ayuda de un cuchillo; corta a la mitad de forma vertical.\n\nBate\n\n3.- Para el betún, bate la mantequilla con el queso hasta acremar, añade la Leche Condensada LA LECHERA, el jugo y la ralladura de 2 limones hasta integrar por completo.\n\nForma\n\n4.- Disuelve la gelatina en el agua caliente y deja enfriar sin que cuaje. Aparte, forra la orilla de un aro ajustable para pastelería de 22 cm de diámetro x 18 cm de alto con acetato y colócalo sobre un plato grande. Forma el pastel colocando la mitad del bizcocho, cubre la orilla con las rodajas de fresa, rellena con el betún y el resto de las rebanadas de fresa, coloca la otra mitad del bizcocho y cubre la superficie con el betún restante. Vierte la gelatina sobre la superficie del pastel con ayuda de una cuchara y refrigera por 2 horas. Desmolda, decora con los merengues, las fresas y los macarrones. Ofrece.',
      'calorias': 509.1,
    },
  ];
}
