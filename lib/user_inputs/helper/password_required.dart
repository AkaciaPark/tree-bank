import 'dart:io';
import '../../models/users/user_model.dart';

void passwordRequired({required UserModel userModel}) {
  String? passwordRequired;

  do {
    stdout.writeln('Para prosseguir, insira a sua senha numérica.');
    passwordRequired = stdin.readLineSync();
    if (passwordRequired == userModel.numericPassword.toString()) {
      stdout.writeln('Acesso liberado~\n');
    } else {
      stdout.writeln('\nSenha incorreta!\n');

    }
  } while (passwordRequired != userModel.numericPassword.toString());
}
