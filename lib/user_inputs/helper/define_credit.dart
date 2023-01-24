//função que recebe um valor e só vai calcular o limite do cartão de crédito
import 'dart:io';

String defineCredit(String incomeValue) { //definir um crédito apenas se a renda mensal for != 0
  stdout.writeln('Valor gasto inicial R\$0,0\n');
  double limit = 0;
  double monthlyIncomeValue = double.parse(incomeValue) ;
  
  if (monthlyIncomeValue <= 1000) {
    limit = monthlyIncomeValue * (0.1);
    print('--> O valor do seu limite de cartão de crédito é de $limit reais.');
  }
  else if(monthlyIncomeValue <= 2500){
    limit = monthlyIncomeValue * (0.25);
     print('--> O valor do seu limite de cartão de crédito é de $limit reais.');
  }
  else if(monthlyIncomeValue <= 5000){
    limit = monthlyIncomeValue * (0.4);
    print('--> O valor do seu limite de cartão de crédito é de $limit reais.');
  }
  else if(monthlyIncomeValue <= 10000){
    limit = monthlyIncomeValue * (0.6);
    print('--> O valor do seu limite de cartão de crédito é de $limit reais.');
  }
  else if(monthlyIncomeValue > 10000){
    limit = monthlyIncomeValue * (0.75);
    print('--> O valor do seu limite de cartão de crédito é de $limit reais.');
  }

  return limit.toStringAsFixed(2); //2 casas decimais após a virgula
}
