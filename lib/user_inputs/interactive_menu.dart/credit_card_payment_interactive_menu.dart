import 'dart:io';
import 'package:desafio_um/models/accounts/account_model.dart';
import 'package:desafio_um/models/accounts/current_account_model.dart';
import 'package:desafio_um/models/users/user_model.dart';
import 'package:desafio_um/user_inputs/helper/access_denied_for_account_type.dart';
import 'package:desafio_um/user_inputs/helper/password_required.dart';

void creditCardPayment({
  required AccountModel accountModel,
  required UserModel userModel,
  required double limit,
}) {
  String? inputValue;
  double inputValueDouble;

  if (accountModel is CurrentAccountModel && userModel.monthlyIncome != null ||
      userModel.monthlyIncome != '') {
    stdout.writeln('Bora torrar esse dinheirooooo');
  } else {
    accessDeniedForAccountType();
  }

  do {
    stdout.writeln('Quanto você quer pagar com o seu cartão de crédito?');
    inputValue = stdin.readLineSync();
    if (inputValue == null || inputValue.trim().isEmpty) {
      inputValue = '0';
    }

    inputValueDouble = double.parse(inputValue);
    if (inputValueDouble > limit) {
      stdout.writeln('Operação Cancelada. Você não possui limite suficiente!');
    }
  } while (inputValueDouble > limit);

  passwordRequired(userModel: userModel);

  limit -= inputValueDouble;

  stdout.writeln('Agora o limite do seu cartão de crédito é de $limit.');
}
