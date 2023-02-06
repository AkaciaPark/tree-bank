import '../../models/users/user_model.dart';

List<double> renderCalculation({
  // pra acessar minha renda mensal
  required UserModel userModel,
  // minha quantidade de dias
  required int howManyDays,
}) {

  
  String? rendaMensal = userModel.monthlyIncome.toString();

  if (rendaMensal.trim().isEmpty) {
    rendaMensal = '0';
  }

  double monthlyIncomeValue = double.parse(rendaMensal);

  double fixedValue = 0.02;

  final double resultTargetTime =
      (monthlyIncomeValue * fixedValue) * howManyDays;
  final double resultHalfOfTheTime =
      (monthlyIncomeValue * fixedValue) * (howManyDays / 2);
  final double resultTwiceAsLong =
      (monthlyIncomeValue * fixedValue) * (2 * howManyDays);

  return [resultTargetTime, resultHalfOfTheTime, resultTwiceAsLong];
}
