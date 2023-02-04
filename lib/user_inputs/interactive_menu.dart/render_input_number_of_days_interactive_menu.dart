import 'dart:io';

String renderInputNumberOfDays() {
  String? inputNumberOfDays;
  // loop para ficar pedindo a quantidade de dias
  do {
    stdout.write(
        'Para fazer o cálculo do rendimento, insira a quantidade de dias desejado: ');
    inputNumberOfDays = stdin.readLineSync();
  } while (inputNumberOfDays == null || inputNumberOfDays.trim().isEmpty);

  stdout.writeln('Você escolheu $inputNumberOfDays dias.');
  return inputNumberOfDays;
}
