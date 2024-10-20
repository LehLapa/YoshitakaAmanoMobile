import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/biopag.dart';
import 'package:yoshitakaamanoapp/biografia.dart';
import 'package:yoshitakaamanoapp/obraspag.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePag(),
    );
  }
}


class HomePag extends StatefulWidget {
  const HomePag ({super.key,});

  @override
  State<HomePag> createState() => _HomePag();
}

class _HomePag extends State<HomePag> {
  

  navegacao(String tooltip){
    if(tooltip == yAmano.tituloPag[0]){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ObrasPag(),
          settings: RouteSettings(
            arguments:yAmano,
          ),
        ),
      );
    }
    else if (tooltip == yAmano.tituloPag[1]){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const BioPag(),
          settings: RouteSettings(
            arguments:yAmano,
          ),
        ),
      );
    }
    else if (tooltip == yAmano.tituloPag[2]){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const MyApp(),
          settings: RouteSettings(
            arguments:yAmano,
          ),
        ),
      );
    }
  }

  Biografia yAmano = Biografia(
    tituloPag: [
      'Home',
      'Biografia',
      'Obras',
      'Yoshitaka Amano',
      'Sua História',
      'Empresas'
    ],
    nome: '',
    img: [
      'img'
    ]
  );

  //int _opcaoSelecionada = 0; // define qual é a página da BottomNavigationBar
  Widget buildIconButton(BuildContext context, IconData icon, String route, String tooltip) {
    return SizedBox(
      width: 60,
      height: 60,
      child: IconButton(
        icon: Icon(icon, color: Colors.white),
        tooltip: tooltip,
        onPressed: (){
          if (route == 'home'){
            
          }
          else if (route == 'bio'){
            
          }
          else if (route == 'obras'){
            
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      bottomNavigationBar: Stack(
        children: [
          Container( // container customizado para ser do tamanho da BottomNavigationBar e dar o efeito gradiente
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 15, 66, 107),
                  Color.fromARGB(255, 0, 20, 49),
                ],
              ),
            ),
            height: 60, // altura do container/appbar
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: navegacao(yAmano.tituloPag[0]), 
                icon: const Icon(Icons.home, color: Colors.white,),
                tooltip: yAmano.tituloPag[0],
              ),
              IconButton(
                onPressed: navegacao(yAmano.tituloPag[1]), 
                icon: const Icon(Icons.person, color: Colors.white,),
                tooltip: yAmano.tituloPag[1],
              ),
              IconButton(
                onPressed: navegacao(yAmano.tituloPag[2]), 
                icon: const Icon(Icons.brush, color: Colors.white,),
                tooltip: yAmano.tituloPag[2],
              ),
            ],
          )
          /*BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            type: BottomNavigationBarType.fixed, // define que a BottomnavigationBar pode ter mais do que 3 itens
            fixedColor: const Color.fromARGB(255, 255, 187, 0),
            unselectedItemColor: const Color.fromARGB(255, 163, 119, 23),
            currentIndex: _opcaoSelecionada,
            onTap: (opcao){
              setState(() {
                _opcaoSelecionada = opcao;
              }); // define o estado da BottomNavigationBar de acordo com a opção que foi selecionada
            },
            items: const [ // itens da BottomNavigationBar
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.sports_esports),
                label: 'Sobre o jogo'
              ),
            ], 
          ),*/
        ]
      ),
      body: Container(
        color: const Color.fromARGB(255, 255, 216, 108),
        child: Center(
          child: Container(
            color: const Color.fromARGB(255, 255, 248, 147),
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(16.0),
            child: const Text(''),
          ),
        ),
      ),
      /*IndexedStack(
        index: _opcaoSelecionada,
        children: const <Widget>[
          Home(),
          TestePag(),
        ],
      )*/
    )
    );
  }
}