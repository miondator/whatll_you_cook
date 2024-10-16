import 'package:flutter/material.dart';
import 'receta_detallada_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recetas Novedades',
      theme: ThemeData(
        primaryColor:
            Colors.orange, // Color naranja para el fondo de la aplicación
        backgroundColor: Colors.orange[100], // Definir el color de fondo global
      ),
      home: RecetasNovedadesScreen(),
    );
  }
}

class RecetasNovedadesScreen extends StatefulWidget {
  @override
  _RecetasNovedadesScreenState createState() => _RecetasNovedadesScreenState();
}

class _RecetasNovedadesScreenState extends State<RecetasNovedadesScreen> {
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
            Text('Recetas Nuevas🔥',
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
      'imagen': 'assets/images/concha.jpg',
      'nombre': 'Concha Muerto',
      'descripcion':
          'Celebra este Día de Muertos con una fusión del Pan de Muerto y la Concha y prepara esta CONCHA MUERTO con Leche Condensada LA LECHERA. Te encantará.',
      'dificultad': 'Díficil',
      'porciones': 12,
      'tiempo': 107,
      'calorias': 836.9,
      'ingredientes':
          '1 1/2 Sobres de Levadura (11 g c/u)\n1 Cucharadita de Azúcar\n5 Cucharadas de Agua tibia\n5 1/2 Tazas de Harina de trigo pasada por un colador\n3/4 Taza de Azúcar\n1 Lata Leche Evaporada CARNATION CLAVEL (1 1/2 tazas)\n1 Huevo\n2 Yemas de huevo\n2 Barras de Mantequilla a temperatura ambiente (90 g c/u)\n2 Cucharadas de Esencia de azahar\n1 Taza de Manteca vegetal\n3/4 Taza de Azúcar glass\n1 Bolsa de Leche Condensada LA LECHERA (209 g)\n2 Tazas de Harina de trigo pasada por un colador\n1 Cucharadita de Polvo para hornear\n5 Cucharadas de Cocoa en polvo\n1 Huevo ligeramente batido para barnizar',
      'utensilios':
          'Cazo\nEnvoltura de plástico\nCuchara\nBatidora de mano\nNevera\nHorno',
      'preparacion':
          '\n¡A cocinar!\n\n1.- Horno precalentado a 180 °C.\n\n2.- Mezcla la levadura con 1 cucharadita de azúcar y el agua tibia, deja reposar en un lugar tibio hasta que doble su volumen.\n\n3.- Forma una fuente con 5 1/3 tazas de harina y los ¾ taza de azúcar; vierte en el centro la levadura fermentada, la Leche Evaporada CARNATION CLAVEL, 1 huevo, las yemas, la mantequilla y la esencia de azahar. Mezcla todos los ingredientes hasta formar una pasta.\n\n4.- Amásala y golpéala contra la mesa hasta que esté tersa, elástica y no se te pegue en los dedos. Colócala en un recipiente grande engrasado, cubre con plástico adherente y déjala reposar en un lugar tibio hasta que doble su volumen.\n\nForma\n\n5.- Para la pasta de azúcar, bate la manteca con el azúcar glass, la Leche Condensada LA LECHERA, 2 tazas de harina y el polvo para hornear.\n\n6.- Separa en dos partes iguales y a una añádele la cocoa, bate hasta integrar todos los ingredientes. Cubre con plástico adherente y refrigera por 10 minutos.\n\n7.- Forma 12 círculos para cubrir los panes con la pasta de cocoa y 24 tiras para los huesitos de 25 g c/u y 12 bolitas de 7 g c/u con la pasta blanca, coloca los huesitos y las bolitas en una charola con papel encerado y cubre con plástico adherente; refrigera.\n\n8.- Forma 12 bolitas con la masa del pan de 80 g c/u, colócalas en charolas engrasadas y enharinadas, cubre con plástico adherente y deja reposar de 10 a 15 minutos en un lugar tibio, barniza con el huevo, coloca un círculo de pasta de azúcar de cocoa, presiona ligeramente, realiza unos cortes con un cuchillo filoso y enharinado; deja reposar nuevamente hasta que doble su volumen.\n\nHornea\n\n9.- Forma el pan de muerto colocando dos huesitos cruzados sobre los panes que formaste y en la parte superior coloca una bolita para simular el cráneo. Hornea a 180 °C de 20 a 25 minutos. Retira del horno, deja enfriar y ofrece.'
    },
    {
      'imagen': 'assets/images/brownie.jpg',
      'nombre': 'Receta de Brownie Casero',
      'descripcion':
          '¿Buscas un antojo para tu tarde de postres? No te quedes con las ganas y cocina unos clásicos BROWNIES preparados con Leche Condensada LA LECHERA.',
      'dificultad': 'Fácil',
      'porciones': 6,
      'tiempo': 55,
      'calorias': 323.4,
      'ingredientes':
          '1 Barra de Mantequilla fundida (90 g)\n1/4 Taza de Leche Condensada LA LECHERA\n1 Huevo\n3/4 Taza de Alimento en Polvo para Preparar Bebida Sabor a Chocolate MORELIA PRESIDENCIAL\n2/3 Taza de Harina de trigo pasada por un colador\n1/2 Cucharadita de Polvo para hornear\n1/2 Taza de Frambuesas\n1/4 Taza de Azúcar glass\n6 Hojas de Menta fresca desinfectadas',
      'utensilios': 'Cazo\nBatidora\nHorno',
      'preparacion':
          '¡A cocinar!\n\nMezcla\n\n1.- Horno precalentado a 180 °C.\n\n2.- Mezcla la mantequilla con la Leche Condensada LA LECHERA, el huevo, el Alimento en Polvo para Preparar Bebida Sabor a Chocolate MORELIA PRESIDENCIAL, la harina y el polvo para hornear hasta integrar por completo.\n\nHornea\n\n3.- Vierte en un molde cubierto con papel encerado y hornea a 180 °C de 25 a 30 minutos; deja enfriar. Desmolda, corta en cuadros, decora con las frambuesas, el azúcar glass y las hojas de menta.\n\nOfrece\n\n4.- Ofrece.'
    },
    {
      'imagen': 'assets/images/chocoflan.jpg',
      'nombre': 'Chocoflan',
      'descripcion':
          'Prepara para el postre de hoy un delicioso CHOCOFLAN con la cremosidad de Leche Evaporada CARNATION CLAVEL y de Leche Condensada LA LECHERA.',
      'dificultad': 'Fácil',
      'porciones': 10,
      'tiempo': 137,
      'utensilios': 'Licuadora\nMolde de torta\nHorno\nPapel aluminio\nNevera',
      'ingredientes':
          '1 Taza de Cajeta\n1 Lata de Leche Evaporada CARNATION CLAVEL (1 1/2 tazas)\n3 Huevos\n1 Taza de Aceite de maíz\n1 Caja de Harina para preparar pastel sabor chocolate (432 g)\n1 Lata de Leche Condensada LA LECHERA\n1 Lata de Leche Evaporada CARNATION CLAVEL (1 1/2 tazas)\n5 Huevos\n3 Cucharaditas de Esencia de vainilla\n1 Taza de Fresas desinfectadas y cortadas en cuartos\n1/4 Taza de Nuez picada',
      'preparacion':
          '¡A cocinar!\n\nLicúa\n\n1.- Horno precalentado a 180 °C.\n\n2.- Engrasa y enharina un molde para pastel, cubre el fondo y las paredes con la cajeta. Licúa 1 lata de Leche Evaporada CARNATION CLAVEL con los 3 huevos, el aceite y la harina sabor chocolate hasta integrar por completo.\n\nHornea\n\n3.- Para el flan, licúa la Leche Condensada LA LECHERA con 1 lata de Leche Evaporada CARNATION CLAVEL, los 5 huevos y la esencia de vainilla. Vacía en el molde la mezcla del pastel de chocolate y encima, con ayuda de una cuchara vierte poco a poco la mezcla del flan. Cubre el molde con papel aluminio y hornea a 180 °C a baño María durante 1 ½ horas.\n\nSirve\n\n4.- Deja enfriar, desmolda y refrigera durante 30 minutos; decora con fresas y nuez picada. Ofrece.',
      'calorias': 753.6,
    },
  ];
}
