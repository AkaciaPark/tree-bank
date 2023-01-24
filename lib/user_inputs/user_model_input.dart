// criar uma função que retorne um model a partir do input do usuário

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



UserModel userModelCreation() {
  
  final inputFullName = customPrint(
    message: '\nDigite o seu nome completo:',
    successMessage: '\nNome cadastrado com sucesso!',
    validator: fullNameValidation,
  );

  final inputEmail = customPrint(
    message: '\nDigite o seu email:',
    successMessage: '\nEmail cadastrado com sucesso!',
    validator: emailValidation,
  );

  final inputPhoneNumber = customPrint(
    message: '\nDigite o seu telefone:',
    successMessage: '\nTelefone cadastrado com sucesso!',
    validator: phoneNumberValidation,
  );

  final inputCpf = customPrint(
    message: '\nDigite o seu CPF:',
    successMessage: '\nCPF cadastrado com sucesso!',
    validator: cpfValidation,
  );

  final inputNumericPassword = customPrint(
    message: '\nDigite uma senha numérica de 8 dígitos:',
    successMessage: '\nSenha numérica cadastrado com sucesso!',
    validator: numericPasswordValidation,
  );
  UserAddressModel userAddressModel = userAddressModelCreation();

  final inputMonthlyIncome = customPrint(
    message: '\n(Opcional) Digite a sua renda mensal:',
    successMessage: '\nRenda mensal cadastrado com sucesso!',
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
