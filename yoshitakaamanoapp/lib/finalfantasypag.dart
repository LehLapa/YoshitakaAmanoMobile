import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FinalFantasyPag extends StatefulWidget {
  const FinalFantasyPag({super.key});

  @override
  State<FinalFantasyPag> createState() => _FinalFantasyPag();
}

class _FinalFantasyPag extends State<FinalFantasyPag>{

late VideoPlayerController _videoPlayerController;

List<String> video = [
  'video/finalfantasy.mp4'
];

@override
void initState(){
  super.initState();
  _videoPlayerController = VideoPlayerController.asset(
    video[0]
    )..initialize().then((_){
      setState((){

      });
    });
} //define o estado do vídeo

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _videoPlayerController.value.isInitialized ?
        Column(
          children: [
            AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController)), //define o tamanho do vídeo, sendo o su tamanho original

              Row(
                mainAxisAlignment: MainAxisAlignment.center, //define o alinhamento do vídeo
                children: [
                  ElevatedButton(
                    onPressed: (){
                      _videoPlayerController.pause();
                    },
                    child: const Icon(Icons.pause, color: Color.fromARGB(255, 75, 73, 206),)
                    ),
                  const Padding(padding: EdgeInsets.all(2),),
                  ElevatedButton(
                    onPressed: (){
                      _videoPlayerController.play();
                    },
                    child: const Icon(Icons.play_arrow, color: Color.fromARGB(255, 75, 73, 206),),
                    ),
                ],
              ),
              const SizedBox(
                width: 380,
                child: Text('',
                style: TextStyle(fontFamily: 'PixelifySans', fontSize: 10),)
              )
          ] 
        ) : Container()
      )
    );
  }
}