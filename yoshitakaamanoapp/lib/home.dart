import 'package:dots_indicator/dots_indicator.dart';
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

  int currentIndex = 0;

  Yoshitaka yAmano = Yoshitaka(
    textosPags: [
      'Home', 
      'BIOGRAFIA',
      'SUA HISTORIA', 
      'EMPRESAS',
      'Outros Jogos',
      'O renomado artista Yoshitaka Amano é conhecido por suas artes, principalmente por sua participação em…',
      'Voltar',
      'Final Fantasy',
      'OUTROS TITULOS DA FRANQUIA',
      'EVOLUCAO DE FINAL FANTASY',
      'SERIE PRINCIPAL',
      'Site Oficial\n Yoshitaka Amano'
    ],
    nome: 'YOSHITAKA\n AMANO',
    img: [
      'img/homefundo.jpg',
      'img/biofundo.jpg',
      'img/fotosyoshi/yoshitaka1.jpg',
      'img/fotosyoshi/yoshitaka2.jpg',
      'img/fotosyoshi/yoshitaka3.jpg',
      'img/fotosyoshi/yoshitaka4.jpg',
    ],
    bio: 'Yoshitaka Amano, nascido em 1952, ilustrador japonês reconhecido por desenvolver o design de personagens de séries de jogos, principalmente Final Fantasy, produzido por Softhouse Square, conhecido por uma das maiores franquias de videogames da indústria.\n Com origem em Shizuoka, sua arte gira em torno da gravura e xilogravura, impressões realizadas em superfícies duras com materiais especiais, e litografia, elaborando sua arte em acrílicos para colorir suas obras para que seus desenhos ganhem um efeito de ukiyo-e, estilo de arte japonês análogo à aquarela.\n Ele não trabalhou exclusivamente com ilustrações, mas também com pintura, filme, cerâmica e também contribuía para a padronagem/estampas de quimonos e figurinos teatrais. No decorrer de sua trajetória, ele se inspirou em muitos artistas europeus, criando seu próprio estilo e por esse motivo recebeu muitos prêmios, como o Oscar da Literatura fantástica de trabalhos de ficção e fantasia.\n O Yoshitaka começou seu trabalho na produtora de desenhos animados japoneses Tatsunoko Productions em 1967 e após um período ele pediu demissão, se tornando freelancer e deixou de ilustrar animes para ilustrar romances, incluindo a série heróica de fantasia Western, Guin Saga e Vampire Hunter D, e design de personagens.',
    urlSite: 'https://www.yoshitakaamano.com',
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
              opacity: 0.4,
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
                  autoPlayInterval: const Duration(seconds: 6),
                  aspectRatio: 1.7,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason){
                    setState((){
                      currentIndex = index;
                    });
                  }
                ),
                items: [
                  Image.asset(yAmano.img[2], height: 300, width: 300,),
                  Image.asset(yAmano.img[3], height: 1000, width: 1000,),
                  Image.asset(yAmano.img[4], height: 300, width: 300,),
                  Image.asset(yAmano.img[5], height: 300, width: 300,),
                ],
              ),
              DotsIndicator(
                dotsCount: 4,
                position: currentIndex.toDouble(),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Text(
                yAmano.textosPags[5],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'FacultyGlyphic',
                  fontSize: 17,
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
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