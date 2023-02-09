import 'dart:io';
import 'package:desafio_um/models/accounts/account_model.dart';
import 'package:desafio_um/models/cards/card_model.dart';
import 'package:desafio_um/models/cards/credit_card_model.dart';
import 'package:desafio_um/models/users/user_model.dart';
import 'package:desafio_um/user_inputs/helper/define_limit_credit_card.dart';
import 'package:desafio_um/user_inputs/interactive_menu.dart/credit_card_payment_calculation_interactive_menu.dart';
import '../../models/accounts/current_account_model.dart';
import '../helper/access_denied_for_account_type.dart';

void creditCardPayment({
  required AccountModel accountModel,
  required UserModel userModel,
}) {
  if (accountModel is CurrentAccountModel &&
      accountModel.cardModel is CreditCardModel) {
    stdout.writeln('Bora torrar esse dinheirooooo');

    creditCardPaymentCalculation(
        creditCardModel: accountModel.cardModel as CreditCardModel,
        userModel: userModel);
  } else {
    accessDeniedForAccountType();
  }
}
