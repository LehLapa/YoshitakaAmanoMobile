import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/home.dart';
import 'package:yoshitakaamanoapp/teste.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key,});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  int _opcaoSelecionada = 0; // define qual é a página da BottomNavigationBar

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
          BottomNavigationBar(
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
          ),
        ]
      ),
      body: IndexedStack(
        index: _opcaoSelecionada,
        children: const <Widget>[
          Home(),
          TestePag(),
        ],
      )
    )
    );
  }
}