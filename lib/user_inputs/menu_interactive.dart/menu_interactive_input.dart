import 'dart:io';
import 'package:desafio_um/user_inputs/menu_interactive.dart/withdraw_money_menu_interactive.dart';

void menuInteractive() {
  String? recebeInputUsuario;
  do {
    stdout.writeln('\nVocê está no Menu Interativo!');
    stdout.writeln(
        'Escolha algum dos números abaixo para prosseguir no TreeBank');
    stdout.writeln(
        ' 1- Sacar\n 2- Empréstimo\n 3- Depósito\n 4- Rendimento\n 5- Pagar com débito\n 6- Pagar com crédito');

    recebeInputUsuario = stdin.readLineSync();
    if (recebeInputUsuario == '1') {
      //levar para o arquivo referente
      stdout.writeln('Você escolheu a opção de: Sacar');
      withdrawMoney();
    } else if (recebeInputUsuario == '2') {
      stdout.writeln('Você escolheu a opção de: Empréstimo');
    } else if (recebeInputUsuario == '3') {
      stdout.writeln('Você escolheu a opção de: Depósito');
    } else if (recebeInputUsuario == '4') {
      stdout.writeln('Você escolheu a opção de: Rendimento');
    } else if (recebeInputUsuario == '5') {
      stdout.writeln('Você escolheu a opção de: Pagar com débito');
    } else if (recebeInputUsuario == '6') {
      stdout.writeln('Você escolheu a opção de: Pagar com crédito');
    } else {
      stdout.writeln('> Você não escolheu nenhuma das opções. <\n');
    }
  } while (recebeInputUsuario == null ||
      recebeInputUsuario.trim().isEmpty ||
      recebeInputUsuario != '1' &&
          recebeInputUsuario != '2' &&
          recebeInputUsuario != '3' &&
          recebeInputUsuario != '4' &&
          recebeInputUsuario != '5' &&
          recebeInputUsuario != '6');
}
