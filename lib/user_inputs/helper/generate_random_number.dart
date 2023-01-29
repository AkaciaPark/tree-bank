import 'dart:math';

String generateRandomNumber({required int interactionsNumber}) {
  int generatedNumber;
  final random = Random();
  var listOfRandomNumbers = [];

  for (int i = 0; i < interactionsNumber; i++) {
    generatedNumber = random.nextInt(10);
    listOfRandomNumbers.add(generatedNumber);
  }

  String randomNumber = listOfRandomNumbers.join('');

  return randomNumber;
}