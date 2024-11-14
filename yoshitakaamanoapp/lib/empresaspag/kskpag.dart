import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/empresa.dart';
import 'package:yoshitakaamanoapp/colab.dart';

class KskPag extends StatefulWidget {
  const KskPag({super.key});

  @override
  State<KskPag> createState() => _KskPag();
}

class _KskPag extends State<KskPag> {

  int i = 0;
  bool isAvancarDisable = false;
  bool isVoltarDisable = true;

  List<Colab> colabs = [
    Colab(
      '', 
      titulo: 'First Queen', 
      img: '', 
      descricao: 'Um RPG de estratégia e ação em tempo real onde os jogadores lideram um exército para lutar contra forças inimigas em um mundo de fantasia. A mecânica "crowd control" permite controlar várias unidades simultaneamente, oferecendo uma experiência de batalhas em larga escala que era inovadora na época. O jogo trouxe um estilo de arte detalhado e teve uma capa de comercialização ilustrada para atrair o público.', 
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
      titulo: 'First Queen 2', 
      img: '', 
      descricao: 'Continuação direta do primeiro jogo, First Queen 2 expandiu o universo com novos personagens, habilidades e territórios. O sistema de controle em massa foi aprimorado, e o jogo apresentou desafios estratégicos mais complexos, dando ao jogador mais controle sobre suas tropas. Também teve uma capa ilustrada que refletia seu estilo épico e de fantasia.', 
      funcaoDev: '', 
      lancamento: '', 
      distribuidora: '', 
      icons: []
    ),
    Colab(
      '', 
      titulo: 'First Queen 3', 
      img: '', 
      descricao: 'Com gráficos atualizados e um mundo expandido, First Queen 3 adicionou novas camadas de jogabilidade, como melhorias na inteligência artificial dos aliados e inimigos. O jogo manteve seu estilo característico de batalhas estratégicas em tempo real e foi lançado com uma capa ilustrada que enfatizava seu tema de guerra e magia.', 
      funcaoDev: '', 
      lancamento: '', 
      distribuidora: '', 
      icons: []
    ),
    Colab(
      '', 
      titulo: 'Duel',
      img: '',
      descricao: 'Um jogo de estratégia baseado em batalhas entre personagens em combates um contra um, onde os jogadores precisam fazer escolhas táticas para vencer o oponente. Com gráficos simples e foco em jogabilidade estratégica, Duel apresentou uma capa ilustrada que atraiu o público interessado em batalhas táticas.',
      funcaoDev: '',
      lancamento: '',
      distribuidora: '',
      icons: []
    ),
    Colab(
      '', 
      titulo: 'Duel98',
      img: '',
      descricao: 'Uma versão expandida de Duel, com melhorias em gráficos e mecânicas de combate, Duel98 trouxe mais opções de personagens e estratégias. A capa ilustrada seguiu o estilo do original, destacando a natureza competitiva e tática do jogo.',
      funcaoDev: '',
      lancamento: '',
      distribuidora: '',
      icons: []
    ),
    Colab(
      '', 
      titulo: 'Kawanakajima Ibunroku',
      img: '',
      descricao: 'Um RPG de estratégia inspirado nas batalhas históricas de Kawanakajima, onde jogadores controlam generais e suas tropas em confrontos estratégicos. O jogo se diferencia ao misturar elementos históricos com fantasia, e sua capa ilustrada foi criada para refletir a temática de guerra feudal japonesa, atraindo jogadores interessados em cultura e história do Japão.',
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