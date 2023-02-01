import 'dart:io';
import 'package:desafio_um/models/accounts/current_account_model.dart';
import 'package:desafio_um/models/accounts/saving_account_model.dart';
import 'package:desafio_um/user_inputs/helper/check_the_deposit_amount.dart';

String receiveDeposit({required dynamic accountModel}) {
  // quem que vai receber, ele está no parâmetro
  // tenho que definir se é corrente ou poupanca
  late final String result;
  stdout.write('Informe o valor que deseja depositar: ');
  String? receiveValueInput = stdin.readLineSync();

  if (receiveValueInput == null || receiveValueInput.trim().isEmpty) {
    receiveValueInput = '0.0';
  }
  double valueInputToDouble = double.parse(receiveValueInput);
  //vai chegar se o valor inputado é menor que zero e maior que 5mil
  valueInputToDouble =
      checkTheDepositAmount(valueInputToDouble: valueInputToDouble);

  if (accountModel.runtimeType.toString() == 'SavingAccountModel') {
    // depositar na conta poupanca
    // informando pra variavel que o tipo dela é SavingAccountModel (isso se chama casting)
    SavingAccountModel savingAccount = accountModel as SavingAccountModel;
    savingAccount.deposit(valueInputToDouble);
    result = valueInputToDouble.toString();
  } else if (accountModel.runtimeType.toString() == 'CurrentAccountModel') {
    CurrentAccountModel currentAccount = accountModel as CurrentAccountModel;
    currentAccount.deposit(valueInputToDouble);
    result = valueInputToDouble.toString();
  } else {
    return 'Falha no depósito';
  }
  return result;
}
