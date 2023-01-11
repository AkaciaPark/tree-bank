import 'package:desafio_um/validations/email_validation.dart';
import 'package:test/test.dart';

void main() {
  //caminho triste :(
  test('should return saying this field need to be filled', () {
    final emailExpected = emailValidation(null);
    expect(emailExpected, 'Preencha o campo, ele está vazio!');
  });

  test('should return saying this field need to be filled when is empty', () {
    final emailExpected = emailValidation(' ');
    expect(emailExpected, 'Preencha o campo, ele está vazio!');
  });

  test('should return saying invalid email message when put number at the beginning of the email', () {
    final emailExpected = emailValidation('1whatever@outlook.com');
    expect(emailExpected, 'Email inválido! Digite um email compatível.');
  });

  test('should return saying invalid email message when put any number after @', () {
    final emailExpected = emailValidation('whatever@outlook2com.br');
    expect(emailExpected, 'Email inválido! Digite um email compatível.');
  });

  test('should return saying invalid email message when put any symbol or special character before @', () {
    final emailExpected = emailValidation('whatever\$#@!@gmail.com');
    expect(emailExpected, 'Email inválido! Digite um email compatível.');
  });

  test('should return saying invalid email message when put any symbol or special character after @', () {
    final emailExpected = emailValidation('whatever\$#@!@*_gmail.com');
    expect(emailExpected, 'Email inválido! Digite um email compatível.');
  });

  test('should return saying invalid email message when put a domain with less then 5 or more then 7 word', () {
    final emailExpected = emailValidation('whatever@gov.com');
    expect(emailExpected, 'Email inválido! Digite um email compatível.');
  });

  test('should return saying invalid email message when put something different then .com', () {
    final emailExpected = emailValidation('whatever@gov.uk');
    expect(emailExpected, 'Email inválido! Digite um email compatível.');
  });

  test('should return saying invalid email message when dont put point on .com', () {
    final emailExpected = emailValidation('whatever@outlookcom');
    expect(emailExpected, 'Email inválido! Digite um email compatível.');
  });



   //caminho feliz :)
  test('should null when put a valid email', () {
    final emailExpected = emailValidation('dino@outlook.com');
    expect(emailExpected, null);
  });

  test('should null when put a valid email with underscore', () {
    final emailExpected = emailValidation('dino_ino@hotmail.com');

    expect(emailExpected, null);
  });

test('should null when put a valid email with numbers', () {
  final emailExpected = emailValidation('dino123@gmail.com');
  expect(emailExpected, null);
});

test('should null when put a valid email with dot', () {
  final emailExpected = emailValidation('dino.ino@yahoo.com.br');
  expect(emailExpected, null);
});














}