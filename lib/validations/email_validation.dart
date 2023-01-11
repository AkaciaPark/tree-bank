String? emailValidation(String? email) {
  if (email == null || email.trim().isEmpty) {
    return 'Preencha o campo, ele está vazio!';
  }
  

  bool isValidEmail = RegExp(
          r'^[a-zA-Z][a-zA-Z0-9\.\_]+@(outlook|gmail|hotmail|yahoo)(\.com)(\.br)?$')
      .hasMatch(email);
  if (!isValidEmail) {
    return 'Email inválido! Digite um email compatível.';
  }
 return null;

}
