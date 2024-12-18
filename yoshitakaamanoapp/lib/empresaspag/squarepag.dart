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
      imgs: [
        'img/colabs/square/frontmission.jpg',
        'img/empresasfundo.jpg'
      ],
      descricao: 'Um RPG tático focado em combates com mechas conhecidas como "Wanzers". Ambientado em um mundo de conflitos políticos e territoriais, os jogadores controlam uma equipe de pilotos de mechas em missões estratégicas, abordando temas de guerra e intriga.',
      funcaoDev: 'O Yoshitaka foi designer de personagem.',
      lancamento: 'Lançamento: 1995.',
      distribuidora: 'Distribuidora: Square Enix.',
      icons: [
        Icons.arrow_back_ios,
        Icons.arrow_forward_ios,
      ],
    ),
    Colab(
      '', 
      titulo: 'Front Mission: Gun Hazard', 
      imgs: ['img/colabs/square/frontmission_gunhazard.jpg'], 
      descricao: 'Diferente do estilo de RPG tático de seu antecessor, Gun Hazard é um jogo de tiro com rolagem lateral, onde os jogadores comandam um Wanzer em missões de combate direto. A história ainda explora temas de guerra, com foco em ação rápida.', 
      funcaoDev: 'O Yoshitaka foi designer de personagem.', 
      lancamento: 'Lançamento: 23 de fevereiro de 1996.', 
      distribuidora: 'Distribuidora: Square Enix.', 
      icons: []
    ),
    Colab(
      '', 
      titulo: 'Lord of Vermilion', 
      imgs: ['img/colabs/square/lordofvermilion.jpg'], 
      descricao: 'Um jogo de cartas e estratégia desenvolvido para arcades no Japão, onde os jogadores usam cartas físicas para invocar criaturas e lutar em uma arena virtual. Conhecido por sua combinação de estratégia e mecânicas de jogo colecionáveis.', 
      funcaoDev: 'O Yoshitaka foi ilustrador de cartas.', 
      lancamento: 'Lançamento: 17 de junho de 2008.', 
      distribuidora: 'Distribuidora: Square Enix.', 
      icons: []
    ),
    Colab(
      '', 
      titulo: 'Lord of Vermilion II', 
      imgs: ['img/colabs/square/lordofvermilion2.jpg'],
      descricao: 'Expande o elenco de criaturas e habilidades, com gráficos e mecânicas melhoradas. A sequência oferece mais opções de invocação e um sistema de combate aprimorado para os jogadores de arcade.', 
      funcaoDev: 'O Yoshitaka foi ilustrador de cartas.', 
      lancamento: 'Lançamento: 27 de outubro de 2009.', 
      distribuidora: 'Distribuidora: Square Enix.', 
      icons: []
    ),
    Colab(
      '', 
      titulo: 'Lord of Arcana', 
      imgs: ['img/colabs/square/lordofarcana.jpg'],
      descricao: 'Um jogo de ação e RPG para PSP onde os jogadores caçam monstros em missões desafiadoras, buscando ganhar poderes e completar a “Arcana”. O combate é focado em batalhas intensas, e o jogo atrai fãs de RPG e ação com um sistema cooperativo multijogador.', 
      funcaoDev: 'O Yoshitaka foi designer de monstros.', 
      lancamento: 'Lançamento: 14 de outubro de 2010.', 
      distribuidora: 'Distribuidora: Square Enix.', 
      icons: []
    ),
  ];

  avancar(){
    if(i < 4){
      setState(() {
        i = i+1;
        isVoltarDisable = false;
      });
    }
    else {
      i = 4;
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
                Text(
                  empresa.funcao,
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
                  colabs[i].funcaoDev,
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