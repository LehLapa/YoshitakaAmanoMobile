import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/empresa.dart';
import 'package:yoshitakaamanoapp/colab.dart';

class SquarePag extends StatefulWidget {
  const SquarePag({super.key});

  @override
  State<SquarePag> createState() => _SquarePag();
}

class _SquarePag extends State<SquarePag> {

  int i = 0;
  bool isAvancarDisable = false;
  bool isVoltarDisable = true;

  List<Colab> colabs = [
    Colab(
      '',
      titulo: 'Front Mission',
      img: 'img/colab/frontmission.jpg',
      descricao: 'Um RPG tático focado em combates com mechas conhecidas como "Wanzers". Ambientado em um mundo de conflitos políticos e territoriais, os jogadores controlam uma equipe de pilotos de mechas em missões estratégicas, abordando temas de guerra e intriga.',
      funcaoDev: '',
      lancamento: '',
      distribuidora: '',
      icons: [
        Icons.arrow_back_ios,
        Icons.arrow_forward_ios,
      ],
    ),
    Colab(
      '', 
      titulo: 'Front Mission: Gun Hazard', 
      img: 'img/colab/frontmission_gunhazard.jpg', 
      descricao: 'Diferente do estilo de RPG tático de seu antecessor, Gun Hazard é um jogo de tiro com rolagem lateral, onde os jogadores comandam um Wanzer em missões de combate direto. A história ainda explora temas de guerra, com foco em ação rápida.', 
      funcaoDev: '', 
      lancamento: '', 
      distribuidora: '', 
      icons: [
        Icons.arrow_back_ios,
        Icons.arrow_forward_ios
      ]
    ),
    Colab(
      '', 
      titulo: 'Lord of Vermilion', 
      img: 'img/colab/lordofvermilion.jpg', 
      descricao: 'Um jogo de cartas e estratégia desenvolvido para arcades no Japão, onde os jogadores usam cartas físicas para invocar criaturas e lutar em uma arena virtual. Conhecido por sua combinação de estratégia e mecânicas de jogo colecionáveis.', 
      funcaoDev: '', 
      lancamento: '', 
      distribuidora: '', 
      icons: []
    ),
    Colab(
      '', 
      titulo: 'Lord of Vermilion II', 
      img: '', 
      descricao: 'Expande o elenco de criaturas e habilidades, com gráficos e mecânicas melhoradas. A sequência oferece mais opções de invocação e um sistema de combate aprimorado para os jogadores de arcade.', 
      funcaoDev: '', 
      lancamento: '', 
      distribuidora: '', 
      icons: []
    ),
    Colab(
      '', 
      titulo: 'Lord of Arcana', 
      img: '', 
      descricao: 'Um jogo de ação e RPG para PSP onde os jogadores caçam monstros em missões desafiadoras, buscando ganhar poderes e completar a “Arcana”. O combate é focado em batalhas intensas, e o jogo atrai fãs de RPG e ação com um sistema cooperativo multijogador.', 
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