import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/colab.dart';
import 'package:yoshitakaamanoapp/yoshitaka.dart';
import 'package:video_player/video_player.dart';

class FinalFantasyPag extends StatefulWidget {
  const FinalFantasyPag({super.key});

  @override
  State<FinalFantasyPag> createState() => _FinalFantasyPag();
}

class _FinalFantasyPag extends State<FinalFantasyPag>{

  late VideoPlayerController _videoPlayerController;
  bool isTocando = false;
  int i = 1;
  bool isVoltarDisable = true;
  bool isAvancarDisable = false;

  List<Colab> finalFant = [
    Colab(
      'video/finalfantasy.mp4',
      titulo: 'FINAL FANTASY',
      imgs: [
        'img/finalfantasyfundo.jpg',
        'img/finalfantasy.jpg'
      ],
      descricao: 'Final Fantasy é uma série icônica de jogos de RPG desenvolvida pela Square Enix, conhecida por suas histórias épicas, personagens cativantes e universos de fantasia ricos e variados. Iniciada em 1987, a série mistura temas de magia, tecnologia e guerras épicas, sempre abordando temas como amizade, sacrifício e luta contra as forças do mal. Cada jogo é independente em enredo, com novos personagens e cenários, mas há elementos recorrentes, como criaturas icônicas (Chocobos e Moogles), sistemas de combate estratégicos, invocações poderosas e magias elementares. Final Fantasy evoluiu visual e narrativamente ao longo dos anos, conquistando fãs pelo mundo todo e estabelecendo-se como uma das franquias de RPG mais influentes e bem-sucedidas da história dos videogames',
      funcaoDev: '',
      lancamento: '',
      distribuidora: '',
      icons: [
        Icons.arrow_back_ios,
        Icons.play_arrow_rounded,
        Icons.pause_rounded,
        Icons.arrow_forward_ios,
      ],
    ),
    Colab(
      '', 
      titulo: 'Final Fantasy Type-0', 
      imgs: [
        'img/finalfantasy/FinalFantasy_Type0.jpg',
      ], 
      descricao: 'Ambientado em um mundo devastado por guerras entre nações, Final Fantasy Type-0 foca na luta de estudantes habilidosos do grupo Class Zero que lutam contra uma invasão imperial. O jogo é conhecido por seu enredo sombrio, sistema de combate em tempo real e foco em temas de sacrifício e camaradagem.', 
      funcaoDev: '', 
      lancamento: 'Data de lançamento: 27 de outubro de 2011.', 
      distribuidora: '', 
      icons: []
    ),
    Colab(
      '', 
      titulo: 'Final Fantasy XIV', 
      imgs: [
        'img/finalfantasy/FinalFantasyXIV.jpg',
      ], 
      descricao: 'Um MMORPG situado no mundo de Eorzea, onde jogadores podem se aventurar sozinhos ou em grupo para completar missões, enfrentar chefes e explorar diversas áreas. Após um lançamento inicial falho, o jogo foi relançado como Final Fantasy XIV: A Realm Reborn, ganhando enorme popularidade devido à sua narrativa épica e constante atualização de conteúdo.', 
      funcaoDev: '', 
      lancamento: 'Data de lançamento: 22 de setembro de 2010.', 
      distribuidora: '', 
      icons: []
    ),
    Colab(
      '', 
      titulo: 'Final Fantasy XV', 
      imgs: [
        'img/finalfantasy/FinalFantasyXV.jpg',
      ], 
      descricao: 'Focado em uma jornada de amizade e vingança, Final Fantasy XV segue o príncipe Noctis e seus amigos enquanto tentam recuperar o reino perdido de Lucis. Com um vasto mundo aberto, combate em tempo real e gráficos impressionantes, o jogo é conhecido pelo seu sistema de exploração e pela narrativa emocional.', 
      funcaoDev: '', 
      lancamento: 'Data de lançamento: 29 de novembro de 2016.', 
      distribuidora: '', 
      icons: []
    ),
    Colab(
      '', 
      titulo: 'Dissidia Final Fantasy', 
      imgs: [
        'img/finalfantasy/FinalFantasy_Dissidia.jpg',
      ], 
      descricao: 'Um jogo de luta que reúne heróis e vilões de diversos títulos da série Final Fantasy, onde os personagens combatem em arenas dinâmicas. O sistema de combate único permite o uso de habilidades icônicas e evocações, sendo popular entre fãs pela interação entre personagens de diferentes jogos.', 
      funcaoDev: '', 
      lancamento: 'Data de lançamento: 18 de dezembro de 2008.', 
      distribuidora: '', 
      icons: []
    ),
    Colab(
      '', 
      titulo: 'Dissidia 012 Final Fantasy', 
      imgs: [
        'img/finalfantasy/FinalFantasy_Dissidia012.jpg',
      ], 
      descricao: 'Continuação de Dissidia Final Fantasy, que expande o elenco de personagens e oferece melhorias no sistema de combate e narrativa. A história aborda batalhas épicas entre os personagens de Final Fantasy em um conflito entre as forças de Cosmos e Chaos.', 
      funcaoDev: '', 
      lancamento: 'Data de lançamento: 3 de março de 2011.', 
      distribuidora: '', 
      icons: []
    ),
    Colab(
      '', 
      titulo: 'Mobius Final Fantasy', 
      imgs: [
        'img/finalfantasy/FinalFantasy_Mobius.jpg',
      ], 
      descricao: 'Um RPG para dispositivos móveis com gráficos avançados e um sistema de combate baseado em habilidades. O jogo segue a história de um herói amnésico que luta para salvar o mundo de Palamecia, trazendo uma narrativa complexa e eventos especiais com crossover de outros jogos da série.', 
      funcaoDev: '', 
      lancamento: 'Data de lançamento: 4 de junho de 2015.', 
      distribuidora: '', 
      icons: []
    ),
    Colab(
      '', 
      titulo: 'Final Fantasy: Brave Exvius', 
      imgs: [
        'img/finalfantasy/FinalFantasy_BraveExvius.jpg',
      ], 
      descricao: 'Um jogo de RPG tático para dispositivos móveis, onde jogadores exploram mapas e participam de batalhas em turnos. Brave Exvius combina um enredo original com a participação de personagens clássicos de Final Fantasy, sendo popular entre fãs por seu estilo nostálgico e eventos colaborativos.', 
      funcaoDev: '', 
      lancamento: 'Data de lançamento: 22 de outubro de 2015.', 
      distribuidora: '', 
      icons: []
    ),
  ];

  @override
  void initState(){
    super.initState();
    _videoPlayerController = VideoPlayerController.asset(
      finalFant[0].video
      )..initialize().then((_){
        setState((){

        });
      }
    );
  } //define o estado do vídeo 

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  Future<void> _playVideo() async {
    if (isTocando) {
      await _videoPlayerController.pause();
      setState(() {
        isTocando = false;
      });
    } else {
      await _videoPlayerController.play();
      setState(() {
        isTocando = true;
      });
    }
  }

  avancar(){
    if(i < 7){
      setState(() {
        i = i+1;
        isVoltarDisable = false;
      });
    }
    else {
      i = 7;
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
      i = 1;
      setState(() {
        isVoltarDisable = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final yAmano = ModalRoute.of(context)!.settings.arguments as Yoshitaka;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: _videoPlayerController.value.isInitialized ?
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(finalFant[0].imgs[0]),
                opacity: 0.6,
                fit: BoxFit.fitHeight,
              ),
            ),
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                margin: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 246, 227),
                  borderRadius: BorderRadius.circular(45),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => Navigator.pop(context), 
                          icon: Icon(finalFant[0].icons[0], color: Colors.black,),
                        ),
                        Padding(padding: EdgeInsets.all(50)),
                        Text(
                          finalFant[0].titulo, 
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'FinalFantasy',
                            fontSize: 40,
                          ),
                        ),
                      ],
                    ),
                    
                    Image.asset(
                      finalFant[0].imgs[1],
                      width: 350,
                      height: 250,
                    ),
                    Text(
                      finalFant[0].descricao,
                      style: TextStyle(
                        fontFamily: 'Ledger',
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(3)),
                    Text(
                      yAmano.textosPags[8],
                      style: TextStyle(
                        fontSize: 35,
                        fontFamily: 'FinalFantasy'
                      ),
                    ),
                    Text(
                      finalFant[i].titulo,
                      style: TextStyle(
                        fontFamily: 'Ledger',
                        color: Colors.black
                      ),
                    ),
                    Image.asset(
                      finalFant[i].imgs[0],
                      height: 300,
                      width: 300,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: isVoltarDisable ? null : () => voltar(),
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 215, 185, 116),),
                          ),
                          child: Icon(finalFant[0].icons[0], color: Colors.black,),
                        ),
                        Padding(padding: EdgeInsets.all(5),),
                        ElevatedButton(
                          onPressed: isAvancarDisable ? null : () => avancar(),
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 215, 185, 116),),
                          ),
                          child: Icon(finalFant[0].icons[3], color: Colors.black,)
                        ),
                      ],
                    ),
                    Text(finalFant[i].descricao),
                    Text(finalFant[i].lancamento),
                    Padding(padding: EdgeInsets.all(3)),
                    Text(
                      yAmano.textosPags[9],
                      style: TextStyle(
                        fontSize: 35,
                        fontFamily: 'FinalFantasy'
                      ),
                    ),
                    Text(
                      yAmano.textosPags[10],
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'FinalFantasy'
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: _videoPlayerController.value.aspectRatio,
                      child: VideoPlayer(_videoPlayerController) //define o tamanho do vídeo, sendo o seu tamanho original
                    ),
                    IconButton(
                      icon: Icon(
                        isTocando
                          ? finalFant[0].icons[2]
                          : finalFant[0].icons[1],
                        color: Colors.black,
                      ),
                      onPressed: (){
                        _playVideo();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ) : Container()
        ),
      ),
    );
  }

  Widget construirIconButton({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      width: 60,
      height: 60,
      child: IconButton(
        icon: Icon(icon, color: Colors.black),
        onPressed: onPressed,
      ),
    );
  }

  Widget construirTitulo({
    required String title
  }){
    return Text(
      title
    );
  }
}