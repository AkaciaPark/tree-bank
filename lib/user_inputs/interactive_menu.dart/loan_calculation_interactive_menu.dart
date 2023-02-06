import '../../models/users/user_model.dart';

List<double> loanCalculation({
  required UserModel userModel,
  required String incomeValue,
}) {
  double monthlyIncomeValue = double.parse(incomeValue);
  double maxFixedLoan = 0.7;
  double minFixedLoan = 0.2;

  final maxLoan = (monthlyIncomeValue * maxFixedLoan);
  final minLoan = (monthlyIncomeValue * minFixedLoan);

  return [minLoan, maxLoan];
}
