import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Yoshitaka {
  final List<String> textosPags;
  final String nome;
  final List<String> img;
  final String bio;
  final String urlSite;
  final IconData icon;

  Yoshitaka ({
    required this.textosPags,
    required this.nome,
    required this.img,
    required this.bio,
    required this.urlSite,
    required this.icon,
  });

  Future<void> abrirSite() async {
    final Uri url = Uri.parse(urlSite);
    if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
    }
  }
}