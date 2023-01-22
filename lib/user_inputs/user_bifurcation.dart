// fazer aqui a bifurcação do cartão - se for conta débito ou crédito --> ok
// tenho que pegar a renda mensal ---> para saber se vai ser cartão de crédito OU cartão de débito e crédito --> ok
// posso fazer um arquivo com função para fazer essa bifurcação  --> ok
// preciso de parâmetros = customerChooseAccount mas ele é privado; usar getter --> ok

import '../models/users/user_model.dart';
import 'account_model_input.dart';
import 'credit_card_model_input.dart';
import 'debit_card_model_input.dart';


void userBifurcation(AccountType accountType, UserModel userModel) {
 // var teste = userModel.monthlyIncome; --> essa é a forma ideal de fazer
  if (AccountType.saving == accountType) {
    createCardModel(userModel);
  } else if (AccountType.current == accountType &&
      userModel.monthlyIncome != null &&
      userModel.monthlyIncome != '0') {
    createCreditCard(userModel);
  } else {
    print('Erro na geração de cartão!');
  }

}
