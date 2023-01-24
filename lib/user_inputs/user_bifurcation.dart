import 'dart:io';
import '../models/users/user_model.dart';
import 'account_model_input.dart';
import 'credit_card_model_input.dart';
import 'debit_card_model_input.dart';
import 'helper/define_credit.dart';

// fazer aqui a bifurcação do cartão - se for conta poupanca ou corrente - leva para os respectivos cartões
// preciso de parâmetros = customerChooseAccount mas ele é privado; usar getter

String userBifurcation(AccountType accountType, UserModel userModel) {
  if (AccountType.saving == accountType) {
    //cartão de débito = se digitou poupanca
    createCardModel(userModel);
  } else if (AccountType.current ==
          accountType && //cartão de crédito = se digitou corrente com renda mensal
      userModel.monthlyIncome != null &&
      userModel.monthlyIncome!.trim().isNotEmpty) {
    createCreditCard(userModel);
    defineCredit(userModel.monthlyIncome!);
  } else if (AccountType.current ==
              accountType && //cartão de débito = se digitou corrente sem renda mensal
          userModel.monthlyIncome == null ||
      userModel.monthlyIncome!.trim().isEmpty) {
    createCardModel(userModel);
  } else {
    stdout.writeln('Erro na geração de cartão!');
  }

  return 'Fim da fase de criação de cartão';
}
