//opcional porque o complemento do endereço do usuário é opcional na hora do input

String? optionalField(String? complementAddress) {
  if (complementAddress == null || complementAddress.trim().isEmpty) {
    return null;
  }
}
