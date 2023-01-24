// criar uma função que retorne um model a partir do input do usuário
// model = modelagem de um objeto do mundo real
import '../models/users/user_address_model.dart';
import '../validations/optional_field_validation.dart';
import '../validations/required_field_validation.dart';
import 'helper/custom_print.dart';


UserAddressModel userAddressModelCreation() {
  final inputCep = customPrint(
    message: '\nDigite o seu CEP:',
    successMessage: 'CEP cadastrado com sucesso!\n',
    validator: requiredFields,
  );

  final inputAddress = customPrint(
    message: '\nDigite o seu endereço:',
    successMessage: 'Endereço cadastrado com sucesso!\n',
    validator: requiredFields,
  );

  final inputNeighborhood = customPrint(
    message: '\nDigite o seu bairro:',
    successMessage: 'Bairro cadastrado com sucesso!\n',
    validator: requiredFields,
  );

  final inputCity = customPrint(
    message: '\nDigite a sua cidade:',
    successMessage: 'Cidade cadastrada com sucesso!\n',
    validator: requiredFields,
  );

  final inputState = customPrint(
    message: '\nDigite o seu Estado:',
    successMessage: 'Estado cadastrado com sucesso!\n',
    validator: requiredFields,
  );

  final inputNumberAddress = customPrint(
    message: '\nDigite o número do seu endereço:',
    successMessage: 'Número de endereço cadastrado com sucesso!\n',
    validator: requiredFields,
  );

  final inputComplementAddress = customPrint(
    message: '\n(Opcional) Digite o complemento do seu endereço:',
    successMessage: 'Complemento cadastrado com sucesso!\n',
    validator: optionalField,
  );

  UserAddressModel userAddress = UserAddressModel(
    address: inputAddress,
    cep: inputCep,
    neighborhood: inputNeighborhood,
    city: inputCity,
    state: inputState,
    complementAddress: inputComplementAddress,
    numberAddress: inputNumberAddress,
  );

  return userAddress;
}
