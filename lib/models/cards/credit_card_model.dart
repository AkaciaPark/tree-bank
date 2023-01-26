import 'package:desafio_um/models/cards/card_model.dart';

class CreditCardModel implements CardModel{
  @override
  String cardFlag;

  @override
  String cvv;

  @override
  String nameAccount;

  @override
  String numberAccount;

  @override
  int validThru;

  double limit;
  double amountSpent;

  CreditCardModel({
    required this.cardFlag,
    required this.cvv,
    required this.nameAccount,
    required this.numberAccount,
    required this.validThru,
    required this.limit,
    required this.amountSpent,

  });

}