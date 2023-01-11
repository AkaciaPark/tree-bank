String? cpfValidation(String? cpf) {
  final regexValidation = _regexValidation(cpf);
  if (regexValidation != null) return regexValidation;

  final handleCpf = cpf!.replaceAll(RegExp(r'[\.-]'), '');

  final firstValidation =
      _validateVerifierDigit(cpf: handleCpf, indexToValidate: 9);
  if (firstValidation == false) return 'CPF inválido no primeiro dígito verificador';

  final secondValidation =
      _validateVerifierDigit(cpf: handleCpf, indexToValidate: 10);
  if (secondValidation == false) return 'CPF inválido no segundo dígito verificador';

  return null;
}

String? _regexValidation(String? cpf) {
  if (cpf == null || cpf.trim().isEmpty) {
    return 'Preencha o campo, ele está vazio!';
  }

  bool isValidCpf =
      RegExp(r'^[0-9]{3,3}(\.)?[0-9]{3,3}(\.)?[0-9]{3}(\-)?[0-9]{2,2}')
          .hasMatch(cpf);
  if (!isValidCpf) {
    return 'CPF inválido!';
  }
  return null;
}

bool _validateVerifierDigit(
    {required String cpf, required int indexToValidate}) {
  final splittedCpf = cpf.split('').map(int.parse);
  final verifierDigit = splittedCpf.elementAt(indexToValidate);

  var resultSumValidation = 0;

  for (int i = 0; i <= (indexToValidate - 1); i++) {
    final digit = splittedCpf.elementAt(i);
    final multiplier = (indexToValidate + 1) - i;

    final result = digit * multiplier;

    resultSumValidation += result;
  }

  final result = resultSumValidation * 10;
  var rest = result % 11;

  if (rest == 10) {
    rest = 0;
  }

  if (rest == verifierDigit) {
    return true;
  }
  return false;

}
