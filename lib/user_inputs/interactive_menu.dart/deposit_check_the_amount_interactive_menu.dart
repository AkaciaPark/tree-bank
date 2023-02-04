import 'dart:io';

double depositCheckTheAmount({required double valueInputToDouble}) {
  String? receiveValueInputAgain;
  bool isInputNotEmpty =
      receiveValueInputAgain == null || receiveValueInputAgain.trim().isEmpty;

  if (valueInputToDouble > 5000.0 || valueInputToDouble <= 0.0) {
    do {
      stdout.writeln('Valor de depósito não aceito.');
      stdout.writeln('O valor precisa ser maior que zero e menor que 5 mil.');

      if (isInputNotEmpty) {
        do {
          stdout.writeln('Informe o valor que deseja depositar: ');
          receiveValueInputAgain = stdin.readLineSync();
        } while (!isInputNotEmpty);
      }

      if (receiveValueInputAgain == null ||
          receiveValueInputAgain.trim().isEmpty) {
        receiveValueInputAgain = '0.0';
      }
      valueInputToDouble = double.parse(receiveValueInputAgain);
    } while (valueInputToDouble > 5000 || valueInputToDouble <= 0.0);
  }
  return valueInputToDouble;
}
