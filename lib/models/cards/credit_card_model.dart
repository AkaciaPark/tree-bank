import 'package:desafio_um/models/cards/card_model.dart';

class CreditCardModel extends CardModel{

  double limit;
  double amountSpent;

  CreditCardModel({
    required super.cardFlag,
    required super.cvv,
    required super.nameAccount,
    required super.numberAccount,
    required super.validThru,
    required this.limit,
    required this.amountSpent,

  });

}