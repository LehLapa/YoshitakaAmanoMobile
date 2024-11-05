import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/home.dart';
import 'package:yoshitakaamanoapp/obraspag.dart';
//import 'package:yoshitakaamanoapp/yoshitaka.dart';

void main() {
  runApp(const MyApp());
}

class Main {
  final List<String> textos;
  final List<IconData> icons;

  Main ({
    required this.textos,
    required this.icons
  });

  Widget indexStack(int index){
    return IndexedStack(
      index: index,
      children: const <Widget>[
        HomePag(),
        ObrasPag()
      ],
    );
  }
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
  int index = 0;

  final Main main = Main(
    textos: [
      'Home',
      'Obras'
    ],
    icons: [
      Icons.home,
      Icons.brush_rounded
    ],
  );

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
                    Color.fromARGB(255, 15, 66, 107),
                    Color.fromARGB(255, 0, 20, 49),
                  ],
                ),
              ),
            ),
            BottomNavigationBar(
              backgroundColor: Colors.transparent,
              unselectedItemColor: Colors.black,
              fixedColor: const Color.fromARGB(255, 122, 69, 0),
              currentIndex: index,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(main.icons[0]),
                  label: main.textos[0]
                ),
                BottomNavigationBarItem(
                  icon: Icon(main.icons[0]),
                  label: main.textos[0]
                )
              ]
            )
          ],
        ),
        body: main.indexStack(index)
      ), 
    );
  }
}