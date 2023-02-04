import 'dart:io';
import '../../models/users/user_model.dart';

// se tiver renda mensal então ok, senão volta um passo (return vazio!)
// pra fazer essa função eu preciso receber a renda mensal como parâmetro
void checkTheMonthlyIncomeValue({
  required UserModel userModel,
  required String incomeValue,
}) {
  if (incomeValue.trim().isEmpty) {
    stdout.writeln('Sem renda mensal não é possível prosseguir nessa seção.');
    return;
  }
  else{
    stdout.writeln('Acessando renda mensal com sucesso!');
  }
}
