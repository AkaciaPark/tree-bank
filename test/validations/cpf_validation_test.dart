import 'package:desafio_um/validations/cpf_validation.dart';
import 'package:test/test.dart';

void main() {
//caminho triste :(
  test('should return saying this field need to be filled', () {
    final cpfExpected = cpfValidation(null);
    expect(cpfExpected, 'Preencha o campo, ele está vazio!');
  });

  test('should return saying this field need to be filled when is empty', () {
    final cpfExpected = cpfValidation('');
    expect(cpfExpected, 'Preencha o campo, ele está vazio!');
  });

  test('should return saying invalid cpf when putting any letter', () {
    final cpfExpected = cpfValidation('a56.598.s5s-98');
    expect(cpfExpected, 'CPF inválido!');
  });

  test('should return saying invalid cpf when putting any character', () {
    final cpfExpected = cpfValidation('56956@25.8.');
    expect(cpfExpected, 'CPF inválido!');
  });

  test(
      'should return saying invalid cpf when placing an amount that does not match the cpf ',
      () {
    final cpfExpected = cpfValidation('5622584201');
    expect(cpfExpected, 'CPF inválido!');
  });


  //caminho meio a meio :/

  test(
      'should return invalid message when the first code doesnt match the cpf',
      () {
    String? cpfReceived = '04891433010';
    final cpfExpected = cpfValidation(cpfReceived);
    expect(cpfExpected, 'CPF inválido no primeiro dígito verificador');
  });

  test(
      'should return invalid message when the second code doesnt match with the cpf',
      () {
    String? cpfReceived = '04891433005';
    final cpfExpected = cpfValidation(cpfReceived);
    expect(cpfExpected, 'CPF inválido no segundo dígito verificador');
  });

//caminho feliz :)

  test(
      'should return saying valid cpf when the first validation code match with the cpf',
      () {
    String? cpfReceived = '04891433000';
    final cpfExpected = cpfValidation(cpfReceived);
    expect(cpfExpected, null);
  });

  test(
      'should return saying valid cpf when the second validation code match with the cpf',
      () {
    String? cpfReceived = '60897214099';
    final cpfExpected = cpfValidation(cpfReceived);
    expect(cpfExpected, null);
  });

}




