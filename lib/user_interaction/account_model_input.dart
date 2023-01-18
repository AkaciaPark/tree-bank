import 'dart:io';
import 'package:desafio_um/models/users/user_model.dart';
import 'package:desafio_um/user_interaction/user_model_input.dart';

import '../models/accounts/account_model.dart';

AccountModel? accountModelInput() {}

String customerChooseAccount() {
  String userInput;

  do {
    stdout.writeln('Hora de escolher o tipo de conta!');
    stdout.writeln(
      'Digite poupanca para Conta Poupança ou corrente para Conta Corrente',
    );
    userInput = stdin.readLineSync()!;
  } while (userInput != 'poupanca' && userInput != 'corrente');
  return userInput;
}

void creatingAnAccountDependingOnInput() {
  String consequenceOfChosenAccount = customerChooseAccount();
  if (consequenceOfChosenAccount == 'poupanca') {
    stdout.writeln(
      'Conta Poupança escolhido. Você tem acesso apenas ao cartão de débito.',
    );
  }
  if (consequenceOfChosenAccount == 'corrente') {
    stdout.writeln(
      'Conta Corrente escolhido. Você tem acesso ao cartão de débito OU cartão de débito e crédito.',
    );
  }
}
