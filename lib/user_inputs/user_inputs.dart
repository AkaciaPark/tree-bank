import 'dart:io';
import '../models/users/user_model.dart';
import 'account_model_input.dart';
import 'user_bifurcation.dart';
import 'user_model_input.dart';

void main() {
  stdout.writeln("Seja bem vindo ao TreeBank!");
  UserModel userModel = userModelCreation();
  accountModelInput(userModel);
  userBifurcation(accountType!,
      userModel); //exclamação pq o usuario já informou o tipo de conta!
}
