String? phoneNumberValidation(String? phoneNumber) {
  if (phoneNumber == null || phoneNumber.trim().isEmpty) {
    return 'Preencha o espaço!';
  }

  if (phoneNumber.length < 11 || phoneNumber.length > 15) {
    return 'Número de telefone inválido por não apresentar a formatação correta com DDD.';
  }

  bool isValidPhoneNumber =
      RegExp(r'\(?[1-9]{2}\)?( )?[0-9]{5}-?( )?[0-9]{4}').hasMatch(phoneNumber);
  if (!isValidPhoneNumber) {
    return 'Número de telefone inválido!';
  }
  return null;

}
