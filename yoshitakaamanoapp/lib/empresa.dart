class Empresa {
  final String nomeEmpresa;
  final String imgLogo;
  final String descricao;

  Empresa ({
    required this.nomeEmpresa,
    required this.imgLogo,
    required this.descricao,
  });

  void avancar(index){
    if(index < 2){
      setState(() {
        index = index+1;
      });
    }
    else {
      index = 2;
    }
  }

  voltar(index){
    if(index > 0){
      setState(() {
        index = index-1;
      });
    }
    else {
      index = 0;
    }
  }
  
  void setState(Null Function() param0) {}
}