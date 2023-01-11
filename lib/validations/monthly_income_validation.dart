String? monthlyIncomeValidation(String? income) {
  if (income == null || income.trim().isEmpty) {
    return null;
  }

  bool isMonthlyIncomeValid =
      RegExp(r'^[0-9][0-9]{0,2}(\.[0-9]{3})*(,)[0-9]{2}').hasMatch(income);
  if (!isMonthlyIncomeValid) {
    return 'Valor de renda mensal inválido';
  }
  return null;
}
