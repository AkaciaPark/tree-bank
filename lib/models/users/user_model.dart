import 'user_address_model.dart';

class UserModel{
  final UserAddressModel userAddress;
  final String name;
  final String email;
  final String phoneNumber;
  final String cpf;
  final String numericPassword;
  final String? monthlyIncome;


  UserModel({
    required this.userAddress,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.cpf,
    required this.numericPassword,
    required this.monthlyIncome,
  });



}
