// aqui vão ser os endereços, pq são campos obrigatórios; preciso fazer essa parte para chamar nos inputs

String? requiredFields(String? address) {
  if (address == null || address.trim().isEmpty) {
    return 'Preencha o campo, ele está vazio.';
  }
  return null;
}