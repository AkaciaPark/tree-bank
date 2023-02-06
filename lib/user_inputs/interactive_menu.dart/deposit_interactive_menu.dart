import 'dart:io';
import 'package:desafio_um/models/accounts/account_model.dart';
import 'package:desafio_um/models/users/user_model.dart';
import 'package:desafio_um/user_inputs/helper/password_required.dart';
import 'package:desafio_um/user_inputs/helper/show_financial_proof.dart';
import 'package:desafio_um/user_inputs/interactive_menu.dart/deposit_receive_interactive_menu_input.dart';

void deposit({
  required AccountModel accountModel,
  required UserModel userModel,
}) {
  stdout.writeln('Bem vindo a Depósito!');

  final valueDeposit = depositReceive(accountModel: accountModel);
  passwordRequired(userModel: userModel);
  showFinancialProof(
      transactionType: TransactionType.deposito,
      transactionValue: double.parse(valueDeposit));
}
