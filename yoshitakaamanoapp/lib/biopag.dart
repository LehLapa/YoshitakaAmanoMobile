import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:yoshitakaamanoapp/yoshitaka.dart';
import 'package:yoshitakaamanoapp/empresa.dart';
import 'package:yoshitakaamanoapp/empresaspag/asciipag.dart';
import 'package:yoshitakaamanoapp/empresaspag/atluspag.dart';
import 'package:yoshitakaamanoapp/empresaspag/capcompag.dart';
import 'package:yoshitakaamanoapp/empresaspag/compheartpag.dart';
import 'package:yoshitakaamanoapp/empresaspag/dcpag.dart';
import 'package:yoshitakaamanoapp/empresaspag/kskpag.dart';
import 'package:yoshitakaamanoapp/empresaspag/level5pag.dart';
import 'package:yoshitakaamanoapp/empresaspag/marvelpag.dart';
import 'package:yoshitakaamanoapp/empresaspag/mistwalkerpag.dart';
import 'package:yoshitakaamanoapp/empresaspag/squarepag.dart';
import 'package:yoshitakaamanoapp/empresaspag/ubisoftpag.dart';

class BioPag extends StatefulWidget {
  const BioPag({super.key,});

  @override
  State<BioPag> createState() => _BioPag();
}

class _BioPag extends State<BioPag> {

  int currentIndex = 0;

  List<Empresa> empresas = [
    Empresa(
      nome: 'Square Enix', 
      imgLogo: 'img/logos/square.jpg', 
      descricao: 'A Square Co., Ltd. (hoje conhecida como Square Enix) é uma empresa japonesa de videogames fundada em 1986 por Masafumi Miyamoto. Inicialmente, a Square se destacou no desenvolvimento de jogos para computadores pessoais, mas ganhou grande notoriedade com o lançamento de Final Fantasy em 1987. O jogo foi um enorme sucesso e estabeleceu a empresa como uma das maiores desenvolvedoras de jogos de RPG (role-playing game) no mundo.\n Ao longo dos anos, a Square lançou vários títulos da série Final Fantasy, cada um introduzindo inovações em jogabilidade, gráficos e narrativa, tornando a franquia uma das mais icônicas da história dos videogames. Além de Final Fantasy, a Square também criou outras franquias populares, como Chrono Trigger, Kingdom Hearts (em parceria com a Disney) e Secret of Mana.\n Em 2003, a Square se fundiu com a Enix, uma desenvolvedora japonesa igualmente renomada e conhecida pela franquia Dragon Quest, formando a Square Enix. Desde então, a empresa continuou a produzir títulos de sucesso e expandiu suas operações para várias áreas, incluindo desenvolvimento de jogos para dispositivos móveis e filmes, mantendo-se como uma das gigantes da indústria de entretenimento.',
      funcao: 'Após ingressar na desenvolvedora Square, no Japão, Yoshitaka Amano atuou como designer de personagens, responsável pelo logotipo principal e também como designer gráfico.',
      urlSiteEmpresa: 'https://www.square-enix.com',
      botaoSiteEmpresa: 'Site Oficial',
      textoPags: 'Jogos colaborados'
    ),
    Empresa(
      nome: 'Kure Software Koubou', 
      imgLogo: 'img/logos/ksk.jpg', 
      descricao: 'Kure Software Koubou é uma desenvolvedora japonesa de jogos fundada em 1985, conhecida por ser uma das pioneiras no desenvolvimento de RPGs táticos e de estratégia. A empresa se destacou especialmente nos anos 80 e 90 com sua série Silver Ghost e títulos como First Queen, que combinaram elementos de RPG com batalhas em larga escala. Kure Software Koubou é reconhecida por introduzir mecânicas inovadoras, como controle simultâneo de vários personagens em combate, e por seus jogos com temas de fantasia medieval. Embora tenha um perfil relativamente discreto, a empresa tem um papel importante na história dos jogos de estratégia japoneses e segue criando títulos de nicho que atraem fãs leais.',
      funcao: 'Na Kure Software Koubou, Yoshitaka trabalhou como ilustrador para as capas comerciais de diversas franquias de jogos e títulos independentes.',
      urlSiteEmpresa: 'http://www.kuresoft.net',
      botaoSiteEmpresa: 'Site Oficial',
      textoPags: 'Jogos colaborados'
    ),
    Empresa(
      nome: 'Atlus', 
      imgLogo: 'img/logos/atlus.jpg', 
      descricao: 'Atlus é uma desenvolvedora e publicadora japonesa de videogames, fundada em 1986, conhecida por criar jogos de RPG inovadores, com temas profundos e narrativas focadas em questões psicológicas e sociais. A empresa é especialmente renomada pela série Megami Tensei e seu spin-off Persona, que abordam dilemas emocionais e escolhas morais em ambientações urbanas e fantásticas. Atlus destaca-se por seu estilo artístico único, trilhas sonoras marcantes e personagens complexos. Desde 2013, a Atlus faz parte do grupo SEGA, mas mantém sua identidade criativa, lançando títulos que atraem uma base de fãs leal, especialmente no gênero de RPGs japoneses.',
      funcao: 'Atuou exclusivamente como designer de arte no jogo solo Kartia: The Word of Fate (1998).',
      urlSiteEmpresa: 'https://atlus.com',
      botaoSiteEmpresa: 'Site Oficial',
      textoPags: 'Jogo colaborado'
    ),
    Empresa(
      nome: 'ASCII Corporation', 
      imgLogo: 'img/logos/ascii.jpg', 
      descricao: 'ASCII Corporation foi uma empresa japonesa fundada em 1977, conhecida por seu papel pioneiro na indústria de jogos e publicação de software, bem como por revistas e materiais de programação. Atuou no desenvolvimento e distribuição de jogos para consoles e computadores, sendo influente no desenvolvimento do MSX, um dos primeiros computadores domésticos no Japão. ASCII também ajudou a moldar o mercado de software japonês antes de se fundir com o Enterbrain em 2000.',
      funcao: 'Atuou exclusivamente como designer de arte no jogo solo Kartia: The Word of Fate (1998).',
      urlSiteEmpresa: '',
      botaoSiteEmpresa: 'Site Oficial',
      textoPags: 'Jogo colaborado'
    ),
    Empresa(
      nome: 'Capcom', 
      imgLogo: 'img/logos/capcom.jpg', 
      descricao: 'Capcom é uma gigante japonesa de videogames, fundada em 1979 e conhecida por franquias icônicas como Street Fighter, Resident Evil e Mega Man. A empresa é conhecida por sua habilidade em criar jogos de ação com mecânicas refinadas, além de adaptar-se às novas tecnologias e tendências de jogos. Capcom tem sido uma força influente na indústria de jogos, popularizando gêneros e inovando em gráficos e jogabilidade.',
      funcao: 'Desenvolveu o design de personagens para o jogo solo Maten Densetsu (1995).',
      urlSiteEmpresa: 'https://www.capcom.com',
      botaoSiteEmpresa: 'Site Oficial',
      textoPags: 'Jogo colaborado'
    ),
    Empresa(
      nome: 'Level-5', 
      imgLogo: 'img/logos/level5.jpg', 
      descricao: 'Level-5 é uma desenvolvedora japonesa fundada em 1998, famosa por seus RPGs criativos e séries como Professor Layton, Ni no Kuni e Inazuma Eleven. Com uma abordagem única para a narrativa e um estilo gráfico vibrante, a Level-5 cria jogos que misturam exploração, mecânicas de RPG e histórias cativantes. A empresa é conhecida por sua atenção aos detalhes visuais e sua capacidade de construir mundos imersivos.',
      funcao: 'Para a Level-5, trabalhou como Designer de Imagem em Fantasy Life (2012).',
      urlSiteEmpresa: 'https://www.level5.co.jp',
      botaoSiteEmpresa: 'Site Oficial',
      textoPags: 'Jogo colaborado'
    ),
    Empresa(
      nome: 'Compile Heart', 
      imgLogo: 'img/logos/compileheart.jpg', 
      descricao: 'Compile Heart é uma subsidiária da Idea Factory, fundada em 2006, conhecida por seus RPGs voltados para o público japonês, como a série Hyperdimension Neptunia. A empresa se especializa em RPGs com um estilo visual de anime, histórias humorísticas e mecânicas de combate focadas em estratégias e habilidades combinadas, geralmente com personagens femininas marcantes e temas de fantasia.',
      funcao: 'Na desenvolvedora Compile Heart, contribuiu como designer de arte em Fairy Fencer F (2013) e como Designer de Imagem em Arc of Alchemist (2019), ambos jogos solo.',
      urlSiteEmpresa: 'https://www.compileheart.com',
      botaoSiteEmpresa: 'Site Oficial',
      textoPags: 'Jogos colaborados'
    ),
    Empresa(
      nome: 'Mistwalker', 
      imgLogo: 'img/logos/mistwalker.jpg', 
      descricao: 'Mistwalker é um estúdio japonês fundado em 2004 por Hironobu Sakaguchi, o criador de Final Fantasy. O estúdio é conhecido por seus RPGs de alta qualidade, como Blue Dragon e Lost Odyssey, que combinam uma jogabilidade clássica de RPG com narrativas emocionantes e profundidade de personagens. Mistwalker continua inovando e lançando jogos independentes que refletem o estilo RPG japonês de Sakaguchi.',
      funcao: 'Exerceu a função de designer de personagens no jogo solo Terra Battle (2014), da Mistwalker.',
      urlSiteEmpresa: 'https://www.mistwalkercorp.com',
      botaoSiteEmpresa: 'Site Oficial',
      textoPags: 'Jogo colaborado'
    ),
    Empresa(
      nome: 'Ubisoft', 
      imgLogo: 'img/logos/ubisoft.jpg', 
      descricao: "Ubisoft é uma empresa francesa de videogames, fundada em 1986, e uma das maiores publicadoras e desenvolvedoras do mundo. Conhecida por séries como Assassin's Creed, Far Cry e Rayman, Ubisoft se destaca por seus mundos abertos e narrativas ricas. A empresa investe em inovação, especialmente em jogos de aventura e ação, e tem estúdios ao redor do mundo.",
      funcao: 'Foi designer de imagem para o jogo solo Child of Light (2014), da Ubisoft.',
      urlSiteEmpresa: 'https://www.ubisoft.com',
      botaoSiteEmpresa: 'Site Oficial',
      textoPags: 'Jogo colaborado'
    ),
    Empresa(
      nome: 'DC Comics', 
      imgLogo: 'img/logos/dc.jpg', 
      descricao: 'DC Comics, uma das empresas mais renomadas de animações, filmes e histórias em quadrinhos. Yoshitaka Amano, trabalhou em Sandman: The Dream Chasers, uma história escrita por Neil Gaiman, ao qual, é adaptada uma lenda japonesa antiga e faz uma mistura de mitologias orientas e ocidentais, desse modo, Yoshitaka ilustra toda a versão em prosa, a pedido de Neil Gaiman.', 
      funcao: '', 
      urlSiteEmpresa: 'https://www.dc.com/',
      botaoSiteEmpresa: 'Site Oficial',
      textoPags: 'Trabalho colaborado'
    ),
    Empresa(
      nome: 'Marvel', 
      imgLogo: 'img/logos/marvel.jpg', 
      descricao: 'Marvel Entertainment, atualmente conhecida como uma das maiores editoras de histórias em quadrinhos do mundo, também, expandindo seu alcance para outras mídias, como: séries, filmes e seu universo mágico de super-heróis. Desse modo, Yoshitaka Amano realizou as ilustrações da obra Elektra and Wolverine: The Redeemer, distribuida e publicada pela Marvel em 2002. A mini-série de três volumes segue uma linha similar a Sandman, contendo ilustrações de página inteira com textos estilizados as acompanhnado, pois como notado, Amano não trabalha com estilos clássicos de histórias em quadrinhos, assim contribuindo para um maior leque de narrativas para Marvel.', 
      funcao: '', 
      urlSiteEmpresa: 'https://www.marvel.com/',
      botaoSiteEmpresa: 'Site Oficial',
      textoPags: 'Trabalho colaborado'
    ),
  ];

  navegacao(Widget pagina){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => pagina,
        settings: RouteSettings(
          arguments: empresas[currentIndex],
        )
      )
    );
  }

  List<Widget> pags = [
    SquarePag(),
    KskPag(),
    AtlusPag(),
    AsciiPag(),
    CapcomPag(),
    Level5Pag(),
    CompHeartPag(),
    MistwalkerPag(),
    UbisoftPag(),
    DcPag(),
    MarvelPag(),
  ];
  
  @override
  Widget build(BuildContext context) {
    final yAmano = ModalRoute.of(context)!.settings.arguments as Yoshitaka;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(yAmano.imgs[1]),
                opacity: 0.6,
                fit: BoxFit.fill,
              )
            ),
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                margin: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(45)),
                  color: Color.fromARGB(210, 255, 246, 227),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => Navigator.pop(context), 
                          icon: Icon(yAmano.icon, color: Colors.black,),
                        ),
                        Padding(padding: EdgeInsets.all(62)),
                        Text(
                          yAmano.textosPags[1].toUpperCase(), 
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'FinalFantasy',
                            fontSize: 40,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      yAmano.textosPags[2].toUpperCase(),
                      style: TextStyle(
                        fontFamily: 'FinalFantasy',
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      yAmano.bio,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'FacultyGlyphic',
                        fontSize: 15,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    ElevatedButton(
                      onPressed: yAmano.abrirSite,
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 215, 185, 116),),
                      ),
                      child: Text(
                        yAmano.textosPags[11],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Lora',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Text(
                      yAmano.textosPags[12].toUpperCase(),
                      style: TextStyle(
                        fontFamily: 'FinalFantasy',
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      yAmano.carreira,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'FacultyGlyphic',
                        fontSize: 15,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Text(
                      yAmano.textosPags[3].toUpperCase(),
                      style: TextStyle(
                        fontFamily: 'FinalFantasy',
                        fontSize: 35,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(3)),
                    CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        autoPlayAnimationDuration: const Duration(seconds: 3),
                        autoPlayInterval: const Duration(seconds: 10),
                        onPageChanged: (index, reason) {
                          setState((){
                            currentIndex = index;
                          });
                        },
                      ),
                      items: [
                        IconButton(
                          onPressed: () => navegacao(pags[0]),
                          icon: Image.asset(empresas[0].imgLogo)
                        ),
                        IconButton(
                          onPressed: () => navegacao(pags[1]),
                          icon: Image.asset(empresas[1].imgLogo)
                        ),
                        IconButton(
                          onPressed: () => navegacao(pags[2]),
                          icon: Image.asset(empresas[2].imgLogo)
                        ),
                        IconButton(
                          onPressed: () => navegacao(pags[3]),
                          icon: Image.asset(empresas[3].imgLogo)
                        ),
                        IconButton(
                          onPressed: () => navegacao(pags[4]),
                          icon: Image.asset(empresas[4].imgLogo)
                        ),
                        IconButton(
                          onPressed: () => navegacao(pags[5]),
                          icon: Image.asset(empresas[5].imgLogo)
                        ),
                        IconButton(
                          onPressed: () => navegacao(pags[6]),
                          icon: Image.asset(empresas[6].imgLogo)
                        ),
                        IconButton(
                          onPressed: () => navegacao(pags[7]),
                          icon: Image.asset(empresas[7].imgLogo)
                        ),
                        IconButton(
                          onPressed: () => navegacao(pags[8]),
                          icon: Image.asset(empresas[8].imgLogo)
                        ),
                        IconButton(
                          onPressed: () => navegacao(pags[9]),
                          icon: Image.asset(empresas[9].imgLogo,)
                        ),
                        IconButton(
                          onPressed: () => navegacao(pags[10]),
                          icon: Image.asset(empresas[10].imgLogo)
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}