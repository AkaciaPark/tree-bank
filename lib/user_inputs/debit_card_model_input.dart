import 'dart:io';
import 'package:desafio_um/user_inputs/helper/generate_random_number.dart';
import '../models/cards/card_model.dart';
import '../models/users/user_model.dart';

// passo 2.1
// função que cria cartão de débito
CardModel createCardModel(UserModel userModel) {
  //ideia: poderia fazer um bool pra saber a resposta

  String cardNumber = generateRandomNumber(16);
  stdout.writeln('O número do seu cartão é $cardNumber');

  String cvvNumber = generateRandomNumber(3);
  stdout.writeln('O número do seu cvv é $cvvNumber()');

  CardModel cardModel = CardModel(
    numberAccount: int.parse(
        cardNumber), //transformando em int pq precisa espera receber int
    cardFlag: 'leaf',
    cvv: int.parse(cvvNumber),
    nameAccount: userModel.name, //nome do dono
    validThru: 10,
  );

  String owenerName = userModel.name;
  stdout.writeln('O nome apresentado foi $owenerName');

  return cardModel;
}
