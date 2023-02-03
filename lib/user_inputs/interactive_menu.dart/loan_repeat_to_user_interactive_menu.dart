import 'dart:io';

void loanRepeatToUser({required List<double> loanCalculation}) {
  stdout.writeln(
    'Sua faixa de empréstimo é de R\$${loanCalculation[0].ceilToDouble()} a R\$${loanCalculation[1].ceilToDouble()}.',
  );
  stdout.writeln('Escolha um valor entre a faixa apresentada: ');
  String? userChoice;
  userChoice = stdin.readLineSync();

  if (userChoice == null || userChoice.trim().isEmpty) {
    userChoice = '0';
  }
  double userChoiceValue = double.parse(userChoice);
  if (userChoiceValue >= loanCalculation[0] &&
      userChoiceValue <= loanCalculation[1]) {
    stdout.writeln('Nice!');
  } else {
    stdout.writeln('Ei, não pode!! DEVOLVEEE');
  }

  // ele tá quebrando se eu não digito nada, ele printa 'Ei não pode! DEVOLVEEE'
}
