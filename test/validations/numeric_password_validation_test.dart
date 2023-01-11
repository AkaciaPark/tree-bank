import 'package:desafio_um/validations/numeric_password_validation.dart';
import 'package:test/test.dart';

void main() {
    //caminho triste :(
    test('should return saying this field need to be filled', () {
      final numericPasswordExpected = numericPasswordValidation(null);
      expect(numericPasswordExpected, 'Preencha o espaço!');
    });

    test('should return saying this field need to be filled when the field is empty',() {
      final numericPasswordExpected = numericPasswordValidation('');
      expect(numericPasswordExpected, 'Preencha o espaço!');
    });

    test('should return saying invalid password message when the user type a string',() {
      final numericPasswordExpected = numericPasswordValidation('a123s589');
      expect(numericPasswordExpected, 'Senha inválida!');
    });

    test('should return saying invalid password message when the user type a caracter',() {
      final numericPasswordExpected = numericPasswordValidation('a1\$*s589');
      expect(numericPasswordExpected, 'Senha inválida!');
    });

    test('should return saying invalid password message because the password need to be exactly 8 numbers', () {
      final numericPasswordExpected = numericPasswordValidation('a1\$*s');
      expect(numericPasswordExpected, 'A senha precisa ter 8 caracteres!');
    });
  

  //caminho feliz :)

    test('should return null when put a correct password with 8 different numbers', () {
      final numericPasswordExpected = numericPasswordValidation('12345678');
      expect(numericPasswordExpected, null);
    });

    test('should return null when put a correct password with 8 equals numbers', () {
      final numericPasswordExpected = numericPasswordValidation('00000000');
      expect(numericPasswordExpected, null);
    });
}



