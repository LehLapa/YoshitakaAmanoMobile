import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/obra.dart';
//import 'package:carousel_slider/carousel_slider.dart';

class ObrasPag extends StatefulWidget {
  const ObrasPag({super.key,});

  @override
  State<ObrasPag> createState() => _ObrasPag();
}

class _ObrasPag extends State<ObrasPag> {
  final List<Obra> obras = [
    Obra(
      textosPag: [
        ''
      ],
      categoria: 'Devaloka',
      img: [
        ''
      ],
      descricao: '',
    ),
    Obra(
      textosPag: [
        ''
      ],
      categoria: '',
      img: [
        ''
      ],
      descricao: '',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 255, 216, 108),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(16.0),
            child: const Column(
              children: [
                /*CarouselSlider(
                  items: [],
                  options: ,
                ),
                CarouselSlider(items: [items], options: options)*/
                Text('yAmano.textosPags[2]'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}