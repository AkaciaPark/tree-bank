// função que vai checar o valor do input do depósito
// se for maior que 5 mil não pode
// tem que receber o valor do input do usuário
import 'dart:io';

// fala se pode ou se não pode fazer a transação
double checkTheDepositAmount({required double valueInputToDouble}) {
  String? esperaDigitar;
  bool isInputNotEmpty = esperaDigitar == null || esperaDigitar.trim().isEmpty;

  if (valueInputToDouble > 5000.0 || valueInputToDouble <= 0.0) {
    do {
      // depósito acima de 5 mil não é aceito
      stdout.writeln('Valor de depósito não aceito.');
      stdout.writeln('O valor precisa ser maior que zero e menor que 5 mil.');

      if (isInputNotEmpty) {
        do {
          stdout.writeln('Informe o valor que deseja depositar: ');
          esperaDigitar = stdin.readLineSync();
        } while (!isInputNotEmpty);
      }

      if (esperaDigitar == null || esperaDigitar.trim().isEmpty) {
        esperaDigitar = '0.0';
      }
      valueInputToDouble = double.parse(esperaDigitar);
    } while (valueInputToDouble > 5000 || valueInputToDouble <= 0.0);
  }
  return valueInputToDouble;
}
