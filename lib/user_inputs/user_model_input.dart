import '../models/users/user_address_model.dart';
import '../models/users/user_model.dart';
import '../validations/cpf_validation.dart';
import '../validations/email_validation.dart';
import '../validations/full_name_validation.dart';
import '../validations/monthly_income_validation.dart';
import '../validations/numeric_password_validation.dart';
import '../validations/phone_number_validation.dart';
import 'helper/custom_print.dart';
import 'user_address_model_input.dart';

// criar uma função que retorne um model a partir do input do usuário

UserModel userModelCreation() {
  
  final inputFullName = customPrint(
    message: '\nDigite o seu nome completo:',
    successMessage: 'Nome cadastrado com sucesso!\n',
    validator: fullNameValidation,
  );

  final inputEmail = customPrint(
    message: '\nDigite o seu email:',
    successMessage: 'Email cadastrado com sucesso!\n',
    validator: emailValidation,
  );

  final inputPhoneNumber = customPrint(
    message: '\nDigite o seu telefone:',
    successMessage: 'Telefone cadastrado com sucesso!\n',
    validator: phoneNumberValidation,
  );

  final inputCpf = customPrint(
    message: '\nDigite o seu CPF:',
    successMessage: 'CPF cadastrado com sucesso!\n',
    validator: cpfValidation,
  );

  final inputNumericPassword = customPrint(
    message: '\nDigite uma senha numérica de 8 dígitos:',
    successMessage: 'Senha numérica cadastrado com sucesso!\n',
    validator: numericPasswordValidation,
  );
  UserAddressModel userAddressModel = userAddressModelCreation();

  final inputMonthlyIncome = customPrint(
    message: '\n(Opcional) Digite a sua renda mensal:',
    successMessage: 'Renda mensal cadastrado com sucesso!\n',
    validator: monthlyIncomeValidation,
  );

  UserModel user = UserModel(
    cpf: inputCpf,
    email: inputEmail,
    monthlyIncome: inputMonthlyIncome,
    name: inputFullName,
    numericPassword: inputNumericPassword,
    phoneNumber: inputPhoneNumber,
    userAddress: userAddressModel,
  );
  //userModelCreation().name
  //user.name
  //são a mesma coisa

  return user;
}
