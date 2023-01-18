import 'dart:io';
import 'dart:core';
import 'package:desafio_um/user_interaction/user_model_input.dart';
import 'account_model_input.dart';
import 'helper/generate_random_number.dart';

void main() {
  print("Seja bem vindo ao TreeBank!");

  userModelCreation();

  String agencyNumber = generateRandomNumber(7);
  stdout.write('O número da sua agência é $agencyNumber\n');

  String numberBankCode = generateRandomNumber(3);
  stdout.write('O seu código bancário é $numberBankCode\n');

  String numberBankAccount = generateRandomNumber(7);
  stdout.write('O número da sua conta bancária é $numberBankAccount\n');

  stdout.write('Saldo inicial: R\$ 0,00\n');

  creatingAnAccountDependingOnInput();
}
