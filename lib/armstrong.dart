import 'dart:io';
import 'dart:math' as math;


void main() {
  print("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);
  print(armstrongChecker(number: number));
}

bool armstrongChecker({required int number}) {
  String str = number.toString();
  int totalDigits = str.length;
  int sum = 0;
  for (var i = 0; i < str.length; i++) {
    int digit = int.parse(str[i]);
    sum = sum + math.pow(digit, totalDigits).toInt();
  }

  return sum == number;
}