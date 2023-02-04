import 'dart:io';
import 'package:desafio_um/models/accounts/account_model.dart';
import 'package:desafio_um/user_inputs/interactive_menu.dart/deposit_check_the_amount_interactive_menu.dart';

String despoitReceive({required AccountModel accountModel}) {
  // quem que vai receber, ele está no parâmetro
  // tenho que definir se é corrente ou poupanca
  late final String result;
  stdout.write('Informe o valor que deseja depositar: ');
  String? receiveValueInput = stdin.readLineSync();

  if (receiveValueInput == null || receiveValueInput.trim().isEmpty) {
    receiveValueInput = '0.0';
  }
  double valueInputToDouble = double.parse(receiveValueInput);
  //vai checar se o valor inputado é menor que zero e maior que 5mil
  valueInputToDouble =
      depositCheckTheAmount(valueInputToDouble: valueInputToDouble);

  // comentado porque o ato de fazer depósito é igual tanto na conta poupança quanto na corrente
  // if (accountModel.runtimeType.toString() == 'SavingAccountModel') {
  //   // depositar na conta poupanca
  //   // informando pra variavel que o tipo dela é SavingAccountModel (isso se chama casting)
  //   SavingAccountModel savingAccount = accountModel as SavingAccountModel;
  //   savingAccount.deposit(valueInputToDouble);
  //   result = valueInputToDouble.toString();
  // } else if (accountModel.runtimeType.toString() == 'CurrentAccountModel') {
  //   CurrentAccountModel currentAccount = accountModel as CurrentAccountModel;
  //   currentAccount.deposit(valueInputToDouble);
  //   result = valueInputToDouble.toString();
  // } else {
  //   return 'Falha no depósito';
  // }
  accountModel.deposit(valueInputToDouble);
  result = valueInputToDouble.toString();

  return result;
}