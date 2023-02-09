import 'dart:io';
import 'package:desafio_um/models/accounts/current_account_model.dart';
import 'package:desafio_um/models/cards/credit_card_model.dart';
import 'package:desafio_um/user_inputs/helper/password_required.dart';
import '../../models/users/user_model.dart';

// vai ter que me retornar um double pra usar e colocar na fatura do cartão
double loanRepeatToUser({
  required UserModel userModel,
  required List<double> loanCalculation,
  required CurrentAccountModel currentAccountModel,
}) {
  String? userChoice;
  double userChoiceValue;
  bool isLoanApproved;
  do {
    stdout.writeln(
      'Sua faixa de empréstimo é de R\$${loanCalculation[0].ceilToDouble()} a R\$${loanCalculation[1].ceilToDouble()}.',
    );
    stdout.write('Escolha um valor entre a faixa apresentada: ');
    userChoice = stdin.readLineSync();

    if (userChoice == null || userChoice.trim().isEmpty) {
      userChoice = '0.0';
    }
    CreditCardModel creditCard =
        currentAccountModel.cardModel as CreditCardModel;

    userChoiceValue = double.parse(userChoice);
    isLoanApproved = userChoiceValue >= loanCalculation[0] &&
        userChoiceValue <= loanCalculation[1] &&
        userChoiceValue <= creditCard.limiteDisponivel;

    if (isLoanApproved) {
      passwordRequired(userModel: userModel);

      stdout.writeln('\nEmpréstimo aprovado!');
    } else {
      stdout.writeln(
          '\nValor não disponível.\nEscolha um valor entre a faixa apresentada.');
    }
  } while (!isLoanApproved);

  return userChoiceValue;
}
