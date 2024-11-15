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
      imgs: [
        'img/colabs/compheart/fairyfencerf.jpg',
        'img/empresasfundo.jpg'
      ],
      descricao: 'Um RPG ambientado em um mundo onde deuses antigos criaram armas poderosas chamadas "Furies", e guerreiros conhecidos como Fencers lutam para coletá-las. O jogador controla Fang, um Fencer que se envolve em uma batalha épica para decidir o destino do mundo. Fairy Fencer F combina um sistema de combate em turnos com a customização de armas, sendo reconhecido por seu humor leve, personagens carismáticos e visuais inspirados em anime.',
      funcaoDev: '',
      lancamento: 'Lançamento: 10 de outubro de 2013.',
      distribuidora: 'Distribuidora: Compile Heart.',
      icons: [
        Icons.arrow_back_ios,
        Icons.arrow_forward_ios,
      ]
    ),
    Colab(
      '', 
      titulo: 'Arc of Alchemis',
      imgs: ['img/colabs/compheart/arcofalchemis.jpg',],
      descricao: 'Um RPG de ação situado em um deserto devastado, onde a protagonista Quinn busca uma chave para restaurar o mundo. O jogo apresenta um sistema de combate em tempo real, com a habilidade de resolver quebra-cabeças no ambiente usando um dispositivo chamado "Lunagear." Arc of Alchemist é conhecido por sua atmosfera desoladora e mistura de exploração com elementos estratégicos.',
      funcaoDev: '',
      lancamento: 'Lançamento: 7 de fevereiro de 2019.',
      distribuidora: 'Distribuidora: Idea Factory.',
      icons: []
    ),
  ];

  avancar(){
    if(i < 1){
      setState(() {
        i = i+1;
        isVoltarDisable = false;
      });
    }
    else {
      i = 1;
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