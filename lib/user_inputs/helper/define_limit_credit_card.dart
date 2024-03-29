import 'dart:io';

double defineLimitCreditCard({required String incomeValue}) {
  double limit = 0;
  if (incomeValue.trim().isEmpty) {
    incomeValue = '0';
  }
  double monthlyIncomeValue = double.parse(incomeValue);

  if (monthlyIncomeValue <= 1000) {
    limit = monthlyIncomeValue * (0.1);
  } else if (monthlyIncomeValue <= 2500) {
    limit = monthlyIncomeValue * (0.25);
  } else if (monthlyIncomeValue <= 5000) {
    limit = monthlyIncomeValue * (0.4);
  } else if (monthlyIncomeValue <= 10000) {
    limit = monthlyIncomeValue * (0.6);
  } else if (monthlyIncomeValue > 10000) {
    limit = monthlyIncomeValue * (0.75);
  }

  limit = limit.ceilToDouble();
  stdout.writeln(
      '\nO valor do seu limite de cartão de crédito é de ${limit.toStringAsFixed(2)} reais.');
  return limit;
}
