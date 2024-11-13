import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/colab.dart';
import 'empresa.dart';

class EmpresaPag extends StatefulWidget {
  const EmpresaPag({super.key});

  @override
  State<EmpresaPag> createState() => _EmpresaPag();
}

class _EmpresaPag extends State<EmpresaPag> {

  int i = 0;
  int p = 0;

  List<String> teste = [
    'a',
    'b',
    'c'
  ];

  avancar(){
    if(i < 2){
      setState(() {
        i = i+1;
      });
    }
    else {
      i = 2;
    }
  }

  voltar(){
    if(i > 0){
      setState(() {
        i = i-1;
      });
    }
    else {
      i = 0;
    }
  }
  
  @override
  Widget build(BuildContext context) {
    final empresa = ModalRoute.of(context)!.settings.arguments as Empresa;
    if(empresa.nome == 'Square'){
      p;
    }
    else if(empresa.nome == 'Kure Software Koubou'){
      p = 2;
    }

    List<Colab> colabs = [
      Colab(
        '',
        titulo: '',
        imgs: [
          'img/colab/$p/1.jpg',
        ],
        descricao: '',
        funcaoDev: '',
        lancamento: '',
        distribuidora: '',
        icons: [
          Icons.arrow_back_ios,
        ],
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
      ),
      body: Container(
        color: const Color.fromARGB(255, 255, 216, 108),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 248, 147),
              borderRadius: BorderRadius.circular(45)
            ),
            child: Column(
              children: <Widget>[
                Text(
                  empresa.nome
                ),
                Text(
                  colabs[i].titulo,
                ),
                Image.asset(
                  colabs[i].imgs[i]
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
                    ),
                  ],
                ),
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