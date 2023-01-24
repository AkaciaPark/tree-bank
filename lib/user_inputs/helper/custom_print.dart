import 'dart:io';

String customPrint({
  required String message,
  required String? Function(String?) validator,
  required String successMessage,
}) {
  String? value;
  String? isValid;

  do {
    stdout.writeln(message);
    value = stdin.readLineSync();
    isValid = validator(value);
    if (isValid == null) {
      stdout.write(successMessage);
    } else {
      stdout.writeln(isValid);
    }
  } while (isValid != null);

  return value!;
}
