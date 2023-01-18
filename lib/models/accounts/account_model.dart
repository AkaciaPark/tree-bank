import '../users/user_model.dart';

class AccountModel{
  final UserModel user;
  final String agency;
  final String bank;
  final String accountNumber;
  final String balance;


  AccountModel({
    required this.user,
    required this.agency,
    required this.bank,
    required this.accountNumber,
    required this.balance,

  });


  void transfer(){}

  void withdrawMoney(){}

  void deposit(){}

}