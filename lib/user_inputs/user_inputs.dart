import 'dart:io';
import 'package:desafio_um/models/accounts/current_account_model.dart';
import 'package:desafio_um/models/accounts/saving_account_model.dart';
import '../models/accounts/account_model.dart';
import '../models/users/user_model.dart';
import 'account_model_input.dart';
import 'define_limit_credit_card_model_input.dart';
import 'user_model_input.dart';

void main() {
  stdout.writeln("Seja bem vindo ao TreeBank!");
  UserModel userModel = userModelCreation();
  AccountModel account = accountModelInput(userModel);
  if (account is CurrentAccountModel) {
    defineLimitCreditCard(AccountType.current, userModel);
  } else if (account is SavingAccountModel) {
    defineLimitCreditCard(AccountType.saving, userModel);
  }
/* é a mesma coisa que o if em cima, mas feito de forma diferente
  late AccountType variavel;

  if (exemmplo is CurrentAccountModel) {
    variavel = AccountType.current;
  } else if (exemmplo is SavingAccountModel) {
    variavel = AccountType.saving;
  }
  
  userBifurcation(variavel, userModel);
*/
  //eu preciso dos objetos dos meus cartões

}
