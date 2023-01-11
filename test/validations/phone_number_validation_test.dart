import 'package:desafio_um/validations/phone_number_validation.dart';
import 'package:test/test.dart';

void main() {

  //caminho triste :(
  test('should return saying this field need to be filled', () {
  final phoneNumberExpected = phoneNumberValidation(null);
  expect(phoneNumberExpected, 'Preencha o espaço!');
  });

  test('should return saying this field need to be filled when the field is empty', () {
    final phoneNumberExpected = phoneNumberValidation(' ');
    expect(phoneNumberExpected, 'Preencha o espaço!');
  });

  test('should return saying incorrect phone number message when its less than 11 digits', () {
    final phoneNumberExpected = phoneNumberValidation('1234567891');
    expect(phoneNumberExpected, 'Número de telefone inválido por não apresentar a formatação correta com DDD.');
  });

  test('should return saying incorrect phone number message when its more than 15 digits', () {
    final phoneNumberExpected = phoneNumberValidation('12123456789154623');
    expect(phoneNumberExpected, 'Número de telefone inválido por não apresentar a formatação correta com DDD.');
  });

  test('should return saying invalid phone number when the user type a string', () {
    final phoneNumberExpected = phoneNumberValidation('1234567d91a2');
    expect(phoneNumberExpected, 'Número de telefone inválido!');
  });

  test('should return saying invalid phone number when the user type a character', () {
    final phoneNumberExpected = phoneNumberValidation('456158@!96523');
    expect(phoneNumberExpected, 'Número de telefone inválido!');
  });

  test('should return saying invalid phone number when the user type a space between the numbers', () {
    final phoneNumberExpected = phoneNumberValidation('45615 487035');
    expect(phoneNumberExpected, 'Número de telefone inválido!');
  });

  //caminho feliz :)

  test('should return null when its a valid phone number', () {
    final phoneNumberExpected = phoneNumberValidation('121234567895');
    expect(phoneNumberExpected, null);
  });
}

