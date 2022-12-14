import 'dart:io';
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
      message: '\nDigite uma senha numérica:',
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

  //customerChooseAccount();
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


/*String customerChooseAccount() {
  String userChoose = stdin.readLineSync()!;
  var userInput = '';
  print("Agora escolha o tipo de conta desejado.");
  print(
      "Digite 'poupanca' para o tipo de Conta Poupança, ou digite 'corrente' para o tipo de Conta Corrente");

  do {
    userInput = userChoose;
    if (userChoose == 'poupanca') {
      print(userChoose);
      return 'Ok, Conta Poupança escolhido!';
    } else if (userChoose == 'corrente') {
      print(userChoose);
      return 'Ok, Conta Corrente escolhida!';
    }
  } while (userInput != 'poupanca' || userInput != 'corrente');
  return 'Tipo de conta não escolhida!';
}
*/
