import 'dart:io';
import '../../models/users/user_model.dart';

// preciso receber a senha que ele já digitou uma vez
void passwordRequired({required UserModel userModel}) {
  String? passwordRequired;

// posso chamar essa função antes de ser feito o depósito de fato
// se a senha bater com o que já foi colocado então ele printa sucesso, senão pede para inserir a senha novamente
// acho que vou ter que colocar esse if dentro de um do/while

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
