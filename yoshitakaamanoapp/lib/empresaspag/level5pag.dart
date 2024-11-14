import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/empresa.dart';
import 'package:yoshitakaamanoapp/colab.dart';

class Level5Pag extends StatefulWidget {
  const Level5Pag({super.key});

  @override
  State<Level5Pag> createState() => _Level5Pag();
}

class _Level5Pag extends State<Level5Pag> {

  final Colab colab = Colab(
    '', 
    titulo: 'Fantasy Life',
    img: '',
    descricao: 'Um RPG de simulação de vida para o Nintendo 3DS onde os jogadores escolhem entre várias “vidas” (ou classes), como guerreiro, mago ou ferreiro, cada uma com atividades únicas. O jogo combina elementos de RPG com mecânicas de construção e crafting, permitindo ao jogador alternar entre as vidas e progredir em cada uma. Fantasy Life é conhecido por seu estilo colorido, jogabilidade variada e possibilidade de exploração e cooperação em um mundo aberto e encantador.',
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