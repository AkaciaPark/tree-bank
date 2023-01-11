import 'package:desafio_um/validations/full_name_validation.dart';
import 'package:test/test.dart';

void main() {

  //caminho triste :(
  test('should return saying this field need to be filled', () {
    final fullNameExpected = fullNameValidation('');
    expect(fullNameExpected, 'Preencha este espaço! Ele está vazio.');
  });

  test('should return saying this field need to be filled when the field is empty', () {
    final fullNameExpected = fullNameValidation(null);
    expect(fullNameExpected, 'Preencha este espaço! Ele está vazio.');
  });

  test('should return saying the field is filled out incorrectly because need 3 or more words', () {
    final fullNameExpected = fullNameValidation('An');
    expect(fullNameExpected, 'Nome preenchido de forma incorreta!');
  });

  test('should return saying the filed is filled out incorrectly because is unacceptable more than one space between the names', () {
    final fullNameExpected = fullNameValidation('Íngrid  Eilly Camargo');
    expect(fullNameExpected, 'Nome preenchido de forma incorreta!');
  });

  test('should return saying the filed is filled out incorrectly because numbers is unacceptable', () {
    final fullNameExpected = fullNameValidation('Maria do Camargo5');
    expect(fullNameExpected, 'Nome preenchido de forma incorreta!');
  });

  test('should return saying the filed is filled out incorrectly because the first and second names are minimum', () {
    final fullNameExpected = fullNameValidation('Ana');
    expect(fullNameExpected, 'Nome preenchido de forma incorreta!');
  });

  test('should return saying the field is filled out incorrectly because special characters are unacceptable', () {
    final fullNameExpected = fullNameValidation('Ana Wiskol#@');
    expect(fullNameExpected, 'Nome preenchido de forma incorreta!');
  });

  //caminho feliz :)

  test('should return null when put a correct full name with only one surname', () {
    final fullNameExpected = fullNameValidation('Ana Mariçoca');
    expect(fullNameExpected, null);
  });

  test('should return null when put a correct full name with 2 or more surnames', () {
    final fullNameExpected = fullNameValidation('Ana Mariçoca dos Santos');
    expect(fullNameExpected, null);
  });

  test('should return null when put a surname with \'', () {
    final fullNameExpected = fullNameValidation('Ana D\'avilla dos Santos');
    expect(fullNameExpected, null);
  });

  test('should return null when put a surname with -', () {
    final fullNameExpected = fullNameValidation('Ana Maria-Doce Chuchu');
    expect(fullNameExpected, null);
  });


}
