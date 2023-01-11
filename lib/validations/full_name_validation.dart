 String? fullNameValidation(String? fullName) {
  if (fullName == null || fullName.trim().isEmpty) {
    return 'Preencha este espaço! Ele está vazio.';
  }
  
  bool isFullNameValid = RegExp(
          r"^[a-zA-ZâÂãÃáÁêÊéÉíÍôÔõÕúÚçÇ]{2,}( )([a-zA-ZâÂãÃáÁêÊéÉíÍôÔõÕúÚçÇ\'\-]{2,}( ?))+$")
      .hasMatch(fullName);
  if (!isFullNameValid) {
    return 'Nome preenchido de forma incorreta!';
  }
  return null;

}
