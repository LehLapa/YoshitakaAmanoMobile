import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/biografia.dart';
import 'package:yoshitakaamanoapp/empresa.dart';
import 'package:yoshitakaamanoapp/empresapag.dart';
import 'package:yoshitakaamanoapp/main.dart';
import 'package:yoshitakaamanoapp/obraspag.dart';

class BioPag extends StatefulWidget {
  const BioPag({super.key,});

  @override
  State<BioPag> createState() => _BioPag();
}

class _BioPag extends State<BioPag> {

  void navegacao(Widget pagina) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => pagina,
      ),
    );
  }

  List<Empresa> empresas = [
    Empresa(
      nome: 'Square', 
      imgLogo: 'img/square.png', 
      descricao: 'descricao'
    ),
    Empresa(
      nome: 'Kure Software Koubou', 
      imgLogo: 'img/ksk.png', 
      descricao: 'descricao'
    ),
    Empresa(
      nome: 'lalala', 
      imgLogo: 'img/lalala.png', 
      descricao: 'descricao'
    ),
  ];

  final ScrollController _controller = ScrollController();
  
  @override
  Widget build(BuildContext context) {
    final yAmano = ModalRoute.of(context)!.settings.arguments as Biografia;
    return Scaffold(
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: 60,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 15, 66, 107),
                  Color.fromARGB(255, 0, 20, 49),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildIconButton(
                icon: Icons.home,
                tooltip: yAmano.tituloPag[0],
                onPressed: () => navegacao(const HomePag()),
              ),
              buildIconButton(
                icon: Icons.person,
                tooltip: yAmano.tituloPag[1],
                onPressed: () => navegacao(const BioPag()),
              ),
              buildIconButton(
                icon: Icons.brush,
                tooltip: yAmano.tituloPag[2],
                onPressed: () => navegacao(const ObrasPag()),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        color: const Color.fromARGB(255, 255, 216, 108),
        child: Center(
          child: Container(
            color: const Color.fromARGB(255, 255, 248, 147),
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                  child:ListView.builder(
                    itemCount: 5,
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
                          subtitle: Text(empresas[index].descricao.toString(), style: const TextStyle(color: Color.fromARGB(255, 163, 119, 23)),),
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
                            ),),
                          ),
                        ),
                      );
                  },)
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildIconButton({
    required IconData icon,
    required String tooltip,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      width: 60,
      height: 60,
      child: IconButton(
        icon: Icon(icon, color: Colors.white),
        tooltip: tooltip,
        onPressed: onPressed,
      ),
    );
  }
}