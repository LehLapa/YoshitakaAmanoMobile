import 'package:flutter/material.dart';
import 'empresa.dart';

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
    final empresa = ModalRoute.of(context)!.settings.arguments as Empresa;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
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
                  empresa.nomeEmpresa
                ),
                Text(
                  teste[index],
                ),
                Row(
                  children: [
                    buildElevatedButton(
                      onPressed: () => empresa.avancar(index = 0),
                      child: const Text('Avançar'),
                    ),
                    buildElevatedButton(
                      onPressed: () => empresa.voltar(index), 
                      child: const Text('Voltar')
                    ),
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