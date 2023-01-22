import 'dart:io';
import 'package:desafio_um/models/accounts/current_account_model.dart';
import 'package:desafio_um/models/accounts/saving_account_model.dart';
import 'package:desafio_um/models/users/user_model.dart';
import '../models/accounts/account_model.dart';
import 'helper/generate_random_number.dart';

enum AccountType {
  current,
  saving
} // enum = enumerador --> dar uma pesquisada mais sobre depois

//criar uma variável global pra poder ser atribuida e colocar no get

AccountType? _variavelGlobalCurrentAccountType;

AccountModel accountModelInput(UserModel userModel) {
 _variavelGlobalCurrentAccountType = _customerChooseAccount();

  String agencyNumber = generateRandomNumber(7);
  stdout.write('O número da sua agência é $agencyNumber\n');

  String numberBankCode = generateRandomNumber(3);
  stdout.write('O seu código bancário é $numberBankCode\n');

  String numberBankAccount = generateRandomNumber(7);
  stdout.write('O número da sua conta bancária é $numberBankAccount\n');

  stdout.write('Saldo inicial: R\$ 0,00\n');

// devo criar um objeto currentAccountModel se o usuário selecionou corrente
  if (accountType == AccountType.current) {
    CurrentAccountModel accountCurrent = CurrentAccountModel(
      accountNumber: numberBankAccount,
      agency: agencyNumber,
      balance: 0,
      bankCode: numberBankCode,
      user: userModel,
    );
    return accountCurrent;
  } else {
    // devo criar um objeto savingAccountModel se o usuário selecionou poupanca
    SavingAccountModel savingAccountModel = SavingAccountModel(
      accountNumber: numberBankAccount,
      agency: agencyNumber,
      balance: 0,
      bankCode: numberBankCode,
      user: userModel,
    );
    return savingAccountModel;
  }
}
// persistir = guardar

AccountType _customerChooseAccount() {

  String userInput;

  do {
    stdout.writeln('Hora de escolher o tipo de conta!');
    stdout.writeln(
      'Digite poupanca para Conta Poupança ou corrente para Conta Corrente',
    );
    userInput = stdin.readLineSync()!;
  } while (userInput != 'poupanca' && userInput != 'corrente');

  AccountType accountType = _parseAccountType(userInput);
  return accountType;
}

// criar uma função que retorne AccountType e receba uma String
// ela deve converter a String numa AccountType
AccountType _parseAccountType(String userAccount) {
  AccountType accountType;

  if (userAccount == 'poupanca') {
    accountType = AccountType.saving;
  } else {
    accountType = AccountType.current;
  }
  return accountType;
}

AccountType? get accountType{ //retorno algo que é privado mas de forma pública
  return _variavelGlobalCurrentAccountType;
}




/*
void creatingAnAccountDependingOnInput() { //vai dar problema mais pra frente
  String consequenceOfChosenAccount = customerChooseAccount();
  if (consequenceOfChosenAccount == 'poupanca') {
    stdout.writeln(
      'Conta Poupança escolhido. Você tem acesso apenas ao cartão de débito.',
    );
  }
  if (consequenceOfChosenAccount == 'corrente') {
    stdout.writeln(
      'Conta Corrente escolhido. Você tem acesso ao cartão de débito OU cartão de débito e crédito.',
    );
  }
}
*/