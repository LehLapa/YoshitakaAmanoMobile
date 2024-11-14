import 'package:flutter/material.dart';
import 'package:yoshitakaamanoapp/colab.dart';
import 'empresa.dart';

class EmpresaPag extends StatefulWidget {
  const EmpresaPag({super.key});

  @override
  State<EmpresaPag> createState() => _EmpresaPag();
}

class _EmpresaPag extends State<EmpresaPag> {

  int i = 0;
  int p = 1;
  bool isVoltarDisable = true;
  bool isAvancarDisable = false;

  List<Colab> colabs = [
      // square enix
      Colab(
        '',
        titulo: 'Front Mission',
        imgs: ['img/colab/1/1.jpg',],
        descricao: 'Um RPG tático focado em combates com mechas conhecidas como "Wanzers". Ambientado em um mundo de conflitos políticos e territoriais, os jogadores controlam uma equipe de pilotos de mechas em missões estratégicas, abordando temas de guerra e intriga.',
        funcaoDev: '',
        lancamento: '',
        distribuidora: '',
        icons: [
          Icons.arrow_back_ios,
        ],
      ),
      Colab(
        '', 
        titulo: 'Front Mission: Gun Hazard', 
        imgs: [''], 
        descricao: 'Diferente do estilo de RPG tático de seu antecessor, Gun Hazard é um jogo de tiro com rolagem lateral, onde os jogadores comandam um Wanzer em missões de combate direto. A história ainda explora temas de guerra, com foco em ação rápida.', 
        funcaoDev: '', 
        lancamento: '', 
        distribuidora: '', 
        icons: []
      ),
      Colab(
        '', 
        titulo: 'Lord of Vermilion', 
        imgs: [''], 
        descricao: 'Um jogo de cartas e estratégia desenvolvido para arcades no Japão, onde os jogadores usam cartas físicas para invocar criaturas e lutar em uma arena virtual. Conhecido por sua combinação de estratégia e mecânicas de jogo colecionáveis.', 
        funcaoDev: '', 
        lancamento: '', 
        distribuidora: '', 
        icons: []
      ),
      Colab(
        '', 
        titulo: 'Lord of Vermilion II', 
        imgs: [''], 
        descricao: 'Expande o elenco de criaturas e habilidades, com gráficos e mecânicas melhoradas. A sequência oferece mais opções de invocação e um sistema de combate aprimorado para os jogadores de arcade.', 
        funcaoDev: '', 
        lancamento: '', 
        distribuidora: '', 
        icons: []
      ),
      Colab(
        '', 
        titulo: 'Lord of Arcana', 
        imgs: [''], 
        descricao: 'Um jogo de ação e RPG para PSP onde os jogadores caçam monstros em missões desafiadoras, buscando ganhar poderes e completar a “Arcana”. O combate é focado em batalhas intensas, e o jogo atrai fãs de RPG e ação com um sistema cooperativo multijogador.', 
        funcaoDev: '', 
        lancamento: '', 
        distribuidora: '', 
        icons: []
      ),
      // kure software koubou
      Colab(
        '', 
        titulo: 'First Queen', 
        imgs: [''], 
        descricao: 'Um RPG de estratégia e ação em tempo real onde os jogadores lideram um exército para lutar contra forças inimigas em um mundo de fantasia. A mecânica "crowd control" permite controlar várias unidades simultaneamente, oferecendo uma experiência de batalhas em larga escala que era inovadora na época. O jogo trouxe um estilo de arte detalhado e teve uma capa de comercialização ilustrada para atrair o público.', 
        funcaoDev: '', 
        lancamento: '', 
        distribuidora: '', 
        icons: []
      ),
      Colab(
        '', 
        titulo: 'First Queen 2', 
        imgs: [''], 
        descricao: 'Continuação direta do primeiro jogo, First Queen 2 expandiu o universo com novos personagens, habilidades e territórios. O sistema de controle em massa foi aprimorado, e o jogo apresentou desafios estratégicos mais complexos, dando ao jogador mais controle sobre suas tropas. Também teve uma capa ilustrada que refletia seu estilo épico e de fantasia.', 
        funcaoDev: '', 
        lancamento: '', 
        distribuidora: '', 
        icons: []
      ),
      Colab(
        '', 
        titulo: 'First Queen 3', 
        imgs: [''], 
        descricao: 'Com gráficos atualizados e um mundo expandido, First Queen 3 adicionou novas camadas de jogabilidade, como melhorias na inteligência artificial dos aliados e inimigos. O jogo manteve seu estilo característico de batalhas estratégicas em tempo real e foi lançado com uma capa ilustrada que enfatizava seu tema de guerra e magia.', 
        funcaoDev: '', 
        lancamento: '', 
        distribuidora: '', 
        icons: []
      ),
      Colab(
        '', 
        titulo: 'Duel',
        imgs: [''],
        descricao: 'Um jogo de estratégia baseado em batalhas entre personagens em combates um contra um, onde os jogadores precisam fazer escolhas táticas para vencer o oponente. Com gráficos simples e foco em jogabilidade estratégica, Duel apresentou uma capa ilustrada que atraiu o público interessado em batalhas táticas.',
        funcaoDev: '',
        lancamento: '',
        distribuidora: '',
        icons: []
      ),
      Colab(
        '', 
        titulo: 'Duel98',
        imgs: [''],
        descricao: 'Uma versão expandida de Duel, com melhorias em gráficos e mecânicas de combate, Duel98 trouxe mais opções de personagens e estratégias. A capa ilustrada seguiu o estilo do original, destacando a natureza competitiva e tática do jogo.',
        funcaoDev: '',
        lancamento: '',
        distribuidora: '',
        icons: []
      ),
      Colab(
        '', 
        titulo: 'Kawanakajima Ibunroku',
        imgs: [''],
        descricao: 'Um RPG de estratégia inspirado nas batalhas históricas de Kawanakajima, onde jogadores controlam generais e suas tropas em confrontos estratégicos. O jogo se diferencia ao misturar elementos históricos com fantasia, e sua capa ilustrada foi criada para refletir a temática de guerra feudal japonesa, atraindo jogadores interessados em cultura e história do Japão.',
        funcaoDev: '',
        lancamento: '',
        distribuidora: '',
        icons: []
      ),
      // atlus
      Colab(
        '', 
        titulo: 'Kartia: The Word of Fate',
        imgs: [''],
        descricao: 'Kartia: The Word of Fate (1998) é um RPG tático desenvolvido pela Atlus para o PlayStation, conhecido por seu enredo elaborado e sistema de combate estratégico. O jogo permite aos jogadores controlar dois protagonistas, Lacryma e Toxa, cada um com uma perspectiva própria sobre uma guerra que ameaça seu mundo. Uma das mecânicas principais é o uso das "Kartias," cartas mágicas que permitem criar armas, armaduras e até invocar criaturas para a batalha. Essa mecânica adiciona uma camada estratégica, já que os recursos são limitados e devem ser usados com cuidado. Com ilustrações de Yoshitaka Amano e uma narrativa que explora temas de destino e moralidade, Kartia ganhou reconhecimento pela sua profundidade e inovação no gênero de RPGs táticos.',
        funcaoDev: '',
        lancamento: '',
        distribuidora: '',
        icons: []
      ),
      // ascii corporation
      Colab(
        '', 
        titulo: 'Maten Densetsu',
        imgs: [''],
        descricao: 'Um RPG de horror com temática sobrenatural lançado para o Super Famicom. Maten Densetsu é ambientado em um mundo onde espíritos malignos ameaçam a humanidade, e o jogador assume o papel de personagens que enfrentam esses espíritos. O jogo se destaca por sua atmosfera sombria, narrativa baseada em mitologias orientais e uma combinação de exploração com batalhas estratégicas por turnos, tudo com um estilo gráfico detalhado para a época.',
        funcaoDev: '',
        lancamento: '',
        distribuidora: '',
        icons: []
      ),
      // capcom
      Colab(
        '', 
        titulo: 'El Dorado Gate',
        imgs: [''],
        descricao: 'Uma série de RPG episódica lançada exclusivamente para o Dreamcast em sete partes. O jogo segue várias histórias interligadas de personagens que buscam o mítico Eldorado. El Dorado Gate utiliza gráficos 2D e uma narrativa que mistura fantasia e aventura, e destaca-se pela sua divisão em episódios, que oferecem uma experiência centrada no desenvolvimento de cada personagem e seus conflitos pessoais. O formato episódico foi inovador e único na época.',
        funcaoDev: '',
        lancamento: '',
        distribuidora: '',
        icons: []
      ),
      // level-5
      Colab(
        '', 
        titulo: 'Fantasy Life',
        imgs: [''],
        descricao: 'Um RPG de simulação de vida para o Nintendo 3DS onde os jogadores escolhem entre várias “vidas” (ou classes), como guerreiro, mago ou ferreiro, cada uma com atividades únicas. O jogo combina elementos de RPG com mecânicas de construção e crafting, permitindo ao jogador alternar entre as vidas e progredir em cada uma. Fantasy Life é conhecido por seu estilo colorido, jogabilidade variada e possibilidade de exploração e cooperação em um mundo aberto e encantador.',
        funcaoDev: '',
        lancamento: '',
        distribuidora: '',
        icons: []
      ),
      // compile heart
      Colab(
        '', 
        titulo: 'Fairy Fencer F',
        imgs: [''],
        descricao: 'Um RPG ambientado em um mundo onde deuses antigos criaram armas poderosas chamadas "Furies", e guerreiros conhecidos como Fencers lutam para coletá-las. O jogador controla Fang, um Fencer que se envolve em uma batalha épica para decidir o destino do mundo. Fairy Fencer F combina um sistema de combate em turnos com a customização de armas, sendo reconhecido por seu humor leve, personagens carismáticos e visuais inspirados em anime.',
        funcaoDev: '',
        lancamento: '',
        distribuidora: '',
        icons: []
      ),
      Colab(
        '', 
        titulo: 'Arc of Alchemis',
        imgs: [''],
        descricao: 'Um RPG de ação situado em um deserto devastado, onde a protagonista Quinn busca uma chave para restaurar o mundo. O jogo apresenta um sistema de combate em tempo real, com a habilidade de resolver quebra-cabeças no ambiente usando um dispositivo chamado "Lunagear." Arc of Alchemist é conhecido por sua atmosfera desoladora e mistura de exploração com elementos estratégicos.',
        funcaoDev: '',
        lancamento: '',
        distribuidora: '',
        icons: []
      ),
      // mistwalker
      Colab(
        '', 
        titulo: 'Terra Battle',
        imgs: [''],
        descricao: 'Um RPG estratégico para dispositivos móveis, onde os jogadores posicionam personagens em uma grade para realizar ataques coordenados. Terra Battle utiliza uma mecânica de movimentação de peças em um tabuleiro, permitindo criar combos e ataques em cadeia. Com personagens e cenários desenhados por artistas renomados, o jogo se destacou pelo sistema de combate original e a promessa de expansão da história conforme o número de downloads aumentava.',
        funcaoDev: '',
        lancamento: '',
        distribuidora: '',
        icons: []
      ),
      // ubisoft
      Colab(
        '', 
        titulo: 'Child of Light',
        imgs: [''],
        descricao: 'Um RPG de plataforma com visual de aquarela, onde o jogador controla Aurora, uma jovem princesa perdida em um mundo de fantasia chamado Lemuria. Inspirado em contos de fadas, o jogo apresenta um sistema de combate em turnos e elementos de resolução de quebra-cabeças. Child of Light é elogiado por seu estilo artístico encantador, poesia nas falas dos personagens e uma narrativa com temas de amadurecimento e esperança.',
        funcaoDev: '',
        lancamento: '',
        distribuidora: '',
        icons: []
      ),
      // marvel
      Colab(
        '', 
        titulo: '',
        imgs: [''],
        descricao: '',
        funcaoDev: '',
        lancamento: '',
        distribuidora: '',
        icons: []
      ),
      // dc
      Colab(
        '', 
        titulo: '',
        imgs: [''],
        descricao: '',
        funcaoDev: '',
        lancamento: '',
        distribuidora: '',
        icons: []
      ),
    ];

  avancar(){
    if(p == 1){
    isAvancarDisable = false;
      if(!isAvancarDisable){
        setState(() {
          i = 0;
          i = i+1;
          isVoltarDisable = false;
        });
      }
      else {
        i = 4;
        isAvancarDisable = true;
      }
    }
    else if(p == 2){
      isAvancarDisable = false;
      if(!isAvancarDisable){
          setState(() {
            i = 5;
            i = i+1;
            isVoltarDisable = false;
          });
        }
        else {
          i = 10;
          isAvancarDisable = true;
      }
    }
    else if(p == 3){
      setState(() {
        i = 11;
        isAvancarDisable = false;
      });
    }
    else if(p == 4){
      setState(() {
        i = 12;
        isAvancarDisable = false;
      });
    }
    else if(p == 5){
      setState(() {
        i = 13;
        isAvancarDisable = false;
      });
    }
    else if(p == 6){
      setState(() {
        i = 14;
        isAvancarDisable = false;
      });
    }
    else if(p == 7){
      isAvancarDisable = false;
      if(!isAvancarDisable){
          setState(() {
            i = 15;
            i = i+1;
            isVoltarDisable = false;
          });
        }
        else {
          i = 16;
          isAvancarDisable = true;
      }
    }
    else if(p == 8){
      setState(() {
        i = 17;
        isAvancarDisable = false;
      });
    }
    else if(p == 9){
      setState(() {
        i = 18;
        isAvancarDisable = false;
      });
    }
    else if(p == 10){
      setState(() {
        i = 19;
        isAvancarDisable = false;
      });
    }
    else if(p == 11){
      setState(() {
        i = 20;
        isAvancarDisable = false;
      });
    }
  }

  voltar(){
    if(p == 1){
      if(!isVoltarDisable){
        setState(() {
          i = i-1;
          isVoltarDisable = false;
        });
      }
      else {
        i = 0;
        isVoltarDisable = true;
      }
    }
    else if(p == 2){
      if(!isVoltarDisable){
          setState(() {
            i = i-1;
            isVoltarDisable = false;
          });
        }
        else {
          i = 5;
          isAvancarDisable = true;
      }
    }
    else if(p == 3){
      setState(() {
        isVoltarDisable = false;
      });
    }
    else if(p == 4){
      setState(() {
        isVoltarDisable = false;
      });
    }
    else if(p == 5){
      setState(() {
        isVoltarDisable = false;
      });
    }
    else if(p == 6){
      setState(() {
        isVoltarDisable = false;
      });
    }
    else if(p == 7){
      if(!isVoltarDisable){
          setState(() {
            i = i-1;
            isVoltarDisable = false;
          });
        }
        else {
          i = 15;
          isVoltarDisable = true;
      }
    }
    else if(p == 8){
      setState(() {
        isVoltarDisable = false;
      });
    }
    else if(p == 9){
      setState(() {
        isVoltarDisable = false;
      });
    }
    else if(p == 10){
      setState(() {
        isVoltarDisable = false;
      });
    }
    else if(p == 11){
      setState(() {
        isVoltarDisable = false;
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    final empresa = ModalRoute.of(context)!.settings.arguments as Empresa;
    if(empresa.nome == 'Square'){
      p;
    }
    else if(empresa.nome == 'Kure Software Koubou'){
      p = 2;
    }
    else if(empresa.nome == 'Atlus'){
      p = 3;
    }
    else if(empresa.nome == 'ASCII Corporation'){
      p = 4;
    }
    else if(empresa.nome == 'Capcom'){
      p = 5;
    }
    else if(empresa.nome == 'Level-5'){
      p = 6;
    }
    else if(empresa.nome == 'Compile Heart'){
      p = 7;
    }
    else if(empresa.nome == 'Mistwalker'){
      p = 8;
    }
    else if(empresa.nome == 'Ubisoft'){
      p = 9;
    }
    else if(empresa.nome == 'DC Comics'){
      p = 10;
    }
    else if(empresa.nome == 'Marvel'){
      p = 11;
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
      ),
      body: Container(
        color: const Color.fromARGB(255, 255, 216, 108),
        child: Center(
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
                  empresa.nome
                ),
                Image.asset(
                  empresa.imgLogo,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () => avancar(),
                      child: const Text('Avançar'),
                    ),
                    ElevatedButton(
                      onPressed: () => voltar(), 
                      child: const Text('Voltar')
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}