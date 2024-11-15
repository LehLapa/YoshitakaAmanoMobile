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
    imgs: [
      'img/colabs/capcom/eldoradogate.jpg',
      'img/empresasfundo.jpg'
    ],
    descricao: 'Uma série de RPG episódica lançada exclusivamente para o Dreamcast em sete partes. O jogo segue várias histórias interligadas de personagens que buscam o mítico Eldorado. El Dorado Gate utiliza gráficos 2D e uma narrativa que mistura fantasia e aventura, e destaca-se pela sua divisão em episódios, que oferecem uma experiência centrada no desenvolvimento de cada personagem e seus conflitos pessoais. O formato episódico foi inovador e único na época.',
    funcaoDev: '',
    lancamento: 'Lançamento: 10 de outubro de 2000 a 10 de outubro de 2001.',
    distribuidora: 'Distribuidora: Capcom',
    icons: [Icons.arrow_back_ios,]
  );

  @override
  Widget build(BuildContext context) {
    final empresa = ModalRoute.of(context)!.settings.arguments as Empresa;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(colab.imgs[1]),
            opacity: 0.4,
            fit: BoxFit.fill
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(210, 255, 246, 227),
              borderRadius: BorderRadius.circular(45),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context), 
                      icon: Icon(colab.icons[0], color: Colors.black,),
                    ),
                    Padding(padding: EdgeInsets.all(62)),
                    Text(
                      empresa.nome.toUpperCase(),
                      style: TextStyle(
                        fontFamily: 'FinalFantasy',
                        fontSize: 35,
                      ),
                    ),
                  ],
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
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll( Color.fromARGB(255, 215, 185, 116),),
                  ),
                  child: Text(
                    empresa.botaoSiteEmpresa,
                    style: TextStyle(
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.w700,
                      color: Colors.black
                    ),
                  ),
                ),
                Text(
                  empresa.textoPags.toUpperCase(),
                  style: TextStyle(
                    fontFamily: 'FinalFantasy',
                    fontSize: 35,
                  ),
                ),
                Text(
                  colab.titulo,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'FacultyGlyphic',
                    fontSize: 17,
                    color: Colors.black
                  ),
                ),
                Image.asset(
                  colab.imgs[0]
                ),
                Text(
                  colab.descricao,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'FacultyGlyphic',
                    fontSize: 15,
                    color: Colors.black
                  ),
                ),
                Text(
                  colab.distribuidora,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'FacultyGlyphic',
                    fontSize: 15,
                    color: Colors.black
                  ),
                ),
                Text(
                  colab.lancamento,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'FacultyGlyphic',
                    fontSize: 15,
                    color: Colors.black
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}