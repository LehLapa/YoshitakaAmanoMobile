import 'package:url_launcher/url_launcher.dart';

class Obra{
  final List<String> textosPag;
  final String categoria;
  final List<String> img;
  final String descricao;
  final String urlCategoria;

  Obra({
    required this.textosPag,
    required this.categoria,
    required this.img,
    required this.descricao,
    required this.urlCategoria,
  });

  Future<void> abrirCategoria() async {
    final Uri url = Uri.parse(urlCategoria);
    if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
    }
  }
}