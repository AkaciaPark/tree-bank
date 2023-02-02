import 'dart:io';
import 'package:desafio_um/user_inputs/interactive_menu.dart/check_the_monthly_income_value_interactive_menu.dart';
import '../../models/users/user_model.dart';

// preciso receber minha renda mensal
void loan({
  required UserModel userModel,
  required String incomeValue,
}) {
  stdout.writeln('Bem vindo a Empréstimos!');

  // sem renda mensal não é possível calcular! - regra do jogo
  // fazer uma função para verificar se há ou não renda mensal!
  checkTheMonthlyIncomeValue(
    userModel: userModel,
    incomeValue: userModel.monthlyIncome!,
  );
  // preciso transformar a renda mensal recebida em double para fazer os cálculos
  double monthlyIncomeValue = double.parse(incomeValue);
  double maxFixedLoan = 0.7;
  double minFixedLoan = 0.2;

  final maxLoan = (monthlyIncomeValue * maxFixedLoan);
  final minLoan = (monthlyIncomeValue * minFixedLoan);
  stdout.writeln(
    'Sua faixa de empréstimo é de R\$${maxLoan.ceilToDouble()} a R\$${minLoan.ceilToDouble()}.',
  );
  
}
