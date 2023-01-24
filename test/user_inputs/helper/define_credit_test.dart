import 'package:desafio_um/user_inputs/helper/define_credit.dart';
import 'package:test/test.dart';

void main() {

  //caminho feliz :)
test('if the income value is less than 1.000 reais', () {
  final monthlyIncomeExpected = defineCredit('500.00');
  expect(monthlyIncomeExpected, '50.00');
});

test('if the income value is less than 2.500 reais', () {
  final monthlyIncomeExpected = defineCredit('2000');
  expect(monthlyIncomeExpected, '500.00');
});

test('if the income value is less than 5.000 reais', () {
  final monthlyIncomeExpected = defineCredit('4000');
  expect(monthlyIncomeExpected, '1600.00');
});

test('if the income value is less than 10.000 reais', () {
  final monthlyIncomeExpected = defineCredit('9000');
  expect(monthlyIncomeExpected, '5400.00');
});

test('if the income value is more than 10.000 reais', () {
  final monthlyIncomeExpected = defineCredit('12000');
  expect(monthlyIncomeExpected, '9000.00');
});

test('1500 reais', () {
  final monthlyIncomeExpected = defineCredit('15000');
  expect(monthlyIncomeExpected, '11250.00');
});
}