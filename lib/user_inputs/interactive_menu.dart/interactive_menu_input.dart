import 'dart:io';
import 'package:desafio_um/models/accounts/account_model.dart';
import 'package:desafio_um/user_inputs/helper/access_only_to_current_account.dart';
import 'package:desafio_um/user_inputs/helper/access_only_to_saving_account.dart';
import 'package:desafio_um/user_inputs/interactive_menu.dart/deposit_interactive_menu.dart';
import 'package:desafio_um/user_inputs/interactive_menu.dart/withdraw_interactive_menu.dart';
import '../../models/users/user_model.dart';
import 'interactive_menu_option.dart';

void interactiveMenu({
  required AccountModel accountModel,
  required UserModel userModel,

}) {
  String? recebeInputUsuario;

  const List<InterativeMenuOption> interactiveMenuOptions = [
    InterativeMenuOption(optionCode: '1', optionText: 'Sacar.'),
    InterativeMenuOption(optionCode: '2', optionText: 'Empréstimo.'),
    InterativeMenuOption(optionCode: '3', optionText: 'Depósito.'),
    InterativeMenuOption(optionCode: '4', optionText: 'Rendimento.'),
    InterativeMenuOption(optionCode: '5', optionText: 'Pagar com débito.'),
    InterativeMenuOption(optionCode: '6', optionText: 'Pagar com crédito.'),
    InterativeMenuOption(
      optionCode: '7',
      optionText: 'Sair do Menu Interativo',
    ),
  ];

  do {
    stdout.writeln('\nVocê está no Menu Interativo!');
    stdout.writeln(
        'Escolha algum dos números abaixo para prosseguir no TreeBank');

    for (var i = 0; i < interactiveMenuOptions.length; i++) {
      stdout.writeln(
          '${interactiveMenuOptions[i].optionCode} - ${interactiveMenuOptions[i].optionText}');
    }

    recebeInputUsuario = stdin.readLineSync();

    if (recebeInputUsuario == interactiveMenuOptions[0].optionCode) {
      stdout.writeln(interactiveMenuOptions[0].optionText);

      withdraw(accountModel: accountModel, userModel: userModel);
    } else if (recebeInputUsuario == interactiveMenuOptions[1].optionCode) {
      stdout.writeln(interactiveMenuOptions[1].optionText);

      accessOnlyToCurrentAccount(
        accountModel: accountModel,
        userModel: userModel,
        
      );
    } else if (recebeInputUsuario == interactiveMenuOptions[2].optionCode) {
      stdout.writeln(interactiveMenuOptions[2].optionText);

      deposit(
        accountModel: accountModel,
        userModel: userModel,
      );
    } else if (recebeInputUsuario == interactiveMenuOptions[3].optionCode) {
      stdout.writeln(interactiveMenuOptions[3].optionText);

      accessOnlyToSavingAccount(
        accountModel: accountModel,
        userModel: userModel,
      );
    } else if (recebeInputUsuario == interactiveMenuOptions[4].optionCode) {
      stdout.writeln(interactiveMenuOptions[4].optionText);
    } else if (recebeInputUsuario == interactiveMenuOptions[5].optionCode) {
      stdout.writeln(interactiveMenuOptions[5].optionText);
    } else {
      //limpa o terminal :P
      print("\x1B[2J\x1B[0;0H");
      stdout.write(interactiveMenuOptions[6].optionText);
    }
  } while (recebeInputUsuario != '7');
}
