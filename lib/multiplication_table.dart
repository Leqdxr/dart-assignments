import 'dart:io';

void main() {
  print("Enter the integer you want to print the multiplication table of: ");
  int number = int.parse(stdin.readLineSync()!);
  multiplicationTable(number: number);
}

void multiplicationTable({required int number}) {
  for (var i = 1; i <= 10; i++) {
    print("$number * $i = ${number * i}");
  }
}
