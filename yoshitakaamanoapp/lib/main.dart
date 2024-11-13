import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/home.dart';
import 'package:yoshitakaamanoapp/obraspag.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPag(),
    );
  }
}

class MainPag extends StatefulWidget {
  const MainPag({super.key});

  @override
  State<MainPag> createState() => _MainPag();
}

class _MainPag extends State<MainPag> {
  int opcaoSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: Stack(
          children: [
            Container(
              height: 60,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 127, 110, 71),
                    Color.fromARGB(255, 215, 185, 116),
                  ],
                ),
              ),
            ),
            BottomNavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: Colors.black,
              fixedColor: const Color.fromARGB(255, 122, 69, 0),
              currentIndex: opcaoSelecionada,
              onTap: (opcao){
                setState((){opcaoSelecionada = opcao;});
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home'
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.brush),
                  label: 'Obras'
                )
              ]
            )
          ],
        ),
        body: IndexedStack(
          index: opcaoSelecionada,
          children: const <Widget>[
            HomePag(),
            ObrasPag()
          ],
        )
      ), 
    );
  }
}