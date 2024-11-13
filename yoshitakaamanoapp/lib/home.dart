import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/biopag.dart';
import 'package:yoshitakaamanoapp/finalfantasypag.dart';
import 'package:yoshitakaamanoapp/yoshitaka.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePag extends StatefulWidget {
  const HomePag({super.key});

  @override
  State<HomePag> createState() => _HomePag();
}

class _HomePag extends State<HomePag> {

  Yoshitaka yAmano = Yoshitaka(
    textosPags: [
      'Home', 
      'Biografia',
      'Sua História', 
      'Empresas',
      'Outros Jogos',
      'O renomado artista Yoshitaka Amano é conhecido por suas artes, principalmente por sua participação em…',
      'Voltar',
      'Final Fantasy',
      'Outros Títulos da Franquia',
      'Evolução Final Fantasy',
      'Série Principal',
    ],
    nome: 'YOSHITAKA\n AMANO',
    img: [
      'img/homefundo.jpg',
      'img/fotosyoshi/yoshitaka1.jpg',
      'img/fotosyoshi/yoshitaka2.jpg',
      'img/fotosyoshi/yoshitaka3.jpg',
      'img/fotosyoshi/yoshitaka4.jpg',
    ],
    bio: '',
    urlSite: '',
    icon: Icons.arrow_back_ios
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(yAmano.img[0]),
              opacity: 0.6,
              fit: BoxFit.fitHeight
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BioPag(),
                    settings: RouteSettings(
                    arguments: yAmano)
                  ),
                ),
                child: Text(
                  yAmano.nome,
                  style: const TextStyle(
                    color: Colors.black, 
                    fontFamily: 'FinalFantasy',
                    fontSize: 55,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(seconds: 3),
                  autoPlayInterval: const Duration(seconds: 6)
                ),
                items: [
                  Image.asset(yAmano.img[1]),
                  Image.asset(yAmano.img[2]),
                  Image.asset(yAmano.img[3]),
                  Image.asset(yAmano.img[4]),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(210, 255, 248, 147),
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(10.0),
                child: Text(
                  yAmano.textosPags[5],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Lora',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FinalFantasyPag(),
                    settings: RouteSettings(
                      arguments: yAmano,
                    )
                  )
                ),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 215, 185, 116),),
                ),
                child: Text(
                  yAmano.textosPags[7],
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Lora',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}