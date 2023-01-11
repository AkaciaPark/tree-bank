String? numericPasswordValidation(String? password) {
  if (password == null || password.trim() == '') {
    return 'Preencha o espaço!';
  }

  if (password.length != 8) {
    return 'A senha precisa ter 8 caracteres!';
  }

  bool isValidPassword = RegExp(r'^[0-9]{8}$').hasMatch(password);
  if (!isValidPassword) {
    return 'Senha inválida!';
  }
  return null;
}
