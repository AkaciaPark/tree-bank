import 'dart:io';
import 'package:desafio_um/models/accounts/current_account_model.dart';
import 'package:desafio_um/user_inputs/helper/check_the_monthly_income_value_interactive_menu.dart';
import 'package:desafio_um/user_inputs/interactive_menu.dart/loan_calculation_interactive_menu.dart';
import 'package:desafio_um/user_inputs/interactive_menu.dart/loan_repeat_to_user_interactive_menu.dart';
import '../../models/users/user_model.dart';

void loan({
  required UserModel userModel,
  required String incomeValue,
  required CurrentAccountModel currentAccountModel,

}) {
  stdout.writeln('Bem vindo a Empréstimos!');

  checkTheMonthlyIncomeValue(
    userModel: userModel,
    incomeValue: userModel.monthlyIncome!,
  );
  loanCalculation(
    userModel: userModel,
    incomeValue: incomeValue,
  );
  // o result é o retorno do valor que o usuário escolheu e precisa entrar no cartão
  final result = loanRepeatToUser(
      loanCalculation: loanCalculation(
        userModel: userModel,
        incomeValue: incomeValue,
      ),
      userModel: userModel);

stdout.writeln('O valor do seu saldo total(saldo + empréstimo) é de R\$${currentAccountModel.loan(userChoiceValue: result)}.');
  
}
