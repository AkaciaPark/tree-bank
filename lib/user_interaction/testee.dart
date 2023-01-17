main() {
  consequencesOfUserChoiceAccounts2(customerChooseAccount2());
}

List<String> customerChooseAccount2() {
  List<String> listaDeAnimais = []; //vou ter que fazer uma lista das possiveis respostas do usuário e ir add ela?
  listaDeAnimais.add('cachorro');
  listaDeAnimais.add('pato');
  listaDeAnimais.add('grifo');

  return listaDeAnimais;
}

String? consequencesOfUserChoiceAccounts2(List<String> recebeParametro) {
  //colocar parâmetro é a resposta da pergunta que tinha feito p Max
  print(recebeParametro[0]);
}
