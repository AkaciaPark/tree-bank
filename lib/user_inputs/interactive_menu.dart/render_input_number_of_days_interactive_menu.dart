import 'dart:io';

int renderInputNumberOfDays() {
  String? inputNumberOfDays;
  int? days;
  do {
    stdout.write(
        'Para fazer o cálculo do rendimento, insira a quantidade de dias desejado: ');
    inputNumberOfDays = stdin.readLineSync();
    
    if (inputNumberOfDays != null && inputNumberOfDays.trim().isNotEmpty) {
      days = int.tryParse(inputNumberOfDays);
    }
  } while (days == null);

  stdout.writeln('Você escolheu $inputNumberOfDays dias.');
  return days;
}
