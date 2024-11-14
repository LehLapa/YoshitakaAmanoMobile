import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/empresa.dart';

class MistwalkerPag extends StatefulWidget {
  const MistwalkerPag({super.key,});

  @override
  State<MistwalkerPag> createState() => _MistwalkerPag();
}

class _MistwalkerPag extends State<MistwalkerPag> {
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