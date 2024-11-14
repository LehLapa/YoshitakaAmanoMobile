import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/empresa.dart';

class AtlusPag extends StatefulWidget {
  const AtlusPag({super.key,});

  @override
  State<AtlusPag> createState() => _AtlusPag();
}

class _AtlusPag extends State<AtlusPag> {
  @override
  Widget build(BuildContext context) {
    final empresa = ModalRoute.of(context)!.settings.arguments as Empresa;
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 255, 216, 108),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                /*CarouselSlider(
                  items: [],
                  options: ,
                ),
                CarouselSlider(items: [items], options: options)*/
                Text(empresa.nome),
              ],
            ),
          ),
        ),
      ),
    );
  }
}