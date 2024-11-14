import 'package:url_launcher/url_launcher.dart';

class Empresa {
  final String nome;
  final String imgLogo;
  final String descricao;
  final String funcao;
  final String urlSiteEmpresa;
  final String botaoSiteEmpresa;
  final String textoPags;

  Empresa ({
    required this.nome,
    required this.imgLogo,
    required this.descricao,
    required this.funcao,
    required this.urlSiteEmpresa,
    required this.botaoSiteEmpresa,
    required this.textoPags,
  });

  Future<void> abrirSiteEmpresa() async {
    final Uri url = Uri.parse(urlSiteEmpresa);
    if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
    }
  }
}