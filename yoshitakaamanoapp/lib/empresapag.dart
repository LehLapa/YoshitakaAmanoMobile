import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/main.dart';
import 'package:yoshitakaamanoapp/biopag.dart';
import 'package:yoshitakaamanoapp/obraspag.dart';
import 'biografia.dart';

class EmpresaPag extends StatefulWidget {
  const EmpresaPag({super.key});

  @override
  State<EmpresaPag> createState() => _EmpresaPag();
}

class _EmpresaPag extends State<EmpresaPag> {
  void navegacao(Widget pagina) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => pagina,
      ),
    );
  }

  int index = 0;

  List<String> teste = [
    'a',
    'b',
    'c'
  ];

  avancar(){
    if(index < 2){
      setState(() {
        index = index+1;
      });
    }
    else {
      index = 2;
    }
  }

  voltar(){
    if(index > 0){
      setState(() {
        index = index-1;
      });
    }
    else {
      index = 0;
    }
  }
  
  @override
  Widget build(BuildContext context) {
    final yAmano = ModalRoute.of(context)!.settings.arguments as Biografia;
    return Scaffold(
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
            child: Column(
              children: <Widget>[
                Text(
                  teste[index],
                ),
                Row(
                  children: [
                    buildElevatedButton(
                      onPressed: () => avancar(),
                      child: const Text('Avançar'),
                    ),
                    buildElevatedButton(
                      onPressed: () => voltar(), 
                      child: const Text('Voltar')
                    )
                  ]
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

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

  Widget buildElevatedButton({
    required VoidCallback onPressed,
    required Widget child,
  }){
    return ElevatedButton(
        onPressed: onPressed, 
        child: child
    );
  }
}