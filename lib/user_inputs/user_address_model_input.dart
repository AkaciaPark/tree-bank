// criar uma função que retorne um model a partir do input do usuário
// model = modelagem de um objeto do mundo real
import '../models/users/user_address_model.dart';
import '../validations/optional_field_validation.dart';
import '../validations/required_field_validation.dart';
import 'helper/custom_print.dart';


UserAddressModel userAddressModelCreation() {
  final inputCep = customPrint(
    message: '\nDigite o seu CEP:',
    successMessage: '\nCEP cadastrado com sucesso!',
    validator: requiredFields,
  );

  final inputAddress = customPrint(
    message: '\nDigite o seu endereço:',
    successMessage: '\nEndereço cadastrado com sucesso!',
    validator: requiredFields,
  );

  final inputNeighborhood = customPrint(
    message: '\nDigite o seu bairro:',
    successMessage: '\nBairro cadastrado com sucesso!',
    validator: requiredFields,
  );

  final inputCity = customPrint(
    message: '\nDigite a sua cidade:',
    successMessage: '\nCidade cadastrada com sucesso!',
    validator: requiredFields,
  );

  final inputState = customPrint(
    message: '\nDigite o seu Estado:',
    successMessage: '\nEstado cadastrado com sucesso!',
    validator: requiredFields,
  );

  final inputNumberAddress = customPrint(
    message: '\nDigite o número do seu endereço:',
    successMessage: '\nNúmero de endereço cadastrado com sucesso!',
    validator: requiredFields,
  );

  final inputComplementAddress = customPrint(
    message: '\n(Opcional) Digite o complemento do seu endereço:',
    successMessage: '\nComplemento cadastrado com sucesso!',
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
