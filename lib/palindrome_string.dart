import 'dart:io';

void main() {
  print("Enter a string to check if it is a palindrome: ");
  String string = (stdin.readLineSync()!);

  print(palindromeChecker(string: string));
}

bool palindromeChecker({required String string}) {
  String collection = '';
  for (var i = string.length-1; i >=0 ; i--) {
    collection = collection+string[i];
  }
  if(collection == string) {
    return true;
  }
  else {
    return false;
  }
}