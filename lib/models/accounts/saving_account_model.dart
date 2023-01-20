import 'package:desafio_um/models/accounts/account_model.dart';
import '../users/user_model.dart';

class SavingAccountModel implements AccountModel {
  @override
  String accountNumber;

  @override
  String agency;

  @override
  double balance;

  @override
  String bankCode;

  @override
  UserModel user;

  SavingAccountModel({
    required this.accountNumber,
    required this.agency,
    required this.balance,
    required this.bankCode,
    required this.user,
  });

  @override
  void transfer() {}

  @override
  void withdrawMoney() {}

  @override
  void deposit() {}

  void render() {}
}
