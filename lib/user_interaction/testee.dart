main() {
  teste2(teste1());
}

List<String> teste1() {
  List<String> listaDeAnimais = [];

  listaDeAnimais.add('cachorro');
  listaDeAnimais.add('pato');
  listaDeAnimais.add('grifo');

  return listaDeAnimais;
}

String? teste2(List<String> nomeQualquer) { //colocar parâmetro é a resposta da pergunta que tinha feito p Max
  print(nomeQualquer[2]);
}
