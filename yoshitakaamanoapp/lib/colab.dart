import 'package:flutter/material.dart';

class Colab {
  String video;
  final String titulo;
  final List<String> imgs;
  final String descricao;
  final String funcaoDev;
  final String lancamento;
  final String distribuidora;
  final List<IconData> icons;

  Colab (
    this.video,
  {
    required this.titulo,
    required this.imgs,
    required this.descricao,
    required this.funcaoDev,
    required this.lancamento,
    required this.distribuidora,
    required this.icons,
  });
}