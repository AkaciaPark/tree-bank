import '../../models/users/user_model.dart';

// incomeValue = result???
List<double> renderCalculation(
    {required UserModel userModel, required String incomeValue}) {
  // transformando esse inputNumberOfDays em int para poder fazer o cálculo.
  int numberOfDays = int.parse(incomeValue);

  // caso a renda mensal venha zerado
  if (incomeValue.trim().isEmpty) {
    incomeValue = '0';
  }

  // transformando a renda mensal em double para fazer o cálculo.
  double monthlyIncomeValue = double.parse(incomeValue);

  double fixedValue = 0.02;

  final double resultTargetTime =
      (monthlyIncomeValue * fixedValue) * numberOfDays;
  final double resultHalfOfTheTime =
      (monthlyIncomeValue * fixedValue) * (numberOfDays / 2);
  final double resultTwiceAsLong =
      (monthlyIncomeValue * fixedValue) * (2 * numberOfDays);

  // em ordem: tempo inputado, metade do tempo, dobro do tempo
  return [resultTargetTime, resultHalfOfTheTime, resultTwiceAsLong];
}
