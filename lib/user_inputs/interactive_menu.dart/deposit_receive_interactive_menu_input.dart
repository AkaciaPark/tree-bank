import 'dart:io';
import 'package:desafio_um/models/accounts/account_model.dart';
import 'package:desafio_um/user_inputs/interactive_menu.dart/deposit_check_the_amount_interactive_menu.dart';

String depositReceive({
  required AccountModel accountModel,
}) {
  late final String result;

  stdout.write('Informe o valor que deseja depositar: ');
  String? receiveValueInput = stdin.readLineSync();

  if (receiveValueInput == null || receiveValueInput.trim().isEmpty) {
    receiveValueInput = '0.0';
  }
  double valueInputToDouble = double.parse(receiveValueInput);

  valueInputToDouble =
      depositCheckTheAmount(valueInputToDouble: valueInputToDouble);

  accountModel.deposit(valueInputToDouble);
  result = valueInputToDouble.toString();

  return result;
}
