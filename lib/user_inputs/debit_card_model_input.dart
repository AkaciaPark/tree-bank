//passo 2.1

import 'dart:io';

import 'package:desafio_um/user_inputs/helper/generate_random_number.dart';

import '../models/accounts/saving_account_model.dart';
import '../models/cards/card_model.dart';
//caso tenha escolhido conta poupança fazer um cartão de débito
//descobrir o que o usuário digitou

/*CardModel cardModel(CardModel creatCard){
  //ideia: poderia fazer um bool pra saber a resposta
  
  String cardNumber = generateRandomNumber(16);
  stdout.writeln('O número do seu cartão é $cardNumber');

  String cvvNumber = generateRandomNumber(3);
  stdout.writeln('O número do seu cvv é $cvvNumber()');

  
  if (accountModel is SavingAccountModel) { //se for conta poupanca
    CardModel cardModel = CardModel(
      numberAccount: cardNumber,
      cardFlag: 'leaf',
      cvv: cvvNumber,
      nameAccount: nameAccount,
      validThru: 10,
    );
  }
//TODO: posso usar o generate_random_number
//TODO: depois jogar o meu if dentro de uma função e deixar bonitinha
}
*/

