import 'package:desafio_um/validations/monthly_income_validation.dart';
import 'package:test/test.dart';

void main() {

// caminho triste :(
  test('should return invalid monthly income message when receive negative numbers', () {
    final monthlyIncomeExpected = monthlyIncomeValidation('-0,05');
    expect(monthlyIncomeExpected, 'Valor de renda mensal inválido');
  });

  test('should return invalid monthly income message when dont have comma with 2 decimals', () {
    final monthlyIncomeExpected = monthlyIncomeValidation('0,0');
    expect(monthlyIncomeExpected, 'Valor de renda mensal inválido');
  });

  test('should return invalid monthly income message when receive space between the numbers', () {
    final monthlyIncomeExpected = monthlyIncomeValidation('0, 5');
    expect(monthlyIncomeExpected, 'Valor de renda mensal inválido');
  });

  test('should return invalid monthly income message when receive any type of words', () {
    final monthlyIncomeExpected = monthlyIncomeValidation('a,50');
    expect(monthlyIncomeExpected, 'Valor de renda mensal inválido');
  });

  test('should return invalid monthly income message when receive any type of charactere', () {
    final monthlyIncomeExpected = monthlyIncomeValidation('5#3');
    expect(monthlyIncomeExpected, 'Valor de renda mensal inválido');
  });

  test('should return invalid monthly income message when receive any type of charactere at the begin ', () {
    final monthlyIncomeExpected = monthlyIncomeValidation('.321,20');
    expect(monthlyIncomeExpected, 'Valor de renda mensal inválido');
  });



  // caminho feliz :)
  test('should return null when is empty', () {
    final monthlyIncomeExpected = monthlyIncomeValidation(null);
    expect(monthlyIncomeExpected, null);
  });

  test('should return null when nothing is typed', () {
    final monthlyIncomeExpected = monthlyIncomeValidation('');
    expect(monthlyIncomeExpected, null);
  });

  test('should return null when entered correctly', () {
    final monthlyIncomeExpected = monthlyIncomeValidation('567.560,10');
    expect(monthlyIncomeExpected, null);
  });

}