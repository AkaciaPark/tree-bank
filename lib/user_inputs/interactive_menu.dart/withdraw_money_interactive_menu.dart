import 'dart:io';
import 'package:desafio_um/models/accounts/account_model.dart';

double withdrawMoney({required AccountModel accountModel}) {
  late final double result;
  double withdrawValue;
  do {
    stdout.write('Informe o valor que deseja sacar: ');
    String? receiveWithdrawValue = stdin.readLineSync();

    if (receiveWithdrawValue == null || receiveWithdrawValue.trim().isEmpty) {
      receiveWithdrawValue = '0.0';
    }

    withdrawValue = double.parse(receiveWithdrawValue);

    if (withdrawValue > accountModel.balance) {
      stdout.writeln('Não foi possível fazer o saque nesse valor!');
    }
  } while (withdrawValue > accountModel.balance);

  accountModel.withdrawMoney(withdrawValue);
  result = withdrawValue;

  return result;
}
