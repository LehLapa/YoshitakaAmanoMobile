import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/empresa.dart';
import 'package:yoshitakaamanoapp/colab.dart';

class CapcomPag extends StatefulWidget {
  const CapcomPag({super.key});

  @override
  State<CapcomPag> createState() => _CapcomPag();
}

class _CapcomPag extends State<CapcomPag> {

  final Colab colab = Colab(
    '', 
    titulo: 'El Dorado Gate',
    img: '',
    descricao: 'Uma série de RPG episódica lançada exclusivamente para o Dreamcast em sete partes. O jogo segue várias histórias interligadas de personagens que buscam o mítico Eldorado. El Dorado Gate utiliza gráficos 2D e uma narrativa que mistura fantasia e aventura, e destaca-se pela sua divisão em episódios, que oferecem uma experiência centrada no desenvolvimento de cada personagem e seus conflitos pessoais. O formato episódico foi inovador e único na época.',
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