import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/empresa.dart';
import 'package:yoshitakaamanoapp/colab.dart';

class CompHeartPag extends StatefulWidget {
  const CompHeartPag({super.key});

  @override
  State<CompHeartPag> createState() => _CompHeartPag();
}

class _CompHeartPag extends State<CompHeartPag> {

  int i = 0;
  bool isAvancarDisable = false;
  bool isVoltarDisable = true;

  List<Colab> colabs = [
    Colab(
      '', 
      titulo: 'Fairy Fencer F',
      img: '',
      descricao: 'Um RPG ambientado em um mundo onde deuses antigos criaram armas poderosas chamadas "Furies", e guerreiros conhecidos como Fencers lutam para coletá-las. O jogador controla Fang, um Fencer que se envolve em uma batalha épica para decidir o destino do mundo. Fairy Fencer F combina um sistema de combate em turnos com a customização de armas, sendo reconhecido por seu humor leve, personagens carismáticos e visuais inspirados em anime.',
      funcaoDev: '',
      lancamento: '',
      distribuidora: '',
      icons: [
        Icons.arrow_back_ios,
        Icons.arrow_forward_ios,
      ]
    ),
    Colab(
      '', 
      titulo: 'Arc of Alchemis',
      img: '',
      descricao: 'Um RPG de ação situado em um deserto devastado, onde a protagonista Quinn busca uma chave para restaurar o mundo. O jogo apresenta um sistema de combate em tempo real, com a habilidade de resolver quebra-cabeças no ambiente usando um dispositivo chamado "Lunagear." Arc of Alchemist é conhecido por sua atmosfera desoladora e mistura de exploração com elementos estratégicos.',
      funcaoDev: '',
      lancamento: '',
      distribuidora: '',
      icons: []
    ),
  ];

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
                  colabs[i].titulo
                ),
                Image.asset(
                  colabs[i].img
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}