class UserAddressModel{
  final String address;
  final String cep;
  final String neighborhood;
  final String city;
  final String state;
  final String numberAddress;
  final String? complementAddress;


  UserAddressModel({
    required this.address,
    required this.cep,
    required this.neighborhood,
    required this.city,
    required this.state,
    required this.numberAddress,
    required this.complementAddress,
  });

}