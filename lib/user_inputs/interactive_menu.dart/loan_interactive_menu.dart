import 'dart:io';
import 'package:desafio_um/user_inputs/interactive_menu.dart/check_the_monthly_income_value_interactive_menu.dart';
import 'package:desafio_um/user_inputs/interactive_menu.dart/loan_calculation_interactive_menu.dart';
import 'package:desafio_um/user_inputs/interactive_menu.dart/loan_repeat_to_user_interactive_menu.dart';
import '../../models/users/user_model.dart';

void loan({
  required UserModel userModel,
  required String incomeValue,
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
  loanRepeatToUser(
      loanCalculation: loanCalculation(
        userModel: userModel,
        incomeValue: incomeValue,
      ),
      userModel: userModel);
}
