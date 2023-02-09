import 'dart:io';
import 'package:desafio_um/user_inputs/interactive_menu.dart/interactive_menu_input.dart';
import '../models/accounts/account_model.dart';
import '../models/users/user_model.dart';
import 'account_model_input.dart';
import 'user_model_input.dart';

void main() {
  stdout.writeln("Seja bem vindo ao TreeBank!");
  // aqui o model do meu cartão
  // vou ter que vincular meu cartão à minha conta
  // minha conta tem que ter um cartão

  UserModel userModel = userModelCreation();
  AccountModel account = accountModelInput(userModel: userModel);

  interactiveMenu(
    accountModel: account,
    userModel: userModel,
  );

// eu preciso dos objetos dos meus cartões - pensar nisso depois
}
