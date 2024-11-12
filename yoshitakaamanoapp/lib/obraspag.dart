import 'package:flutter/material.dart';
//import 'package:carousel_slider/carousel_slider.dart';

class ObrasPag extends StatefulWidget {
  const ObrasPag({super.key,});

  @override
  State<ObrasPag> createState() => _ObrasPag();
}

class _ObrasPag extends State<ObrasPag> {
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