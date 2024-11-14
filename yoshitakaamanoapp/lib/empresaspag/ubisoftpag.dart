import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/empresa.dart';
import 'package:yoshitakaamanoapp/colab.dart';

class UbisoftPag extends StatefulWidget {
  const UbisoftPag({super.key});

  @override
  State<UbisoftPag> createState() => _UbisoftPag();
}

class _UbisoftPag extends State<UbisoftPag> {

  final Colab colab = Colab(
    '', 
    titulo: 'Child of Light',
    img: '',
    descricao: 'Um RPG de plataforma com visual de aquarela, onde o jogador controla Aurora, uma jovem princesa perdida em um mundo de fantasia chamado Lemuria. Inspirado em contos de fadas, o jogo apresenta um sistema de combate em turnos e elementos de resolução de quebra-cabeças. Child of Light é elogiado por seu estilo artístico encantador, poesia nas falas dos personagens e uma narrativa com temas de amadurecimento e esperança.',
    funcaoDev: '',
    lancamento: '',
    distribuidora: '',
    icons: []
  );

  @override
  Widget build(BuildContext context) {
    final empresa = ModalRoute.of(context)!.settings.arguments as Empresa;
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 255, 216, 108),
        child: SingleChildScrollView(
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
                  empresa.nome.toUpperCase(),
                  style: TextStyle(
                    fontFamily: 'FinalFantasy',
                    fontSize: 35,
                  ),
                ),
                Image.asset(
                  empresa.imgLogo,
                ),
                Text(
                  empresa.descricao,
                  style: TextStyle(
                    fontFamily: 'FacultyGlyphic',

                  ),
                ),
                ElevatedButton(
                  onPressed: empresa.abrirSiteEmpresa,
                  child: Text(
                    empresa.botaoSiteEmpresa,
                    style: TextStyle(
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  empresa.textoPags.toUpperCase(),
                  style: TextStyle(
                    fontFamily: 'FinalFantasy',
                  ),
                ),
                Text(
                  colab.titulo
                ),
                Image.asset(
                  colab.img
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}