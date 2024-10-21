import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/biografia.dart';
import 'package:yoshitakaamanoapp/biopag.dart';
import 'package:yoshitakaamanoapp/obraspag.dart';
import 'package:yoshitakaamanoapp/empresapag.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePag(),
    );
  }
}

class HomePag extends StatefulWidget {
  const HomePag({super.key});

  @override
  State<HomePag> createState() => _HomePag();
}

class _HomePag extends State<HomePag> {

  Biografia yAmano = Biografia(
    tituloPag: [
      'Home', 
      'Biografia', 
      'Obras', 
      'Sua História', 
      'Empresas'
    ],
    nome: 'Yoshitaka Amano',
    img: [
      'img'
    ],
  );

  // método de navegação
  void navegacao(Widget pagina) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => pagina,
        settings: RouteSettings(arguments: yAmano),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: Stack(
          children: [
            Container(
              height: 60,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 15, 66, 107),
                    Color.fromARGB(255, 0, 20, 49),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildIconButton(
                  icon: Icons.home,
                  tooltip: yAmano.tituloPag[0],
                  onPressed: () => navegacao(const HomePag()),
                ),
                buildIconButton(
                  icon: Icons.person,
                  tooltip: yAmano.tituloPag[1],
                  onPressed: () => navegacao(const BioPag()),
                ),
                buildIconButton(
                  icon: Icons.brush,
                  tooltip: yAmano.tituloPag[2],
                  onPressed: () => navegacao(const ObrasPag()),
                ),
              ],
            ),
          ],
        ),
        body: Container(
          color: const Color.fromARGB(255, 255, 216, 108),
          child: Center(
            child: Container(
              color: const Color.fromARGB(255, 255, 248, 147),
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () => navegacao(const EmpresaPag()),
                child: const Text('Empresa'),
              ),
            ),
          ),
        ),
      ), 
    );
  }

  // função que cria os botões da bottomnavigationbar
  Widget buildIconButton({
    required IconData icon,
    required String tooltip,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      width: 60,
      height: 60,
      child: IconButton(
        icon: Icon(icon, color: Colors.white),
        tooltip: tooltip,
        onPressed: onPressed,
      ),
    );
  }
}