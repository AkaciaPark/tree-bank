import 'package:desafio_um/models/cards/card_model.dart';

import '../users/user_model.dart';

abstract class AccountModel {
  final UserModel user;
  final String agency;
  final String bankCode;
  final String accountNumber;
  final CardModel cardModel;
  double balance;

  AccountModel({
    required this.user,
    required this.agency,
    required this.bankCode,
    required this.accountNumber,
    required this.balance,
    required this.cardModel,
  });

  double withdrawMoney(double valueToWithdraw) {
    balance -= valueToWithdraw;
    return balance;
  }

  double deposit(double valueToDeposit) {
    balance += valueToDeposit;
    return balance;
  }
}
