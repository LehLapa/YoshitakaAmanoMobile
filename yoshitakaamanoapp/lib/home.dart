import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/yoshitaka.dart';

class HomePag extends StatefulWidget {
  const HomePag({super.key});

  @override
  State<HomePag> createState() => _HomePag();
}

class _HomePag extends State<HomePag> {

  Yoshitaka yAmano = Yoshitaka(
    textosPags: [
      'Home', 
      'Biografia', 
      'Obras', 
      'Sua História', 
      'Empresas',
      'Outros Jogos'
    ],
    nome: 'Yoshitaka Amano',
    img: [
      'img'
    ],
    bio: '',
    urlSite: '',
    icon: Icons.arrow_back_ios
  );

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
          ),
        )
      ),
    );
  }
}