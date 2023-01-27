import 'dart:io';
import 'package:desafio_um/models/accounts/current_account_model.dart';
import 'package:desafio_um/models/accounts/saving_account_model.dart';
import 'package:desafio_um/user_inputs/menu_interactive.dart/menu_interactive_input.dart';
import '../models/accounts/account_model.dart';
import '../models/users/user_model.dart';
import 'account_model_input.dart';
import 'define_which_card_model_input.dart';
import 'user_model_input.dart';

void main() {
  stdout.writeln("Seja bem vindo ao TreeBank!");

  UserModel userModel = userModelCreation();
  AccountModel account = accountModelInput(userModel);
  if (account is CurrentAccountModel) {
    defineWhichCard(accountType:AccountType.current, userModel:userModel);
  } else if (account is SavingAccountModel) {
    defineWhichCard(accountType:AccountType.saving, userModel:userModel);
  }
  menuInteractive();

  // eu preciso dos objetos dos meus cartões
}
