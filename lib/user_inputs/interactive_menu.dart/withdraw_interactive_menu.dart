import 'dart:io';
import 'package:desafio_um/user_inputs/helper/password_required.dart';
import 'package:desafio_um/user_inputs/helper/show_financial_proof.dart';
import 'package:desafio_um/user_inputs/interactive_menu.dart/withdraw_money_interactive_menu.dart';
import '../../models/accounts/account_model.dart';
import '../../models/users/user_model.dart';

void withdraw({
  required AccountModel accountModel,
  required UserModel userModel,
}) {
  stdout.writeln('Bem vindo a Saque!');

  final valueWitdraw = withdrawMoney(accountModel: accountModel);
  passwordRequired(userModel: userModel);
  showFinancialProof(
    transactionType: TransactionType.saque,
    transactionValue: valueWitdraw,
  );
  // mostra o saldo final
  stdout.writeln('O saldo final é de ${accountModel.balance}.');
}
