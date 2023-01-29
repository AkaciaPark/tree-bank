import 'package:desafio_um/models/cards/card_model.dart';
import '../models/users/user_model.dart';
import 'account_model_input.dart';
import 'credit_card_model_input.dart';
import 'debit_card_model_input.dart';
import 'helper/define_limit_credit_card.dart';

// fazer aqui a bifurcação do cartão - se for conta poupanca ou corrente - levar para os respectivos cartões

CardModel defineWhichCard({required AccountType accountType, required UserModel userModel}) {
  bool hasMonthlyIncome = userModel.monthlyIncome != null &&
      userModel.monthlyIncome!.trim().isNotEmpty;

  // atribuir mais tarde algo que vai ser imutável
  // problema: se não for atribuido nenhum valor, se não cair em nenhum dos if's vai dar ruim
  late final CardModel returnCardModel;

  // cartão de débito = se digitou poupanca
  if (AccountType.saving == accountType) {
    //coloco na variável returnCardModel o retorno da minha função, que é do tipo CardModel
    returnCardModel = createCardModel(userModel:userModel);
    //cartão de crédito = se digitou corrente com renda mensal
    //agora sim estou criando um cartão de crédito!
  } else if (AccountType.current == accountType && hasMonthlyIncome) {
    double cardLimit = defineLimitCreditCard(incomeValue:userModel.monthlyIncome!);
    returnCardModel = createCreditCard(userModel:userModel, limit: cardLimit);

    //cartão de débito = se digitou corrente sem renda mensal
  } else if (AccountType.current == accountType && !hasMonthlyIncome) {
    returnCardModel = createCardModel(userModel:userModel);
  }

  return returnCardModel;
}
