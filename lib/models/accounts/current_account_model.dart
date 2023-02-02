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
  void loan(){
  }

  }