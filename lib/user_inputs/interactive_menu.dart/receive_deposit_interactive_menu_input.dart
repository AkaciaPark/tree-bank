import 'dart:io';
import 'package:desafio_um/models/accounts/current_account_model.dart';
import 'package:desafio_um/models/accounts/saving_account_model.dart';

double receiveDeposit(
    {required dynamic accountModel, required double valueToDeposit}) {
  // quem que vai receber, ele está no parâmetro
  // depois o valor
  // tenho que definir se é corrente ou poupanca
  stdout.write('Informe o valor que deseja depositar: ');

  String? receiveValueInput;
  receiveValueInput = stdin.readLineSync();
  double valueDouble = double.parse(receiveValueInput ?? '0.00');
  print('');

// preciso fazer um método de comprovante -> é genérico
  if (accountModel.runtimeType.toString() == 'SavingAccountModel') {
// depositar na conta poupanca
// informando pra variavel que o tipo dela é SavingAccountModel (isso é casting em programação)
    SavingAccountModel savingAccount = accountModel as SavingAccountModel;
    savingAccount.deposit(valueDouble);
    return valueToDeposit;
  } else {
    CurrentAccountModel currentAccount = accountModel as CurrentAccountModel;
    currentAccount.deposit(valueDouble);
    return valueToDeposit;
  }
}
