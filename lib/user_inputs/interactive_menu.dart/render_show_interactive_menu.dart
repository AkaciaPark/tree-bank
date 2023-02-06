import 'dart:io';

void renderShow(
    {required int numberOfDays, required List<double> renderCalculation}) {
  stdout.writeln(
      'No período de $numberOfDays dias você terá uma rentabilidade de ${renderCalculation[0].toStringAsFixed(2)} reais.');
  stdout.writeln('Para saber mais: ');
  stdout.writeln(
      'Com a metade do tempo escolhido você teria uma rentabilidade de ${renderCalculation[1].toStringAsFixed(2)} reais.');
  stdout.writeln(
      'E no dobro do período escolhido você teria uma rentabilidade de ${renderCalculation[2].toStringAsFixed(2)} reais.');
}
