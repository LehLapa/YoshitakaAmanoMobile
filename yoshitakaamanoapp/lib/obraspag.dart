import 'package:flutter/material.dart';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:yoshitakaamanoapp/yoshitaka.dart';
import 'package:yoshitakaamanoapp/main.dart';
import 'package:yoshitakaamanoapp/biopag.dart';

class ObrasPag extends StatefulWidget {
  const ObrasPag({super.key,});

  @override
  State<ObrasPag> createState() => _ObrasPag();
}

class _ObrasPag extends State<ObrasPag> {

  void navegacao(Widget pagina) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => pagina,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final yAmano = ModalRoute.of(context)!.settings.arguments as Yoshitaka;
    return Scaffold(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildIconButton(
                icon: Icons.home,
                tooltip: yAmano.textosPags[0],
                onPressed: () => navegacao(const HomePag()),
              ),
              buildIconButton(
                icon: Icons.person,
                tooltip: yAmano.textosPags[1],
                onPressed: () => navegacao(const BioPag()),
              ),
              buildIconButton(
                icon: Icons.brush,
                tooltip: yAmano.textosPags[2],
                onPressed: () => navegacao(const ObrasPag()),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        color: const Color.fromARGB(255, 255, 216, 108),
        child: Center(
          child: Container(
            color: const Color.fromARGB(255, 255, 248, 147),
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                /*CarouselSlider(
                  items: [],
                  options: ,
                ),
                CarouselSlider(items: [items], options: options)*/
                Text(yAmano.textosPags[2])
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildIconButton({
    required IconData icon,
    required String tooltip,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      width: 60,
      height: 60,
      child: IconButton(
        icon: Icon(icon, color: Colors.white),
        tooltip: tooltip,
        onPressed: onPressed,
      ),
    );
  }
}