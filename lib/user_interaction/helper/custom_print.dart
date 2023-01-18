import 'dart:io';

String customPrint({
  required String message,
  required String? Function(String?) validator,
  required String successMessage,
}) {
  String? value;
  String? isValid;

  do {
    print(message);

    value = stdin.readLineSync();
    //print(value);
    isValid = validator(value);
    if (isValid == null) {
      print(successMessage);
    } else {
      print(isValid);
    }
  } while (isValid != null);

  return value!;
}