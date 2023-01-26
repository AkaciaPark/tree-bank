import 'dart:io';
import 'package:desafio_um/models/cards/card_model.dart';
import '../models/users/user_model.dart';
import 'account_model_input.dart';
import 'credit_card_model_input.dart';
import 'debit_card_model_input.dart';
import 'helper/define_credit.dart';

// fazer aqui a bifurcação do cartão - se for conta poupanca ou corrente - levar para os respectivos cartões

CardModel defineLimitCreditCard(AccountType accountType, UserModel userModel) {
  bool hasMonthlyIncome = userModel.monthlyIncome != null &&
      userModel.monthlyIncome!.trim().isNotEmpty;

  //cartão de débito = se digitou poupanca
  if (AccountType.saving == accountType) {
    createCardModel(userModel);
    //cartão de crédito = se digitou corrente com renda mensal
    //agora sim estou criando um cartão de crédito!
  } else if (AccountType.current == accountType && hasMonthlyIncome) {
    double limiteDoCartao = defineCredit(userModel.monthlyIncome!);
    createCreditCard(userModel, limiteDoCartao);

    //cartão de débito = se digitou corrente sem renda mensal
  } else if (AccountType.current == accountType && !hasMonthlyIncome) {
    createCardModel(userModel);
  } else {
    stdout.writeln('Erro na geração de cartão!');
  }

  CardModel cardModel = CardModel(
    numberAccount: '',
    cardFlag: '',
    cvv: '',
    nameAccount: '',
    validThru: 10,
  );
  return cardModel;
}
