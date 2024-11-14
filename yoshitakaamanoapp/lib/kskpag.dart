import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/empresa.dart';

class KskPag extends StatefulWidget {
  const KskPag({super.key,});

  @override
  State<KskPag> createState() => _KskPag();
}

class _KskPag extends State<KskPag> {
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