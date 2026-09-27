import 'dart:io';

void main() {
  print("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);
  print("Factorial: ${factorial(number: number)}");
}

int factorial({required int number}) {
  if(number <= 1) {
    return 1;
  }
  return number * factorial(number: number - 1);
}