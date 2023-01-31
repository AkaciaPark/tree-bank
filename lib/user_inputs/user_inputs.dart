import 'dart:io';
import 'package:desafio_um/models/accounts/current_account_model.dart';
import 'package:desafio_um/models/accounts/saving_account_model.dart';
import 'package:desafio_um/models/cards/card_model.dart';
import 'package:desafio_um/user_inputs/interactive_menu.dart/interactive_menu_input.dart';
import '../models/accounts/account_model.dart';
import '../models/users/user_model.dart';
import 'account_model_input.dart';
import 'define_which_card_model_input.dart';
import 'user_model_input.dart';

void main() {
  stdout.writeln("Seja bem vindo ao TreeBank!");

  CardModel cardModelObject;
  UserModel userModel = userModelCreation();
  AccountModel account = accountModelInput(userModel: userModel);

  CurrentAccountModel currentAccountModel;
  SavingAccountModel savingAccountModel;

  if (account is CurrentAccountModel) {
    cardModelObject =
        defineWhichCard(accountType: AccountType.current, userModel: userModel);
  } else if (account is SavingAccountModel) {
    cardModelObject =
        defineWhichCard(accountType: AccountType.saving, userModel: userModel);
  }
  interactiveMenu(accountModel: account, userModel: userModel);

// eu preciso dos objetos dos meus cartões - pensar nisso depois
}
