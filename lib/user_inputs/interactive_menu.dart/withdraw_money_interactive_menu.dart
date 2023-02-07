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

    // não pode fazer saque maior do que o saldo disponível
    if (withdrawValue > accountModel.balance) {
      stdout.writeln('Não foi possível fazer o saque nesse valor!');
    }
  } while (withdrawValue > accountModel.balance);

  accountModel.withdrawMoney(withdrawValue);
  result = withdrawValue;

  return result;

  // late final String result;

  // }
  // // fazer a transformação do String para double para fazer o cálculo
  // double withdrawValue = double.parse(receiveWithdrawValue);
  // // tem que fazer uma função falando que não pode retirar mais do que o saldo disponível
  // withdrawCheck(
  //   accountModel: accountModel,
  //   withdrawValue: withdrawValue,
  // );

  // accountModel.withdrawMoney(withdrawValue);
  // result = withdrawValue.toString();

  // return result;
}
