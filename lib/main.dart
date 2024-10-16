import 'package:flutter/material.dart';
import 'receta_detallada_screen.dart';
import 'splash_screen.dart';
import 'recetas_novedades_screen.dart';
import 'recetas_recomendadas_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recetas',
      theme: ThemeData(
        primaryColor:
            Colors.orange, // Color naranja para los elementos primarios
        backgroundColor:
            Colors.orange[100], // Color naranja claro para el fondo
      ),
      home: const SplashScreen(), // Cambia la ruta inicial a SplashScreen
      routes: {
        '/home': (context) => HomeScreen(),
        // ignore: prefer_const_constructors
        '/recetas_recomendadas': (context) => RecetasRecomendadasScreen(),
        '/recetas_novedades': (context) => RecetasNovedadesScreen(),
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("What'll you cook?"),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('Recetas',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  child: const Text('Recomendadas✅'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RecetasRecomendadasScreen()),
                    );
                  },
                ),
                ElevatedButton(
                  child: Text('Novedades🔥'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RecetasNovedadesScreen()),
                    );
                  },
                ),
              ],
            ),
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
                      width: 100,
                    ),
                    title: Text(receta['nombre']),
                    subtitle: Text(
                        '${receta['dificultad']} - ${receta['porciones']} porciones - ${receta['tiempo']} min'),
                    trailing: Text('${receta['calorias']} kcal'),
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
      'imagen': 'assets/images/hotcakes.jpg',
      'descripcion':
          'Un clásico de los desayunos: HOT CAKES preparados con LECHE EVAPORADA CARNATION CLAVEL y el toque de LA LECHERA. La receta que no puede faltar.',
      'nombre': 'Hot Cakes Clásicos',
      'dificultad': 'Fácil',
      'porciones': 6,
      'tiempo': 25,
      'calorias': 139.1,
      'ingredientes':
          '3/4 Taza de Leche Evaporada CARNATION CLAVEL\n1 Huevo\n2 Cucharadas de mantequilla, fundida\n1 Cucharadita de esencia de vainilla\n1 Taza de harina para hot cakes\n2 Cucharadas de mantequilla\n1/2 Taza de moras azules\n1/2 Taza de fresas, desinfectadas y cortadas en cuartos\n6 Hojas de menta, desinfectadas\n1 Envase de Leche Condensada LA LECHERA Sirve Fácil',
      'utensilios':
          'Sarten\nLicuadora\nBowl\nCazo\nBatidora\nCucharón\nEspátula',
      'preparacion':
          '1.- Mezcla la Leche Evaporada CARNATION CLAVEL con el huevo, 2 cucharadas de mantequilla fundida, la esencia de vainilla y la harina para hot cakes.\n\n2.- Calienta una sartén, agrega un poco de mantequilla y con ayuda de un cucharón vierte un poco de la mezcla para formar los hot cakes; cocina por ambos lados y repite el procedimiento con el resto de la preparación.\n\n3.- Sirve los hot cakes, decora con moras azules, fresas, las hojas de menta y con un poco de Leche Condensada LA LECHERA Sirve Fácil. Ofrece.',
    },
    {
      'imagen': 'assets/images/licuadomanzana.jpg',
      'nombre': 'Licuado de Manzana y Canela',
      'descripcion':
          'Aprovecha tus frutas de temporada y prepara para tus desayunos un práctico LICUADO de MANZANA CANELA hecho con colágeno. ¡Te encantará!',
      'dificultad': 'Fácil',
      'porciones': 2,
      'tiempo': 4,
      'utensilios': 'Licuadora\nVaso',
      'calorias': 226.1,
      'ingredientes':
          '2 Tazas de leche, descremada\n1/2 Cucharadita de Canela molida\n2 Manzanas verdes o rojas, sin semilla',
      'preparacion':
          '1.- Licúa las manzanas, la canela y la leche.\n2.- Sirve en vasos.\n3.- Disfruta'
    },
    {
      'imagen': 'assets/images/chilaquilesverdes.jpg',
      'descripcion':
          'Una receta fácil e imperdible para el desayuno: ¡CHILAQUILES VERDES! Preparados con tomate y chile serrano, acompañados de pollo y MEDIA CREMA NESTLÉ.',
      'nombre': 'Chilaquiles Verdes',
      'dificultad': 'Intermedio',
      'porciones': 4,
      'tiempo': 20,
      'calorias': 771.5,
      'ingredientes':
          '600 Gramos de tomates verdes cocidos\n1/4 De pieza de cebolla mediana, cocida\n2 Dientes de ajo cocidos\n2 Chiles serrano cocidos\n1 1/2 Tazas de agua\n5 Ramas de cilantro desinfectado\n1 1/2 Cucharadas de consomé de pollo en polvo\n1 Cucharada de aceite vegetal\n1 Bolsa de totopos (350 g)\n1 Pechuga de pollo cocida y deshebrada (500 g)\n1 Envase de Media Crema NESTLÉ refrigerada (190 g)\n200 Gramos de queso fresco desmoronado',
      'utensilios':
          'Tarro\nLicuadora\nCuchara\nCuchara de madera\nBatidora\nCucharón\nEspátula',
      'preparacion':
          'Prepara la salsa\n1.- Para la salsa, licúa los tomates con la cebolla, los ajos, los chiles, el agua, el cilantro y el consomé de pollo. Calienta el aceite, vierte lo que licuaste y cocina hasta que hierva moviendo ocasionalmente.\nMezcla con los totopos\n2.- Agrega los totopos a la salsa y mezcla suavemente para que absorban un poco de salsa.\nPrepara tus chilaquiles\n3.- Sirve los chilaquiles y baña con un poco más de salsa. Añade el pollo, la Media Crema NESTLÉ y el queso. Ofrece.'
    },
    {
      'imagen': 'assets/images/arrozrojo.jpg',
      'descripcion':
          'Cocina para tu menú de esta semana este delicioso ARROZ ROJO preparado con CONSOMATE. La guarnición perfecta para todos tus platillos.',
      'nombre': 'Arroz Rojo',
      'dificultad': 'Fácil',
      'porciones': 6,
      'tiempo': 50,
      'calorias': 216.8,
      'ingredientes':
          '2 Cucharadas de aceite vegetal\n1 Taza de arroz, remojado en agua caliente por 20 minutos y escurrido\n2 Tazas de caldo de pollo\n2 Jitomates, cortados en cuarto\n1 Diente de ajo\n1/4 Pieza de cebolla\n1 Cubo de Concentrado de Tomate con Pollo CONSOMATE\n1/4 Taza de chícharos\n1 Zanahoria, cortada en cubos pequeños\n1/2 Taza de granos de elote amarillo',
      'utensilios': 'Tarro\nCuchara de madera\nLicuadora\nColador',
      'preparacion':
          '1.- Calienta el aceite y fríe el arroz moviendo constantemente hasta que dore ligeramente.\n2.- Licúa el caldo de pollo con el jitomate, el ajo, la cebolla y el Concentrado de Tomate con Pollo CONSOMATE. Cuela y vierte sobre el arroz con mucho cuidado; agrega los chícharos, la zanahoria y los granos de elote; mezcla suavemente.\n3.- Cocina a fuego alto hasta que comience a hervir, tapa y cocina a fuego bajo de 20 a 25 minutos o hasta que el arroz esté tierno. Retira del fuego y deja reposar unos minutos. Ofrece.'
    },
    {
      'imagen': 'assets/images/sopadecoditos.jpg',
      'descripcion':
          'Prepara una PASTA de CODITO fácil con SALCHICHAS sazonando con MEDIA CREMA NESTLÉ, CHIPOTLE y sal. Práctica y económica para el día a día.',
      'nombre': 'Sopa de Coditos con Salchicha',
      'dificultad': 'Fácil',
      'porciones': 4,
      'tiempo': 10,
      'calorias': 466.6,
      'ingredientes':
          '1 Lata de Media Crema NESTLÉ\n1 Cucharada de chile chipotle molido\n1/3 De taza de mayonesa\n1/4 De cucharadita de sal\n4 Salchichas cortadas en rodajas\n1 Paquete pasta tipo codito cocida y escurrida (200 g)\n3 Ramas de cilantro desinfectado y picado finamente',
      'utensilios': 'Sarten\nCucharón',
      'preparacion':
          'Integra los ingredientes\n1.- Mezcla la Media Crema NESTLÉ con el chile chipotle, la mayonesa, la sal, las rodajas de salchicha y los coditos cocidos.\n\nUn toque verde\n2.- Añade el cilantro hasta integrar por completo.\n\n¡Listo!\n3.Ofrece.'
    },
    {
      'imagen': 'assets/images/chuleta.jpg',
      'descripcion':
          'Deliciosa pierna de cerdo Horneada con un toque de chile Jalapeño.',
      'nombre': 'Chuleta de cerdo ahumada',
      'dificultad': 'Difícil',
      'porciones': 12,
      'tiempo': 25,
      'calorias': 1328.06,
      'ingredientes':
          "1 Unidad de Salsa Jalapeño Natura's\n1 cucharada de mostaza Hellmann's\n1 taza de caldo de vegetales\n1 Unidad de chile verde cortado en cubos\n1 Unidad de diente de ajo rallado\n4 Unidades de chuleta de cerdo ahumada",
      'utensilios': 'Sarten\nTazón\nEspatúla o Tenazas',
      'preparacion':
          "1.- En un tazón, mezclar Salsa Jalapeño Natura's, Mostaza Hellmann's, caldo, chile y ajo.\n2.- En una sartén colocar las chuleta, sellar por ambos lados y colocar la mezcla anterior.\n3.- Cocinar por unos 5 minutos más y listo.",
    },
    {
      'nombre': 'Lasaña de Carne Molida al Horno',
      'imagen': 'assets/images/lasana.jpg',
      'descripcion':
          'LASAÑA en HORNO ideal para una comida o cena sazonada con CONSOMATE, un toque de JUGO MAGGI y CROSSE & BLACKWELL. Sorprende a tus invitados.',
      'dificultad': 'Fácil',
      'porciones': 6,
      'tiempo': 42,
      'calorias': 348.5,
      'ingredientes':
          '10 Jitomates cortados en cuartos\n3 Cucharadas de aceite de oliva\n1/4 De pieza de cebolla cortada en trozos\n2 Dientes de Ajo\n1 Cubo de Concentrado de Tomate con Pollo CONSOMATE\n1/2 Cucharadita de sal con cebolla en polvo\n1 Taza de agua\n1 1/2 Cucharadas de finas hierbas\n1/4 De cucharadita de pimienta negra molida\n2 Cucharadas de aceite vegetal\n1 Cucharada de cebolla picada finamente\n1 Cucharadita de ajo picado finamente\n600 Gramos de carne molida de res\n1 Cucharada de sal con cebolla en polvo\n1 Cucharada de Jugo MAGGI\n3 Cucharadas de Salsa Tipo Inglesa CROSSE & BLACKWELL\n250 Gramos de champiñones rebanados\n9 Láminas de pasta para lasaña precocida\n200 Gramos de queso tipo manchego',
      'utensilios':
          'Tarro\nBandeja de horno\nMicroondas\nCuchara\nEmboltura de plástico\nHorno\nSartén\nEspátula',
      'preparacion':
          '\nHornea y licúa\n\n1.- Horno precalentado a 200 °C\n2.- Para la salsa, coloca los jitomates en una charola con el aceite de oliva, la cebolla y el ajo; hornea a 200 °C de 45 a 50 minutos o hasta que estén dorados. Licúa los jitomates, la cebolla y los ajos rostizados con el Concentrado de Tomate con Pollo CONSOMATE® la sal con cebolla, el agua, las hierbas finas y la pimienta.\n\nPrepara la carne\n\n3.- Para el relleno, calienta el aceite y fríe la cebolla con el ajo hasta que cambien de color, añade la carne, la sal con cebolla, el Jugo MAGGI®, la Salsa Tipo Inglesa CROSSE & BLACKWELL® y los champiñones; mezcla y cocina hasta que la carne esté cocida.\n\nArma la lasaña\n\n4.- En un refractario engrasado con un poco de aceite, coloca una cucharada de salsa, una capa de láminas de lasaña precocida, una de relleno, una de salsa y queso rallado; repite el procedimiento hasta terminar con todos los ingredientes. Por último, termina con una capa de queso tipo manchego. Hornea a 200 °C de 20 a 25 minutos. Ofrece.'
    },
  ];
}
