import 'dart:io';

// a função vai se tornar int
int renderInputNumberOfDays() {
  String? inputNumberOfDays;
  int? dias;
  do {
    stdout.write(
        'Para fazer o cálculo do rendimento, insira a quantidade de dias desejado: ');
    inputNumberOfDays = stdin.readLineSync();
    
    if (inputNumberOfDays != null && inputNumberOfDays.trim().isNotEmpty) {
      dias = int.tryParse(inputNumberOfDays);
    }
  } while (dias == null);

  stdout.writeln('Você escolheu $inputNumberOfDays dias.');
  return dias;
}
