import 'dart:io';
import 'package:desafio_um/models/accounts/account_model.dart';
import 'package:desafio_um/user_inputs/helper/password_required.dart';
import '../../models/users/user_model.dart';

void debitCardPayment(
    {required AccountModel accountModel, required UserModel userModel}) {
  String? inputValue;
  double inputValueDouble;

  stdout.writeln('Bora gastar esse cartão de débito!');

  stdout.writeln('Seu saldo é de: ${accountModel.balance} reais');
  do {
    stdout.writeln('Quanto você quer pagar com seu cartão de débito?');

    inputValue = stdin.readLineSync();

    if (inputValue == null || inputValue.trim().isEmpty) {
      inputValue = '0';
    }

    inputValueDouble = double.parse(inputValue);

    if (inputValueDouble > accountModel.balance) {
      stdout.writeln(
          'Operação cancelada, pois você não possui todo esse saldo para fazer o pagamento.');
    }
  } while (inputValueDouble > accountModel.balance);

  passwordRequired(userModel: userModel);

  accountModel.balance -= inputValueDouble;
  
  stdout.writeln(
      'Agora você possui ${accountModel.balance} reais no seu cartão de débito.');
}
