import 'package:desafio_um/user_inputs/interactive_menu.dart/render_menu_input.dart';
import '../../models/accounts/account_model.dart';
import '../../models/accounts/saving_account_model.dart';
import '../../models/users/user_model.dart';
import 'access_denied_for_account_type.dart';

// acho que vai continuar sendo uma função void
// como void por enquanto não estou usando o retorno dela -> mas preciso para fazer retornar ao menu interativo
// checar com is é mais indicado do que com o if/else
// nome da variavel is tipo

void accessOnlyToSavingAccount(
    {required AccountModel accountModel, required UserModel userModel}) {
  if (accountModel is SavingAccountModel) {
    render(
        accountModel: accountModel,
        userModel: userModel,
        incomeValue: userModel.monthlyIncome!);
  } else {
    accessDeniedForAccountType(
        accountModel: accountModel, userModel: userModel);
  }
}
