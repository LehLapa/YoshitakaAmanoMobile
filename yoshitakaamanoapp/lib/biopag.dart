import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/yoshitaka.dart';
import 'package:yoshitakaamanoapp/empresa.dart';
import 'package:yoshitakaamanoapp/empresapag.dart';

class BioPag extends StatefulWidget {
  const BioPag({super.key,});

  @override
  State<BioPag> createState() => _BioPag();
}

class _BioPag extends State<BioPag> {

  List<Empresa> empresas = [
    Empresa(
      nome: 'Square', 
      imgLogo: 'img/logos/square.jpg', 
      descricao: 'A Square Co., Ltd. (hoje conhecida como Square Enix) é uma empresa japonesa de videogames fundada em 1986 por Masafumi Miyamoto. Inicialmente, a Square se destacou no desenvolvimento de jogos para computadores pessoais, mas ganhou grande notoriedade com o lançamento de Final Fantasy em 1987. O jogo foi um enorme sucesso e estabeleceu a empresa como uma das maiores desenvolvedoras de jogos de RPG (role-playing game) no mundo.\n Ao longo dos anos, a Square lançou vários títulos da série Final Fantasy, cada um introduzindo inovações em jogabilidade, gráficos e narrativa, tornando a franquia uma das mais icônicas da história dos videogames. Além de Final Fantasy, a Square também criou outras franquias populares, como Chrono Trigger, Kingdom Hearts (em parceria com a Disney) e Secret of Mana.\n Em 2003, a Square se fundiu com a Enix, uma desenvolvedora japonesa igualmente renomada e conhecida pela franquia Dragon Quest, formando a Square Enix. Desde então, a empresa continuou a produzir títulos de sucesso e expandiu suas operações para várias áreas, incluindo desenvolvimento de jogos para dispositivos móveis e filmes, mantendo-se como uma das gigantes da indústria de entretenimento.',
      funcao: 'Após ingressar na desenvolvedora Square, no Japão, Yoshitaka Amano atuou como designer de personagens, responsável pelo logotipo principal e também como designer gráfico.',
      urlSiteEmpresa: ''
    ),
    Empresa(
      nome: 'Kure Software Koubou', 
      imgLogo: 'img/logos/ksk.jpg', 
      descricao: 'Kure Software Koubou é uma desenvolvedora japonesa de jogos fundada em 1985, conhecida por ser uma das pioneiras no desenvolvimento de RPGs táticos e de estratégia. A empresa se destacou especialmente nos anos 80 e 90 com sua série Silver Ghost e títulos como First Queen, que combinaram elementos de RPG com batalhas em larga escala. Kure Software Koubou é reconhecida por introduzir mecânicas inovadoras, como controle simultâneo de vários personagens em combate, e por seus jogos com temas de fantasia medieval. Embora tenha um perfil relativamente discreto, a empresa tem um papel importante na história dos jogos de estratégia japoneses e segue criando títulos de nicho que atraem fãs leais.',
      funcao: 'Na Kure Software Koubou, Yoshitaka trabalhou como ilustrador para as capas comerciais de diversas franquias de jogos e títulos independentes.',
      urlSiteEmpresa: ''
    ),
    Empresa(
      nome: 'Atlus', 
      imgLogo: 'img/logos/atlus.png', 
      descricao: '',
      funcao: 'Atuou exclusivamente como designer de arte no jogo solo Kartia: The Word of Fate (1998).',
      urlSiteEmpresa: ''
    ),
    Empresa(
      nome: 'ASCII Corporation', 
      imgLogo: 'img/logos/ascii.png', 
      descricao: '',
      funcao: '',
      urlSiteEmpresa: ''
    ),
    Empresa(
      nome: 'Capcom', 
      imgLogo: 'img/logos/capcom.png', 
      descricao: '',
      funcao: 'Desenvolveu o design de personagens para o jogo solo Maten Densetsu (1995).',
      urlSiteEmpresa: ''
    ),
    Empresa(
      nome: 'Level-5', 
      imgLogo: 'img/logos/level5.png', 
      descricao: '',
      funcao: 'Para a Level-5, trabalhou como Designer de Imagem em Fantasy Life (2012).',
      urlSiteEmpresa: ''
    ),
    Empresa(
      nome: 'Compile Heart', 
      imgLogo: 'img/logos/compileheart.png', 
      descricao: '',
      funcao: 'Na desenvolvedora Compile Heart, contribuiu como designer de arte em Fairy Fencer F (2013) e como Designer de Imagem em Arc of Alchemist (2019), ambos jogos solo.',
      urlSiteEmpresa: ''
    ),
    Empresa(
      nome: 'Mistwalker', 
      imgLogo: 'img/logos/mistwalker.png', 
      descricao: '',
      funcao: 'Exerceu a função de designer de personagens no jogo solo Terra Battle (2014), da Mistwalker.',
      urlSiteEmpresa: ''
    ),
    Empresa(
      nome: 'Ubisoft', 
      imgLogo: 'img/logos/ubisoft.png', 
      descricao: '',
      funcao: 'Foi designer de imagem para o jogo solo Child of Light (2014), da Ubisoft.',
      urlSiteEmpresa: ''
    ),
  ];

  final ScrollController _controller = ScrollController();
  
  @override
  Widget build(BuildContext context) {
    final yAmano = ModalRoute.of(context)!.settings.arguments as Yoshitaka;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: construirIconButton(
            icon: yAmano.icon, 
            tooltip: yAmano.textosPags[6], 
            onPressed: () => Navigator.pop(context),
          ),
          title: construirTitulo(title: yAmano.textosPags[1]),
          backgroundColor: const Color.fromARGB(255, 255, 216, 108),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(yAmano.img[1]),
                opacity: 0.6,
                fit: BoxFit.fitHeight,
              )
            ),
            child: Align(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                margin: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(45)),
                  color: Color.fromARGB(255, 255, 248, 147),
                ),
                child: Column(
                  children: [
                    Text(
                      yAmano.textosPags[2],
                      style: TextStyle(
                        fontFamily: 'FinalFantasy',
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      yAmano.bio,
                      style: TextStyle(
                        fontFamily: 'Lora',
                      ),
                    ),
                    ElevatedButton(
                      onPressed: yAmano.abrirSite,
                      child: Text(yAmano.textosPags[11]),
                    ),
                    Expanded(
                      child:ListView.builder(
                        itemCount: empresas.length,
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(5),
                        scrollDirection: Axis.vertical,
                        controller: _controller,
                        clipBehavior: Clip.antiAlias,
                        itemBuilder: (BuildContext ctx, index){
                          return Card( 
                            child: ListTile(
                              leading: Image.asset(empresas[index].imgLogo),
                              title: Text(empresas[index].nome, style: const TextStyle(color: Color.fromARGB(255, 255, 187, 0)),),
                              subtitle: Text(empresas[index].funcao.toString(), style: const TextStyle(color: Color.fromARGB(255, 163, 119, 23)),),
                              hoverColor: const Color.fromARGB(255, 15, 66, 107),
                              selectedTileColor: const Color.fromARGB(255, 53, 0, 102),
                              contentPadding: const EdgeInsets.all(5),
                              tileColor: const Color.fromARGB(255, 0, 20, 49),
                              onTap: () =>  Navigator.push(
                                context,
                                MaterialPageRoute(builder:
                                  (context) => const EmpresaPag(),
                                  settings: RouteSettings(
                                      arguments:empresas[index],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget construirIconButton({
    required IconData icon,
    required String tooltip,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      width: 60,
      height: 60,
      child: IconButton(
        icon: Icon(icon, color: Colors.black),
        tooltip: tooltip,
        onPressed: onPressed,
      ),
    );
  }

  Widget construirTitulo({
    required String title
  }){
    return Text(
      title
    );
  }
}