import 'dart:io';
import 'dart:core';
import 'package:desafio_um/models/cards/card_model.dart';

import '../models/accounts/account_model.dart';
import '../models/accounts/saving_account_model.dart';
import '../models/users/user_model.dart';
import 'account_model_input.dart';
import 'helper/generate_random_number.dart';
import 'user_model_input.dart';

void main() {
  print("Seja bem vindo ao TreeBank!");

  UserModel userModel = userModelCreation();
  AccountModel accountModel = accountModelInput(userModel);


  //creatingAnAccountDependingOnInput();
}
