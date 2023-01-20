String cardCreation(String contaRecebida, String rendaMensal) {
  //se o usuario tiver escolhido a conta corrente com a renda mensal então vai gerar um cartão de débito e crédito
  //mas se o usuário escolher conta corrente sem a renda mensal então vai ser um cartão de débito
  //e se for escolhido a conta poupanca então terá acesso somente ao cartão de débito

  if (contaRecebida == 'corrente' && rendaMensal.trim().isNotEmpty) {
    return 'Ok, você tem acesso a um cartão de débito e crédito';
  } else {
    return 'Ok, você tem acesso apenas ao cartão de débito';
  }
}