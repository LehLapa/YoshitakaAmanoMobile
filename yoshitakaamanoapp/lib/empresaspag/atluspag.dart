import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/empresa.dart';
import 'package:yoshitakaamanoapp/colab.dart';

class AtlusPag extends StatefulWidget {
  const AtlusPag({super.key});

  @override
  State<AtlusPag> createState() => _AtlusPag();
}

class _AtlusPag extends State<AtlusPag> {

  final Colab colab = Colab(
    '', 
    titulo: 'Kartia: The Word of Fate',
    img: '',
    descricao: 'Kartia: The Word of Fate (1998) é um RPG tático desenvolvido pela Atlus para o PlayStation, conhecido por seu enredo elaborado e sistema de combate estratégico. O jogo permite aos jogadores controlar dois protagonistas, Lacryma e Toxa, cada um com uma perspectiva própria sobre uma guerra que ameaça seu mundo. Uma das mecânicas principais é o uso das "Kartias," cartas mágicas que permitem criar armas, armaduras e até invocar criaturas para a batalha. Essa mecânica adiciona uma camada estratégica, já que os recursos são limitados e devem ser usados com cuidado. Com ilustrações de Yoshitaka Amano e uma narrativa que explora temas de destino e moralidade, Kartia ganhou reconhecimento pela sua profundidade e inovação no gênero de RPGs táticos.',
    funcaoDev: '',
    lancamento: '',
    distribuidora: '',
    icons: []
  );

  @override
  Widget build(BuildContext context) {
    final empresa = ModalRoute.of(context)!.settings.arguments as Empresa;
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 255, 216, 108),
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 248, 147),
              borderRadius: BorderRadius.circular(45)
            ),
            child: Column(
              children: <Widget>[
                Text(
                  empresa.nome.toUpperCase(),
                  style: TextStyle(
                    fontFamily: 'FinalFantasy',
                    fontSize: 35,
                  ),
                ),
                Image.asset(
                  empresa.imgLogo,
                ),
                Text(
                  empresa.descricao,
                  style: TextStyle(
                    fontFamily: 'FacultyGlyphic',

                  ),
                ),
                ElevatedButton(
                  onPressed: empresa.abrirSiteEmpresa,
                  child: Text(
                    empresa.botaoSiteEmpresa,
                    style: TextStyle(
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  empresa.textoPags.toUpperCase(),
                  style: TextStyle(
                    fontFamily: 'FinalFantasy',
                  ),
                ),
                Text(
                  colab.titulo
                ),
                Image.asset(
                  colab.img
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}