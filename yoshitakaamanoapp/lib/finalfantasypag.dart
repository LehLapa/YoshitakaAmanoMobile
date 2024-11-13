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

  final Colab finalFant = Colab(
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
    ],
  );

  @override
  void initState(){
    super.initState();
    _videoPlayerController = VideoPlayerController.asset(
      finalFant.video
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

  @override
  Widget build(BuildContext context) {
    final yAmano = ModalRoute.of(context)!.settings.arguments as Yoshitaka;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: construirIconButton(
            icon: finalFant.icons[0],
            onPressed: () => Navigator.pop(context)
          ),
          backgroundColor: const Color.fromARGB(255, 255, 216, 108),
        ),
        body: Center(
          child: _videoPlayerController.value.isInitialized ?
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(finalFant.imgs[0]),
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
                    Text(
                      finalFant.titulo, 
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'FinalFantasy',
                        fontSize: 40,
                      ),
                    ),
                    Image.asset(
                      finalFant.imgs[1],
                      width: 350,
                      height: 250,
                    ),
                    Text(
                      finalFant.descricao,
                      style: TextStyle(),
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
                          ? finalFant.icons[2]
                          : finalFant.icons[1],
                        color: Colors.black,
                      ),
                      onPressed: (){
                        _playVideo();
                      },
                    ),
                    const SizedBox(
                      width: 380,
                      child: Text('',
                      style: TextStyle(fontFamily: 'PixelifySans', fontSize: 10, fontWeight: FontWeight.w200),)
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