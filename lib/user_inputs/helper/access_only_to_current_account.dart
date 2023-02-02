import 'package:desafio_um/models/accounts/current_account_model.dart';
import 'package:desafio_um/user_inputs/helper/access_denied_for_account_type.dart';
import 'package:desafio_um/user_inputs/interactive_menu.dart/loan_interactive_menu.dart';
import '../../models/users/user_model.dart';

void accessOnlyToCurrentAccount(
    {required dynamic accountModel, required UserModel userModel}) {
  if (accountModel.runtimeType.toString() == 'CurrentAccountModel') {
    CurrentAccountModel currentAccountModel =
        accountModel as CurrentAccountModel;
    loan(incomeValue: userModel.monthlyIncome!);
  } else {
    accessDeniedForAccountType(
        accountModel: accountModel, userModel: userModel);
  }
}
