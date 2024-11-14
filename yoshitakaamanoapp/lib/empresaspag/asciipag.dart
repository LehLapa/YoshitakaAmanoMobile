import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/empresa.dart';
import 'package:yoshitakaamanoapp/colab.dart';

class AsciiPag extends StatefulWidget {
  const AsciiPag({super.key});

  @override
  State<AsciiPag> createState() => _AsciiPag();
}

class _AsciiPag extends State<AsciiPag> {

  final Colab colab = Colab(
    '', 
    titulo: 'Maten Densetsu',
    img: '',
    descricao: 'Um RPG de horror com temática sobrenatural lançado para o Super Famicom. Maten Densetsu é ambientado em um mundo onde espíritos malignos ameaçam a humanidade, e o jogador assume o papel de personagens que enfrentam esses espíritos. O jogo se destaca por sua atmosfera sombria, narrativa baseada em mitologias orientais e uma combinação de exploração com batalhas estratégicas por turnos, tudo com um estilo gráfico detalhado para a época.',
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