import 'package:desafio_um/models/accounts/account_model.dart';

class CurrentAccountModel extends AccountModel{

  CurrentAccountModel({ //o que meu construtor da classe CurrentAccountModel tem
    required super.accountNumber,
    required super.agency,
    required super.balance,
    required super.bankCode,
    required super.user,
  });
  
  // empréstimo
  // pego o valor do empréstimo que foi feito e atribuo ele no saldo
  double loan({required double userChoiceValue}){
    // vou somar meu empréstimo feito ao meu saldo
    // saldo total += userChoiceValue
     balance += userChoiceValue;
     return balance;
  }

  }