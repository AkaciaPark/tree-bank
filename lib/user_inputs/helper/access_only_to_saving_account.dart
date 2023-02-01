import 'package:desafio_um/user_inputs/interactive_menu.dart/render_menu_input.dart';
import '../../models/accounts/saving_account_model.dart';
import '../../models/users/user_model.dart';
import 'access_denied_for_account_type.dart';
// acho que seria bom uma função bool
// como void por enquanto não estou usando o retorno dela

void accessOnlyToSavingAccount({required dynamic accountModel, required UserModel userModel}){

  if(accountModel.runtimeType.toString() == 'SavingAccountModel'){
    SavingAccountModel savingAccount = accountModel as SavingAccountModel;
    render(accountModel: accountModel, userModel: userModel, incomeValue: userModel.monthlyIncome!);
  }
  else {
    accessDeniedForAccountType(accountModel: accountModel, userModel: userModel);
  }
}