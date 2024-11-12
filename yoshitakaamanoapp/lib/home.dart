import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/biopag.dart';
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
      'O renomado artista Yoshitaka Amano é conhecido por suas artes, principalmente por sua participação em…'
      'Voltar'
    ],
    nome: 'Yoshitaka Amano',
    img: [
      'img',
      'img2',
      'img3',
      'img4'
    ],
    bio: '',
    urlSite: '',
    icon: Icons.arrow_back_ios
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 255, 216, 108),
        child: Center(
          child: Container(
            color: const Color.fromARGB(255, 255, 248, 147),
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(16.0),
            child: Column(
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
                      fontFamily: '',
                      fontSize: 58,
                    ),
                  ),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayAnimationDuration: const Duration(seconds: 2),
                    autoPlayInterval: const Duration(seconds: 3)
                  ),
                  items: [
                    Text(yAmano.img[0]),
                    Text(yAmano.img[1]),
                    Text(yAmano.img[2]),
                    Text(yAmano.img[3]),
                  ],
                ),
                Text(yAmano.textosPags[5])
              ],
            ),
          ),
        )
      ),
    );
  }
}