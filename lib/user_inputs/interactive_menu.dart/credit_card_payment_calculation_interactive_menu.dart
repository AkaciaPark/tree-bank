import 'dart:io';
import 'package:desafio_um/models/cards/credit_card_model.dart';
import '../../models/users/user_model.dart';
import '../helper/password_required.dart';

void creditCardPaymentCalculation({
  required UserModel userModel,
  required CreditCardModel creditCardModel,
}) {
  String? inputValue;
  double inputValueDouble;
  do {
    stdout.writeln('Quanto você quer pagar com o seu cartão de crédito?');
    inputValue = stdin.readLineSync();
    if (inputValue == null || inputValue.trim().isEmpty) {
      inputValue = '0';
    }

    inputValueDouble = double.parse(inputValue);
    if (inputValueDouble > creditCardModel.limit) {
      stdout.writeln('Operação Cancelada. Você não possui limite suficiente!');
    }
  } while (inputValueDouble > creditCardModel.limit);

  passwordRequired(userModel: userModel);

  creditCardModel.amountSpent += inputValueDouble;

  stdout.writeln(
      'Agora o limite do seu cartão de crédito é de ${creditCardModel.limit}.');

  stdout.writeln(
      'Agora o limite disponível do seu cartão de crédito é de ${creditCardModel.limiteDisponivel}.');

  stdout.writeln(
      'Agora o valor gasto do seu cartão de crédito é de ${creditCardModel.amountSpent}.');
}
