import 'dart:io';
import 'package:desafio_um/user_inputs/helper/password_required.dart';
import '../../models/users/user_model.dart';

void render(
    {required dynamic accountModel,
    required UserModel userModel,
    required String incomeValue}) {
  String? inputNumberOfDays;
  stdout.writeln('Bem vindo a Rendimentos!');
  // loop para ficar pedindo a quantidade de dias
  do {
    stdout.write(
        'Para fazer o cálculo do rendimento, insira a quantidade de dias desejado: ');
    inputNumberOfDays = stdin.readLineSync();
  } while (inputNumberOfDays == null || inputNumberOfDays.trim().isEmpty);

  stdout.writeln('Você escolheu $inputNumberOfDays dias.');

  // transformando esse inputNumberOfDays em int para poder fazer o cálculo.
  int numberOfDays = int.parse(inputNumberOfDays);

  // caso a renda mensal venha zerado
  if (incomeValue.trim().isEmpty) {
    incomeValue = '0';
  }

  //  transformando a renda mensal em double para fazer o cálculo.
  double monthlyIncomeValue = double.parse(incomeValue);

  double fixedValue = 0.02;

  double resultTargetTime = (monthlyIncomeValue * fixedValue) / numberOfDays;
  double resultHalfOfTheTime =
      (monthlyIncomeValue * fixedValue) / (numberOfDays / 2);
  double resultTwiceAsLong =
      (monthlyIncomeValue * fixedValue) / (2 * numberOfDays);

  passwordRequired(userModel: userModel);

  stdout.writeln(
      'No período de $numberOfDays dias você terá uma rentabilidade de ${resultTargetTime.toStringAsFixed(2)}%.');
  stdout.writeln('Para saber mais: ');
  stdout.writeln(
      'Com a metade do tempo escolhido você teria uma rentabilidade de ${resultHalfOfTheTime.toStringAsFixed(2)}%.');
  stdout.writeln(
      'E no dobro do período escolhido você teria uma rentabilidade de ${resultTwiceAsLong.toStringAsFixed(2)}%.');
}
