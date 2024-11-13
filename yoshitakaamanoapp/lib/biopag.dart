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
      imgLogo: 'img/square.png', 
      descricao: 'descricao',
      funcao: '',
      urlSiteEmpresa: ''
    ),
    Empresa(
      nome: 'Kure Software Koubou', 
      imgLogo: 'img/ksk.png', 
      descricao: 'descricao',
      funcao: '',
      urlSiteEmpresa: ''
    ),
    Empresa(
      nome: 'lalala', 
      imgLogo: 'img/lalala.png', 
      descricao: 'descricao',
      funcao: '',
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
                    Text(yAmano.bio),
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