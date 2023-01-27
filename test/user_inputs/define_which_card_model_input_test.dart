import 'package:desafio_um/models/cards/card_model.dart';
import 'package:desafio_um/models/users/user_address_model.dart';
import 'package:desafio_um/models/users/user_model.dart';
import 'package:desafio_um/user_inputs/account_model_input.dart';
import 'package:desafio_um/user_inputs/define_which_card_model_input.dart';
import 'package:test/test.dart';

void main() {
  UserAddressModel userAddressModel = UserAddressModel(
    address: '',
    cep: '',
    neighborhood: '',
    city: '',
    state: '',
    numberAddress: '',
    complementAddress: '',
  );
  CardModel cardModel = CardModel(
    numberAccount: '',
    cardFlag: '',
    cvv: '',
    nameAccount: '',
    validThru: 10,
  );

  test(
      'deve retornar cartão de débito se receber um AccountType.saving, tanto faz se ele me passa a renda ou não',
      () {
    UserModel userModel = UserModel(
      userAddress: userAddressModel,
      name: '',
      email: '',
      phoneNumber: '',
      cpf: '',
      numericPassword: '',
      monthlyIncome: '',
    );

    final exemplo = defineWhichCard(accountType:AccountType.saving, userModel:userModel);
    expect(exemplo, isA<CardModel>());
  });
  
}
