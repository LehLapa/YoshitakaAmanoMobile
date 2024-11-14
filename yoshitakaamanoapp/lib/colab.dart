import 'package:flutter/material.dart';

class Colab {
  String video;
  final String titulo;
  final String img;
  final String descricao;
  final String funcaoDev;
  final String lancamento;
  final String distribuidora;
  final List<IconData> icons;

  Colab (
    this.video,
  {
    required this.titulo,
    required this.img,
    required this.descricao,
    required this.funcaoDev,
    required this.lancamento,
    required this.distribuidora,
    required this.icons,
  });
}