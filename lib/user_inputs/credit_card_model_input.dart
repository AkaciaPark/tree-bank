import 'dart:io';
import '../models/cards/card_model.dart';
import '../models/users/user_model.dart';
import 'helper/generate_random_number.dart';


//função de criação de cartão de crédito

CardModel createCreditCard(UserModel userModel) {
  //nome de função tem que ter ação
  String cardNumber = generateRandomNumber(16);
  stdout.writeln('O número do seu cartão é $cardNumber');

  String cvvNumber = generateRandomNumber(3);
  stdout.writeln('O número do seu cvv é $cvvNumber');

  CardModel cardModel = CardModel(
    numberAccount: int.parse(cardNumber),
    cardFlag: 'leaf',
    cvv: int.parse(cvvNumber),
    nameAccount: userModel.name, //nome do dono
    validThru: 10,
  );

  String owenerName = userModel.name;
  stdout.writeln('O nome apresentado foi $owenerName');

  // agora preciso colocar as especificações do cartão de crédito

  return cardModel;
}
