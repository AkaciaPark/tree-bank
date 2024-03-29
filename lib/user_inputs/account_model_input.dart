import 'dart:io';
import 'package:desafio_um/models/accounts/current_account_model.dart';
import 'package:desafio_um/models/accounts/saving_account_model.dart';
import 'package:desafio_um/models/users/user_model.dart';
import 'package:desafio_um/user_inputs/debit_card_model_input.dart';
import 'package:desafio_um/user_inputs/define_which_card_model_input.dart';
import '../models/accounts/account_model.dart';
import '../models/cards/card_model.dart';
import 'helper/generate_random_number.dart';

enum AccountType { current, saving }
/* enum = enumerador --> é uma maneira de enumerar um conjunto predefinido de valores ou instâncias de forma
a garantir que não haverá nenhuma outra instância desse tipo*/

AccountModel accountModelInput({required UserModel userModel}) {
  AccountType accountType = _customerChooseAccount();

  stdout.write('\nOs dados da sua conta são: ');

  String agencyNumber = generateRandomNumber(interactionsNumber: 7);
  stdout.writeln('\nO número da agência é $agencyNumber.');

  String numberBankCode = generateRandomNumber(interactionsNumber: 3);
  stdout.writeln('O código bancário é $numberBankCode.');

  String numberBankAccount = generateRandomNumber(interactionsNumber: 7);
  stdout.writeln('O número da conta bancária é $numberBankAccount.');

  stdout.writeln('Saldo inicial: R\$ 0,00');
  CardModel cardModel =
      defineWhichCard(accountType: accountType, userModel: userModel);

// devo criar um objeto currentAccountModel se o usuário selecionou corrente
  if (accountType == AccountType.current) {
    CurrentAccountModel currentAccount = CurrentAccountModel(
      accountNumber:
          numberBankAccount, // : (dois pontos) estou passando um valor; ler 'recebe'
      agency: agencyNumber,
      balance: 0,
      bankCode: numberBankCode,
      user: userModel,
      cardModel: cardModel,
    );
    return currentAccount;
  } else {
    // devo criar um objeto savingAccountModel se o usuário selecionou poupanca
    SavingAccountModel savingAccount = SavingAccountModel(
      accountNumber: numberBankAccount,
      agency: agencyNumber,
      balance: 0,
      bankCode: numberBankCode,
      user: userModel,
      cardModel: cardModel,
    );
    return savingAccount;
  }
}

AccountType _customerChooseAccount() {
  String userInput;

  do {
    stdout.writeln('\n~~ Hora de escolher o tipo de conta! ~~');
    stdout.writeln(
      'Digite poupanca para Conta Poupança ou corrente para Conta Corrente',
    );
    userInput = stdin.readLineSync()!;
  } while (userInput != 'poupanca' && userInput != 'corrente');

  AccountType accountType = _parseAccountType(userAccount: userInput);
  return accountType;
}

// criar uma função que retorne AccountType e receba uma String
// ela deve converter a String numa AccountType
AccountType _parseAccountType({required String userAccount}) {
  AccountType accountType;

  if (userAccount == 'poupanca') {
    accountType = AccountType.saving;
  } else {
    accountType = AccountType.current;
  }
  return accountType;
}
