import 'dart:io';
import 'package:desafio_um/user_inputs/helper/password_required.dart';
import '../../models/users/user_model.dart';

// vai ter que me retornar um double pra usar e colocar na fatura do cartão
void loanRepeatToUser(
    {required UserModel userModel, required List<double> loanCalculation}) {
  String? userChoice;
  double userChoiceValue;
  //bool isUserChoiceValid = userChoice == null || userChoice.trim().isEmpty;
  do {
    stdout.writeln(
      'Sua faixa de empréstimo é de R\$${loanCalculation[0].ceilToDouble()} a R\$${loanCalculation[1].ceilToDouble()}.',
    );
    stdout.write('Escolha um valor entre a faixa apresentada: ');
    userChoice = stdin.readLineSync();

    if (userChoice == null || userChoice.trim().isEmpty) {
      userChoice = '0.0';
    }

    userChoiceValue = double.parse(userChoice);
    bool isLoanApproved = userChoiceValue >= loanCalculation[0] &&
        userChoiceValue <= loanCalculation[1];

    if (isLoanApproved) {
      passwordRequired(userModel: userModel);

      stdout.writeln('\nEmpréstimo aprovado!');
    } else {
      stdout.writeln(
          '\nValor não disponível.\nEscolha um valor entre a faixa apresentada.');
    }
  } while (userChoiceValue < loanCalculation[0] ||
      userChoiceValue > loanCalculation[1]);
}
