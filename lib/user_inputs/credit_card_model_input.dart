import 'dart:io';
import 'package:desafio_um/models/cards/credit_card_model.dart';
import '../models/cards/card_model.dart';
import '../models/users/user_model.dart';
import 'helper/generate_random_number.dart';

// função de criação de cartão de crédito
// acho que minha conta precisa do cartão
CardModel createCreditCard({required UserModel userModel, required double limit}) {

  stdout.writeln('---- Criado um cartão de DÉBITO e CRÉDITO! ----');

  stdout.writeln('O nome da bandeira do cartão é "leaf"');

  String cardNumber = generateRandomNumber(interactionsNumber: 16);
  stdout.writeln('O número do seu cartão é $cardNumber');

  String cvvNumber = generateRandomNumber(interactionsNumber: 3);
  stdout.writeln('O número do seu cvv é $cvvNumber');

  CardModel cardModel = CreditCardModel(
    numberAccount: cardNumber,
    cardFlag: 'leaf',
    cvv: cvvNumber,
    nameAccount: userModel.name,
    validThru: 10,
    limit: limit,
    amountSpent: 0,
  );

  String owenerName = userModel.name;
  stdout.writeln('O nome apresentado foi $owenerName');

  return cardModel;
}
