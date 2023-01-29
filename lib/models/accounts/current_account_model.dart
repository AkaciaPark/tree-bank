import 'package:desafio_um/models/accounts/account_model.dart';
import '../users/user_model.dart';


class CurrentAccountModel implements AccountModel{
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


  CurrentAccountModel({ //o que meu construtor da classe CurrentAccountModel tem
    required this.accountNumber,
    required this.agency,
    required this.balance,
    required this.bankCode,
    required this.user,

  });

  @override
  void withdrawMoney(){}

  @override
  double deposit(double valueToDeposit){
    balance += valueToDeposit;
    return balance;
  }

  void loan(){
  }

  }