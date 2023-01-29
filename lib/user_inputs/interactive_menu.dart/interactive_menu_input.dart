import 'dart:io';
import 'package:desafio_um/models/accounts/account_model.dart';
import 'package:desafio_um/user_inputs/interactive_menu.dart/withdraw_money_interactive_menu.dart';
import 'interactive_menu_option.dart';
import 'receive_deposit_interactive_menu_input.dart';

void interactiveMenu({required AccountModel accountModel}) {
  String? recebeInputUsuario;

  const List<InterativeMenuOption> interactiveMenuOptions = [
    InterativeMenuOption(optionCode: '1', optionText: 'Sacar.'),
    InterativeMenuOption(optionCode: '2', optionText: 'Empréstimo.'),
    InterativeMenuOption(optionCode: '3', optionText: 'Depósito.'),
    InterativeMenuOption(optionCode: '4', optionText: 'Rendimento.'),
    InterativeMenuOption(optionCode: '5', optionText: 'Pagar com débito.'),
    InterativeMenuOption(optionCode: '6', optionText: 'Pagar com crédito.'),
    InterativeMenuOption(
        optionCode: '-', optionText: 'Você não escolheu nenhuma das opções.'),
  ];

  do {
    stdout.writeln('\nVocê está no Menu Interativo!');
    stdout.writeln(
        'Escolha algum dos números abaixo para prosseguir no TreeBank');
    for (var i = 0; i < interactiveMenuOptions.length - 1; i++) {
      stdout.writeln(
          '${interactiveMenuOptions[i].optionCode} - ${interactiveMenuOptions[i].optionText} ');
    }

    recebeInputUsuario = stdin.readLineSync();

    if (recebeInputUsuario == interactiveMenuOptions[0].optionCode) {
      //levar para o arquivo referente
      stdout.writeln(interactiveMenuOptions[0].optionText);
      withdrawMoney();
    } else if (recebeInputUsuario == interactiveMenuOptions[1].optionCode) {
      stdout.writeln(interactiveMenuOptions[1].optionText);
    } else if (recebeInputUsuario == interactiveMenuOptions[2].optionCode) {
      stdout.writeln(interactiveMenuOptions[2].optionText);
       receiveDeposit(accountModel:accountModel, valueToDeposit: 50);
    } else if (recebeInputUsuario == interactiveMenuOptions[3].optionCode) {
      stdout.writeln(interactiveMenuOptions[3].optionText);
    } else if (recebeInputUsuario == interactiveMenuOptions[4].optionCode) {
      stdout.writeln(interactiveMenuOptions[4].optionText);
    } else if (recebeInputUsuario == interactiveMenuOptions[5].optionCode) {
      stdout.writeln(interactiveMenuOptions[5].optionText);
    } else {
      //limpa o terminal :P
      print("\x1B[2J\x1B[0;0H");
      stdout.write(interactiveMenuOptions[6].optionText);
    }
  } while (recebeInputUsuario == null ||
      recebeInputUsuario.trim().isEmpty ||
      recebeInputUsuario != interactiveMenuOptions[0].optionCode &&
          recebeInputUsuario != interactiveMenuOptions[1].optionCode &&
          recebeInputUsuario != interactiveMenuOptions[2].optionCode &&
          recebeInputUsuario != interactiveMenuOptions[3].optionCode &&
          recebeInputUsuario != interactiveMenuOptions[4].optionCode &&
          recebeInputUsuario != interactiveMenuOptions[5].optionCode);
}
