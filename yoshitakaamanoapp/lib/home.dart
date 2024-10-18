import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/teste.dart';
//import 'package:carousel_slider/carousel_slider.dart';
//import 'biografia.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  
  navegar(){
    Navigator.push(
      context,
      MaterialPageRoute(builder:
        (context) => const TestePag()),
    );
  }

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
      ),),
    );
  }
}