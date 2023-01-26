import 'dart:io';
import 'package:desafio_um/user_inputs/helper/generate_random_number.dart';
import '../models/cards/card_model.dart';
import '../models/users/user_model.dart';


// função que cria cartão de débito
CardModel createCardModel(UserModel userModel) {
  stdout.writeln('---- Criado o cartão de DÉBITO! ----');

  stdout.writeln('O nome da bandeira do cartão é "leaf"');

  String cardNumber = generateRandomNumber(16);
  stdout.writeln('O número do seu cartão é $cardNumber');

  String cvvNumber = generateRandomNumber(3);
  stdout.writeln('O número do seu cvv é $cvvNumber');

  CardModel cardModel = CardModel(
    numberAccount: cardNumber,
    cardFlag: 'leaf',
    cvv: cvvNumber,
    nameAccount: userModel.name, //nome do dono
    validThru: 10,
  );

  String owenerName = userModel.name;
  stdout.writeln('O nome apresentado foi $owenerName');

  return cardModel;
}
