import 'dart:io';

void main() {
  print("Enter a number to check if it is a palindrome: ");
  int number = int.parse(stdin.readLineSync()!);

  print(palindromeChecker(number: number));
}

bool palindromeChecker({required int number}) {
  String str = number.toString();
  String collection = '';
  for (var i = str.length-1; i >=0 ; i--) {
    collection = collection+str[i];
  }
  if(collection == str) {
    return true;
  }
  else {
    return false;
  }
}