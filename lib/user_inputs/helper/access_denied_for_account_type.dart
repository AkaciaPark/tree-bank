import 'dart:io';
import 'package:desafio_um/user_inputs/interactive_menu.dart/interactive_menu_input.dart';
import '../../models/accounts/account_model.dart';
import '../../models/users/user_model.dart';

void accessDeniedForAccountType({required AccountModel accountModel, required UserModel userModel}){
  stdout.writeln('--- Você não tem acesso a esse tipo de categoria! ---');
  stdout.writeln('--- Você será redirecionado para o Menu Interativo. ---');
  interactiveMenu(accountModel: accountModel, userModel: userModel);
}