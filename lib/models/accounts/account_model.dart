import '../users/user_model.dart';

class AccountModel {
  final UserModel user;
  final String agency;
  final String bankCode;
  final String accountNumber;
  double balance;

  AccountModel({
    required this.user,
    required this.agency,
    required this.bankCode,
    required this.accountNumber,
    required this.balance,
  });

  void withdrawMoney() {}

  void deposit(double valueToDeposit) {
    balance += valueToDeposit;
  }
}
