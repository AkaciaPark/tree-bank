import 'dart:io';
import 'dart:math';
import 'dart:core';
import 'package:desafio_um/validations/cpf_validation.dart';
import 'package:desafio_um/validations/email_validation.dart';
import 'package:desafio_um/validations/full_name_validation.dart';
import 'package:desafio_um/validations/monthly_income_validation.dart';
import 'package:desafio_um/validations/numeric_password_validation.dart';
import 'package:desafio_um/validations/optional_field_validation.dart';
import 'package:desafio_um/validations/phone_number_validation.dart';
import 'package:desafio_um/validations/required_field_validation.dart';

void main() {
  print("Seja bem vindo ao TreeBank!");

  final inputFullName = customPrint(
      message: '\nDigite o seu nome completo:',
      successMessage: '\nNome cadastrado com sucesso!',
      validator: fullNameValidation);

  final inputEmail = customPrint(
      message: '\nDigite o seu email:',
      successMessage: '\nEmail cadastrado com sucesso!',
      validator: emailValidation);

  final inputPhoneNumber = customPrint(
      message: '\nDigite o seu telefone:',
      successMessage: '\nTelefone cadastrado com sucesso!',
      validator: phoneNumberValidation);

  final inputCpf = customPrint(
      message: '\nDigite o seu CPF:',
      successMessage: '\nCPF cadastrado com sucesso!',
      validator: cpfValidation);

  final inputNumericPassword = customPrint(
      message: '\nDigite uma senha numérica de 8 dígitos:',
      successMessage: '\nSenha numérica cadastrado com sucesso!',
      validator: numericPasswordValidation);

  final inputCep = customPrint(
      message: '\nDigite o seu CEP:',
      successMessage: '\nCEP cadastrado com sucesso!',
      validator: requiredFields);

  final inputAddress = customPrint(
      message: '\nDigite o seu endereço:',
      successMessage: '\nEndereço cadastrado com sucesso!',
      validator: requiredFields);

  final inputNeighborhood = customPrint(
      message: '\nDigite o seu bairro:',
      successMessage: '\nBairro cadastrado com sucesso!',
      validator: requiredFields);

  final inputCity = customPrint(
      message: '\nDigite a sua cidade:',
      successMessage: '\nCidade cadastrada com sucesso!',
      validator: requiredFields);

  final inputState = customPrint(
      message: '\nDigite o seu Estado:',
      successMessage: '\nEstado cadastrado com sucesso!',
      validator: requiredFields);

  final inputNumberAddress = customPrint(
      message: '\nDigite o número do seu endereço:',
      successMessage: '\nNúmero de endereço cadastrado com sucesso!',
      validator: requiredFields);

  final inputComplementAddress = customPrint(
      message: '\n(Opcional) Digite o complemento do seu endereço:',
      successMessage: '\nComplemento cadastrado com sucesso!',
      validator: optionalField);

  final inputMonthlyIncome = customPrint(
      message: '\n(Opcional) Digite a sua renda mensal:',
      successMessage: '\nRenda mensal cadastrado com sucesso!',
      validator: monthlyIncomeValidation);

  customerChooseAccount();

  String agencyNumber = generateRandomNumber2(7);
  stdout.write('O número da sua agência é $agencyNumber\n');

  String numberBankCount = generateRandomNumber2(3);
  stdout.write('O seu código bancário é $numberBankCount\n');

  String numberBankAccount = generateRandomNumber2(7);
  stdout.write('O número da sua conta bancária é $numberBankAccount\n');

  stdout.write('Saldo inicial: R\$ 0,00');
}

String customPrint({
  required String message,
  required String? Function(String?) validator,
  required String successMessage,
}) {
  String? value;
  String? isValid;

  do {
    print(message);
    value = stdin.readLineSync();

    isValid = validator(value);
    if (isValid == null) {
      print(successMessage);
      print('-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-');
    } else {
      print(isValid);
      print('-----------------------------------------------------');
    }
  } while (isValid != null);

  return value!;
}

void customerChooseAccount() {
  String? userInput = '';
  do {
    stdout.write(
        'Hora de escolher o tipo de conta!\nDigite poupanca para Conta Poupança ou corrente para Conta Corrente\n');
    userInput = stdin.readLineSync();
    //print(userInput);
  } while (userInput != 'poupanca' && userInput != 'corrente');
}
/*
void generateRandomNumbers() {
  //NÚMERO DA AGÊNCIA
  int generatedAgencyNumber;
  final randomAgencyNumber = Random();
  var listOfAgencyRandomNumbers = [];

  for (int i = 0; i < 7; i++) {
    generatedAgencyNumber = randomAgencyNumber.nextInt(10);
    listOfAgencyRandomNumbers.add(generatedAgencyNumber);
  }

  String agencyRandomNumber = listOfAgencyRandomNumbers.join('');
  stdout.write('O número da sua agência é $agencyRandomNumber\n');

  //CÓDIGO BANCÁRIO
  int generatedBankCode;
  final randomBankCode = Random();
  var listOfRandomBankCode = [];

  for (int i = 0; i < 3; i++) {
    generatedBankCode = randomBankCode.nextInt(10);
    listOfRandomBankCode.add(generatedBankCode);
  }

  String bankCode = listOfRandomBankCode.join('');
  stdout.write('O seu código bancário é: $bankCode\n');

  //CONTA BANCÁRIA
  final numberBankAccount = generateRandomNumber2(
      7); //posso colocar final String numberBankAccount também
  stdout.write('O seu número da conta bancária é $numberBankAccount\n');

  
}
*/

String generateRandomNumber2(int interactionsNumber) {
  int generatedNumber;
  final random = Random();
  var listOfRandomNumbers = [];

  for (int i = 0; i < interactionsNumber; i++) {
    generatedNumber = random.nextInt(10);
    listOfRandomNumbers.add(generatedNumber);
  }

  String randomNumber = listOfRandomNumbers.join('');

  return randomNumber;
}

void consequencesOfUserChoiceForAccounts() {}
