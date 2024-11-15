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
      imgs: [
        'img/colabs/ksk/firstqueen.jpg',
        'img/empresasfundo.jpg'
      ],
      descricao: 'Um RPG de estratégia e ação em tempo real onde os jogadores lideram um exército para lutar contra forças inimigas em um mundo de fantasia. A mecânica "crowd control" permite controlar várias unidades simultaneamente, oferecendo uma experiência de batalhas em larga escala que era inovadora na época. O jogo trouxe um estilo de arte detalhado e teve uma capa de comercialização ilustrada para atrair o público.', 
      funcaoDev: '', 
      lancamento: 'Lançamento: 1988.', 
      distribuidora: 'Distribuidora: Kure Software Koubou.', 
      icons: [
        Icons.arrow_back_ios,
        Icons.arrow_forward_ios,
      ]
    ),
    Colab(
      '', 
      titulo: 'First Queen 2', 
      imgs: ['img/colabs/ksk/firstqueen2.jpg',], 
      descricao: 'Continuação direta do primeiro jogo, First Queen 2 expandiu o universo com novos personagens, habilidades e territórios. O sistema de controle em massa foi aprimorado, e o jogo apresentou desafios estratégicos mais complexos, dando ao jogador mais controle sobre suas tropas. Também teve uma capa ilustrada que refletia seu estilo épico e de fantasia.', 
      funcaoDev: '', 
      lancamento: 'Lançamento: 1990.', 
      distribuidora: 'Distribuidora: Kure Software Koubou.', 
      icons: []
    ),
    Colab(
      '', 
      titulo: 'First Queen 3', 
      imgs: ['img/colabs/ksk/firstqueen3.jpg'], 
      descricao: 'Com gráficos atualizados e um mundo expandido, First Queen 3 adicionou novas camadas de jogabilidade, como melhorias na inteligência artificial dos aliados e inimigos. O jogo manteve seu estilo característico de batalhas estratégicas em tempo real e foi lançado com uma capa ilustrada que enfatizava seu tema de guerra e magia.', 
      funcaoDev: '', 
      lancamento: 'Lançamento: 1993.', 
      distribuidora: 'Distribuidora: Kure Software Koubou.', 
      icons: []
    ),
    Colab(
      '', 
      titulo: 'Duel',
      imgs: ['img/colabs/ksk/duel.jpg'],
      descricao: 'Um jogo de estratégia baseado em batalhas entre personagens em combates um contra um, onde os jogadores precisam fazer escolhas táticas para vencer o oponente. Com gráficos simples e foco em jogabilidade estratégica, Duel apresentou uma capa ilustrada que atraiu o público interessado em batalhas táticas.',
      funcaoDev: '',
      lancamento: 'Lançamento: 1989.',
      distribuidora: 'Distribuidora: Kure Software Koubou.',
      icons: []
    ),
    Colab(
      '', 
      titulo: 'Duel98',
      imgs: ['img/colabs/ksk/duel.jpg'],
      descricao: 'Uma versão expandida de Duel, com melhorias em gráficos e mecânicas de combate, Duel98 trouxe mais opções de personagens e estratégias. A capa ilustrada seguiu o estilo do original, destacando a natureza competitiva e tática do jogo.',
      funcaoDev: '',
      lancamento: 'Lançamento: 1989.',
      distribuidora: 'Distribuidora: Kure Software Koubou.',
      icons: []
    ),
    Colab(
      '', 
      titulo: 'Kawanakajima Ibunroku',
      imgs: ['img/colabs/ksk/kawanakajima.jpg'],
      descricao: 'Um RPG de estratégia inspirado nas batalhas históricas de Kawanakajima, onde jogadores controlam generais e suas tropas em confrontos estratégicos. O jogo se diferencia ao misturar elementos históricos com fantasia, e sua capa ilustrada foi criada para refletir a temática de guerra feudal japonesa, atraindo jogadores interessados em cultura e história do Japão.',
      funcaoDev: '',
      lancamento: 'Lançamento: 1992.',
      distribuidora: 'Distribuidora: Kure Software Koubou.',
      icons: []
    ),
  ];

  avancar(){
    if(i < 5){
      setState(() {
        i = i+1;
        isVoltarDisable = false;
      });
    }
    else {
      i = 5;
      setState(() {
        isAvancarDisable = true;
      });
    }
  }

  voltar(){
    if(i > 1){
      setState(() {
        i = i-1;
        isAvancarDisable = false;
      });
    }
    else {
      i = 0;
      setState(() {
        isVoltarDisable = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final empresa = ModalRoute.of(context)!.settings.arguments as Empresa;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(colabs[0].imgs[1]),
            opacity: 0.4,
            fit: BoxFit.fill
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(210, 255, 246, 227),
              borderRadius: BorderRadius.circular(45),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context), 
                      icon: Icon(colabs[0].icons[0], color: Colors.black,),
                    ),
                    Padding(padding: EdgeInsets.all(62)),
                    Text(
                      empresa.nome.toUpperCase(),
                      style: TextStyle(
                        fontFamily: 'FinalFantasy',
                        fontSize: 35,
                      ),
                    ),
                  ],
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
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll( Color.fromARGB(255, 215, 185, 116),),
                  ),
                  child: Text(
                    empresa.botaoSiteEmpresa,
                    style: TextStyle(
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.w700,
                      color: Colors.black
                    ),
                  ),
                ),
                Text(
                  empresa.textoPags.toUpperCase(),
                  style: TextStyle(
                    fontFamily: 'FinalFantasy',
                    fontSize: 35,
                  ),
                ),
                Text(
                  colabs[i].titulo,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'FacultyGlyphic',
                    fontSize: 17,
                    color: Colors.black
                  ),
                ),
                Image.asset(
                  colabs[i].imgs[0]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: isVoltarDisable ? null : () => voltar(),
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          isVoltarDisable
                            ? Color.fromARGB(150, 102, 102, 102)
                            : Color.fromARGB(255, 215, 185, 116),
                        ),
                      ),
                      child: Icon(colabs[0].icons[0], color: Colors.black,),
                    ),
                    Padding(padding: EdgeInsets.all(5),),
                    ElevatedButton(
                      onPressed: isAvancarDisable ? null : () => avancar(),
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          isAvancarDisable
                            ? Color.fromARGB(150, 102, 102, 102)
                            : Color.fromARGB(255, 215, 185, 116),
                        ),
                      ),
                      child: Icon(colabs[0].icons[1], color: Colors.black,)
                    ),
                  ],
                ),
                Text(
                  colabs[i].descricao,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'FacultyGlyphic',
                    fontSize: 15,
                    color: Colors.black
                  ),
                ),
                Text(
                  colabs[i].distribuidora,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'FacultyGlyphic',
                    fontSize: 15,
                    color: Colors.black
                  ),
                ),
                Text(
                  colabs[i].lancamento,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'FacultyGlyphic',
                    fontSize: 15,
                    color: Colors.black
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}