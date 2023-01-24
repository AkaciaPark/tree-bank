String? monthlyIncomeValidation(String? income) {
  if (income == null || income.trim().isEmpty) {
    return null;
  }

  bool isMonthlyIncomeValid =
      RegExp(r'^[0-9]([0-9]{1,3})*(\.[0-9]{2})*').hasMatch(income); //tirei a vírgula e sua obrigatoriedade
  if (!isMonthlyIncomeValid) {
    return 'Valor de renda mensal inválido';
  }
  return null;
}
//regex: o ponto passou a ser usado no lugar da vírgula para centavos
