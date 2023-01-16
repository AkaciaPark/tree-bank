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

  generateRandomNumbers();
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

String? customerChooseAccount() {
  String? userInput = '';
  do {
    stdout.write(
        'Hora de escolher o tipo de conta!\nDigite poupanca para Conta Poupança ou corrente para Conta Corrente\n');
    userInput = stdin.readLineSync();
    //print(userInput);
  } while (userInput != 'poupanca' && userInput != 'corrente');
}

void generateRandomNumbers() {
  var generatedAgencyNumber = 0;
  Random randomAgencyNumber = Random();
  var listOfAgencyRandomNumbers = [generatedAgencyNumber];

  for (int i = 0; i < 7; i++) {
    //for para geração de número aleatório da agência
    generatedAgencyNumber = randomAgencyNumber.nextInt(10);
    //print(generatedAgencyNumber);
    listOfAgencyRandomNumbers.add(generatedAgencyNumber);
  }

  //print(listOfAgencyRandomNumbers);
  listOfAgencyRandomNumbers.removeAt(0);
  String agencyRandomNumber = listOfAgencyRandomNumbers.join('');
  stdout.write('O número da sua agência é $agencyRandomNumber\n');

  //print('-----------');
  var generatedBankCode = 0;
  Random randomBankCode = Random();
  var listOfRandomBankCode = [generatedBankCode];

  for (int i = 0; i < 3; i++) {
    //for para o código bancário
    generatedBankCode = randomBankCode.nextInt(10);
    //print(generatedBankCode);
    listOfRandomBankCode.add(generatedBankCode);
  }

  //print(listOfRandomBankCode);
  listOfRandomBankCode.removeAt(0);
  String bankCode = listOfRandomBankCode.join('');
  stdout.write('O código bancário é: $bankCode\n');
  //print('teste');

  var generatedNumberAccount = 0;
  Random randomNumberAccount = Random();
  var listOfRandomNumberAccount = [generatedNumberAccount];

  for (int i = 0; i < 7; i++) {
    //for para a conta bancária
    generatedNumberAccount = randomNumberAccount.nextInt(10);
    listOfRandomNumberAccount.add(generatedNumberAccount);
  }

  listOfRandomNumberAccount.removeAt(0);
  String numberAccount = listOfRandomNumberAccount.join('');
  stdout.write('O seu número bancário é $numberAccount\n');

  stdout.write('Saldo inicial: R\$0,00');
}
