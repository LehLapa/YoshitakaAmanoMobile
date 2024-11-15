import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/obra.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ObrasPag extends StatefulWidget {
  const ObrasPag({super.key,});

  @override
  State<ObrasPag> createState() => _ObrasPag();
}

class _ObrasPag extends State<ObrasPag> {
  final List<Obra> obras = [
    Obra(
      textosPag: [
        'Obras',
        'Artes Autorais',
        'Ver Site'
      ],
      categoria: 'Fine Arts',
      img: [
        'img/obras/finearts/img1.jpg',
        'img/obras/finearts/img2.jpg',
        'img/obras/finearts/img3.jpg',
        'img/obras/finearts/img4.jpg',
      ],
      descricao: 'A coleção de Fine Arts, exibe artes com traços mais finos, retratando muitas vezes personagens de capas, cores vibrantes, diferentes ângulos e expressões faciais. Ademais, muitas poses heróicas e malignas são demonstradas ao decorrer das imagens.',
      urlCategoria: 'https://www.yoshitakaamano.com/work#/fine-arts',
    ),
    Obra(
      textosPag: [
        ''
      ],
      categoria: 'Devaloka',
      img: [
        'img/obras/devaloka/img1.jpg',
        'img/obras/devaloka/img2.jpg',
        'img/obras/devaloka/img3.jpg',
        'img/obras/devaloka/img4.jpg',
        'img/obrasfundo.jpg'
      ],
      descricao: 'A coleção de pinturas de Devaloka, retratam obras repletas de cores vívidas, como uma pintura surrealista fantasiosa. Todas possuem suas características e suas misturas, são conhecidas por possuir elementos gráficos em todas e qualquer parte da pintura que o apreciador olhar.',
      urlCategoria: 'https://www.yoshitakaamano.com/work#/devaloka',
    ),
    Obra(
      textosPag: [
        ''
      ],
      categoria: 'Candy Girl',
      img: [
        'img/obras/candygirl/img1.jpg',
        'img/obras/candygirl/img2.jpg',
        'img/obras/candygirl/img3.jpg',
        'img/obras/candygirl/img4.jpg',
      ],
      descricao: 'A coleção Candy Girl retrata mulheres, com traços mais redondos e cores mais vibrantes, sem espaço para fuga de atenção. Durante as obras, diversas poses são retratadas, principalmente, com a utilização do glitter ao fundo. O traço “doce” o representa, dessa forma, trazendo um aspecto mais meigo, feminino e olhares marcantes para as obras em destaque.',
      urlCategoria: 'https://www.yoshitakaamano.com/work#/candy-girl',
    ),
    Obra(
      textosPag: [
        ''
      ],
      categoria: 'Book Cover',
      img: [
        'img/obras/bookcover/img1.jpg',
        'img/obras/bookcover/img2.jpg',
        'img/obras/bookcover/img3.jpg',
        'img/obras/bookcover/img4.jpg',
      ],
      descricao: 'A coleção book cover apresenta obras que fizeram parte de capas de livros e divulgações literárias que Yoshitaka Amano participou. Dessa forma, é apresentado artes agregadas à DC Comics, em Sandman: The Dream Chasers, e também, obras voltadas a empresa Marvel Elektra e Wolverine: e Redeemer. Ambas apresentam histórias únicas, Marvel excepcionalmente exibe ilustrações de página inteira com textos estilizados às acompanhando, abrindo margens para novas narrativas, fugindo dos modelos clássicos de HQ’s.',
      urlCategoria: 'https://www.yoshitakaamano.com/work#/book-cover',
    ),
    Obra(
      textosPag: [
        ''
      ],
      categoria: 'Final Fantasy',
      img: [
        'img/obras/finalfantasy/img1.jpg',
        'img/obras/finalfantasy/img2.jpg',
        'img/obras/finalfantasy/img3.jpg',
        'img/obras/finalfantasy/img4.jpg',
      ],
      descricao: 'A coleção de Final Fantasy, assim como Devaloka, muitas obras são repletas de elementos juntos em apenas um lugar. Cenas épicas, cenários, cores frias e neutras, todas com ambientações coloridas e detalhadas.',
      urlCategoria: 'https://www.yoshitakaamano.com/work#/final-fantasy',
    ),
    Obra(
      textosPag: [
        ''
      ],
      categoria: 'Animation',
      img: [
        'img/obras/animation/img1.jpg',
        'img/obras/animation/img2.jpg',
        'img/obras/animation/img3.jpg',
        'img/obras/animation/img4.jpg',
      ],
      descricao: 'A coleção Animation aborda obras que remetem ao esboços de animações, posições de destaque, cores marcantes e layouts diferentes. Cada obra tem seu estilo, mas sempre, traços mais soltos e idealizações de ideias.',
      urlCategoria: 'https://www.yoshitakaamano.com/work#/animation',
    ),
    Obra(
      textosPag: [
        ''
      ],
      categoria: 'Costume Design and Fashion',
      img: [
        'img/obras/costumedesign_fashion/img1.jpg',
        'img/obras/costumedesign_fashion/img2.jpg',
        'img/obras/costumedesign_fashion/img3.jpg',
        'img/obras/costumedesign_fashion/img4.jpg',
      ],
      descricao: 'A coleção costume design & fashion apresenta traços finos e um estilo mais luxuoso. Mulheres são retratadas, majoritariamente com cores frias e poses de retratos. A sutileza representa esse acervo, também, a textura das pinturas e as linhas finas.',
      urlCategoria: 'https://www.yoshitakaamano.com/work#/costume-design-fashion',
    ),
    Obra(
      textosPag: [
        ''
      ],
      categoria: 'Film',
      img: [
        'img/obras/film/img.jpg',
      ],
      descricao: 'A coleção Film de Yoshitaka Amano apresenta apenas uma imagem de extrema importância. A obra retrata na coleção, nomeada como “1001 Nights”, se refere à produção cinematográfica de Yoshitaka. Seu filme por Mike Smith e Yoshitaka amano, conta a história de na forma de um sonho de amor febril, 1001 Nights é o primeiro e único capítulo do inovador projeto “Filmharmonic”, que apresenta composições originais criadas por duplas de compositores e diretores de cinema.',
      urlCategoria: 'https://www.yoshitakaamano.com/work#/film',
    ),
    Obra(
      textosPag: [
        ''
      ],
      categoria: 'For Children',
      img: [
        'img/obras/forchildren/img1.jpg',
        'img/obras/forchildren/img2.jpg',
        'img/obras/forchildren/img3.jpg',
        'img/obras/forchildren/img4.jpg',
      ],
      descricao: 'A coleção For Children são desenhos e pequenos esboços para todos os públicos, espelhando um universo de “vidas de insetos e flora”, sendo assim, todas as obras giram em torno desse âmbito.',
      urlCategoria: 'https://www.yoshitakaamano.com/work#/for-children',
    ),
    Obra(
      textosPag: [
        ''
      ],
      categoria: 'Exposicao Yoshitaka Amano - Alem da Fantasia',
      img: [
        'img/obras/expo_alemdafantasia/img1.jpg',
        'img/obras/expo_alemdafantasia/img2.jpg',
        'img/obras/expo_alemdafantasia/img3.jpg',
        'img/obras/expo_alemdafantasia/img4.jpg',
        'img/obras/expo_alemdafantasia/img5.jpg',
        'img/obras/expo_alemdafantasia/img6.jpg',
        'img/obras/expo_alemdafantasia/img7.jpg',
        'img/obras/expo_alemdafantasia/img8.jpg',
      ],
      descricao: 'A exposição esteve presente no Farol Santander, em São Paulo, durante o ano de 2024. Abrindo portas para conhecer a magia de Yoshitaka Amano, as obras se entrelaçam entre o real e o fantástico, a verdadeira complexidade humana. De maneira geral, Amano integra com maestria a tradição japonesa a aspectos do art nouveau, do surrealismo e da pop art, resultando em um estilo inconfundível.',
      urlCategoria: 'https://www.farolsantander.com.br/sp/exposicao/yoshitaka-amano-alem-da-fantasia',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(obras[1].img[4]),
              opacity: 0.6,
              fit: BoxFit.fitHeight,
            )
          ),
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    obras[0].textosPag[0].toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'FinalFantasy',
                      fontSize: 35,
                    ),
                  ),
                  Text(
                    obras[0].textosPag[1].toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'FinalFantasy',
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    obras[0].categoria.toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'FinalFantasy',
                      fontSize: 25,
                    ),
                  ),
                  CarouselSlider(
                    items: [
                      Image.asset(obras[0].img[0]),
                      Image.asset(obras[0].img[1]),
                      Image.asset(obras[0].img[2]),
                      Image.asset(obras[0].img[3]),
                    ],
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayAnimationDuration: const Duration(seconds: 3),
                      autoPlayInterval: const Duration(seconds: 6),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    margin: const EdgeInsets.all(16.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color.fromARGB(210, 255, 255, 255),
                    ),
                    child: Text(
                      obras[0].descricao,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'FacultyGlyphic',
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: obras[0].abrirCategoria, 
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 215, 185, 116),),
                    ),
                    child: Text(
                      obras[0].textosPag[2],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Lora',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Text(
                    obras[1].categoria.toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'FinalFantasy',
                      fontSize: 25,
                    ),
                  ),
                  CarouselSlider(
                    items: [
                      Image.asset(obras[1].img[0]),
                      Image.asset(obras[1].img[1]),
                      Image.asset(obras[1].img[2]),
                      Image.asset(obras[1].img[3]),
                    ],
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayAnimationDuration: const Duration(seconds: 3),
                      autoPlayInterval: const Duration(seconds: 6),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    margin: const EdgeInsets.all(16.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color.fromARGB(210, 255, 255, 255),
                    ),
                    child: Text(
                      obras[1].descricao,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'FacultyGlyphic',
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: obras[1].abrirCategoria, 
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 215, 185, 116),),
                    ),
                    child: Text(
                      obras[0].textosPag[2],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Lora',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Text(
                    obras[2].categoria.toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'FinalFantasy',
                      fontSize: 25,
                    ),
                  ),
                  CarouselSlider(
                    items: [
                      Image.asset(obras[2].img[0]),
                      Image.asset(obras[2].img[1]),
                      Image.asset(obras[2].img[2]),
                      Image.asset(obras[2].img[3]),
                    ],
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayAnimationDuration: const Duration(seconds: 3),
                      autoPlayInterval: const Duration(seconds: 6),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    margin: const EdgeInsets.all(16.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color.fromARGB(210, 255, 255, 255),
                    ),
                    child: Text(
                      obras[2].descricao,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'FacultyGlyphic',
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: obras[2].abrirCategoria, 
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 215, 185, 116),),
                    ),
                    child: Text(
                      obras[0].textosPag[2],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Lora',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Text(
                    obras[3].categoria.toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'FinalFantasy',
                      fontSize: 25,
                    ),
                  ),
                  CarouselSlider(
                    items: [
                      Image.asset(obras[3].img[0]),
                      Image.asset(obras[3].img[1]),
                      Image.asset(obras[3].img[2]),
                      Image.asset(obras[3].img[3]),
                    ],
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayAnimationDuration: const Duration(seconds: 3),
                      autoPlayInterval: const Duration(seconds: 6),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    margin: const EdgeInsets.all(16.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color.fromARGB(210, 255, 255, 255),
                    ),
                    child: Text(
                      obras[3].descricao,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'FacultyGlyphic',
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: obras[3].abrirCategoria, 
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 215, 185, 116),),
                    ),
                    child: Text(
                      obras[0].textosPag[2],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Lora',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Text(
                    obras[4].categoria.toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'FinalFantasy',
                      fontSize: 25,
                    ),
                  ),
                  CarouselSlider(
                    items: [
                      Image.asset(obras[4].img[0]),
                      Image.asset(obras[4].img[1]),
                      Image.asset(obras[4].img[2]),
                      Image.asset(obras[4].img[3]),
                    ],
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayAnimationDuration: const Duration(seconds: 3),
                      autoPlayInterval: const Duration(seconds: 6),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    margin: const EdgeInsets.all(16.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color.fromARGB(210, 255, 255, 255),
                    ),
                    child: Text(
                      obras[4].descricao,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'FacultyGlyphic',
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: obras[4].abrirCategoria, 
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 215, 185, 116),),
                    ),
                    child: Text(
                      obras[0].textosPag[2],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Lora',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Text(
                    obras[5].categoria.toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'FinalFantasy',
                      fontSize: 25,
                    ),
                  ),
                  CarouselSlider(
                    items: [
                      Image.asset(obras[5].img[0]),
                      Image.asset(obras[5].img[1]),
                      Image.asset(obras[5].img[2]),
                      Image.asset(obras[5].img[3]),
                    ],
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayAnimationDuration: const Duration(seconds: 3),
                      autoPlayInterval: const Duration(seconds: 6),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    margin: const EdgeInsets.all(16.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color.fromARGB(210, 255, 255, 255),
                    ),
                    child: Text(
                      obras[5].descricao,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'FacultyGlyphic',
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: obras[5].abrirCategoria, 
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 215, 185, 116),),
                    ),
                    child: Text(
                      obras[0].textosPag[2],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Lora',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Text(
                    obras[6].categoria.toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'FinalFantasy',
                      fontSize: 25,
                    ),
                  ),
                  CarouselSlider(
                    items: [
                      Image.asset(obras[6].img[0]),
                      Image.asset(obras[6].img[1]),
                      Image.asset(obras[6].img[2]),
                      Image.asset(obras[6].img[3]),
                    ],
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayAnimationDuration: const Duration(seconds: 3),
                      autoPlayInterval: const Duration(seconds: 6),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    margin: const EdgeInsets.all(16.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color.fromARGB(210, 255, 255, 255),
                    ),
                    child: Text(
                      obras[6].descricao,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'FacultyGlyphic',
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: obras[0].abrirCategoria, 
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 215, 185, 116),),
                    ),
                    child: Text(
                      obras[0].textosPag[2],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Lora',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Text(
                    obras[7].categoria.toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'FinalFantasy',
                      fontSize: 25,
                    ),
                  ),
                  Image.asset(
                    obras[7].img[0],
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    margin: const EdgeInsets.all(16.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color.fromARGB(210, 255, 255, 255),
                    ),
                    child: Text(
                      obras[7].descricao,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'FacultyGlyphic',
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: obras[7].abrirCategoria, 
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 215, 185, 116),),
                    ),
                    child: Text(
                      obras[0].textosPag[2],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Lora',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Text(
                    obras[8].categoria.toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'FinalFantasy',
                      fontSize: 25,
                    ),
                  ),
                  CarouselSlider(
                    items: [
                      Image.asset(obras[8].img[0]),
                      Image.asset(obras[8].img[1]),
                      Image.asset(obras[8].img[2]),
                      Image.asset(obras[8].img[3]),
                    ],
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayAnimationDuration: const Duration(seconds: 3),
                      autoPlayInterval: const Duration(seconds: 6),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    margin: const EdgeInsets.all(16.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color.fromARGB(210, 255, 255, 255),
                    ),
                    child: Text(
                      obras[8].descricao,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'FacultyGlyphic',
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: obras[8].abrirCategoria, 
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 215, 185, 116),),
                    ),
                    child: Text(
                      obras[0].textosPag[2],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Lora',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Text(
                    obras[9].categoria.toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'FinalFantasy',
                      fontSize: 25,
                    ),
                  ),
                  CarouselSlider(
                    items: [
                      Image.asset(obras[9].img[0]),
                      Image.asset(obras[9].img[1]),
                      Image.asset(obras[9].img[2]),
                      Image.asset(obras[9].img[3]),
                      Image.asset(obras[9].img[4]),
                      Image.asset(obras[9].img[5]),
                      Image.asset(obras[9].img[6]),
                      Image.asset(obras[9].img[7]),
                    ],
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayAnimationDuration: const Duration(seconds: 3),
                      autoPlayInterval: const Duration(seconds: 6),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    margin: const EdgeInsets.all(16.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color.fromARGB(210, 255, 255, 255),
                    ),
                    child: Text(
                      obras[9].descricao,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'FacultyGlyphic',
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: obras[9].abrirCategoria, 
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 215, 185, 116),),
                    ),
                    child: Text(
                      obras[0].textosPag[2],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Lora',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}