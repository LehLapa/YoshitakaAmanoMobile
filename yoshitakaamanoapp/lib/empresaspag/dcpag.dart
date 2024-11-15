import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/empresa.dart';
import 'package:yoshitakaamanoapp/colab.dart';

class DcPag extends StatefulWidget {
  const DcPag({super.key});

  @override
  State<DcPag> createState() => _DcPag();
}

class _DcPag extends State<DcPag> {

  final Colab colab = Colab(
    '', 
    titulo: 'Sandman: The Dream Chasers',
    imgs: [
      'img/colabs/dc/sandman.jpg',
      'img/empresasfundo.jpg'
    ],
    descricao: 'De maneira análoga, a adaptação e a lenda, ambas contam sobre uma raposa e um texugo que apostam para ver quem conseguiria afastar um monge budista de seu templo, sendo assim, o que ganhasse faria de lá o seu lar. Avançando na história, entre tentativas e relações, a Raposa se apaixona pelo monge, e vai atrás do Senhor do Sonho para salvar a vida de seu amado. As mitologias que inspiram Sandman são, respectivamente as próprias histórias do Sandman, utilizando de sua areia mágica para adormecer pessoas de seu interesse e entregá-las bons sonhos. Também a narrativa aborda, a história de Morfeu (que nomeia o protagonista da história), o deus dos sonhos e filho do deus do sono, Hipnos, ele é um metamorfo alado, capaz de assumir a forma que desejasse, assim ele podia se locomover rapidamente com suas asas grandiosas e se manifestar com a aparência que quisesse nos sonhos.',
    funcaoDev: '',
    lancamento: 'Lançamento: 1999',
    distribuidora: 'Distribuidora: DC Comics',
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