class UserModel{
  final String name;
  final String email;
  final int phoneNumber;
  final int cpf;
  final int numericPassword;
  
  final double? monthlyIncome;


  UserModel({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.cpf,
    required this.numericPassword,
    
    required this.monthlyIncome,
  });

}
