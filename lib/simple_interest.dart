import 'dart:io';

void main() {
  print("Enter principle: ");
  double principle = double.parse(stdin.readLineSync()!);
  print("Enter rate: ");
  double rate = double.parse(stdin.readLineSync()!);
  print("Enter Time: ");
  int time = int.parse(stdin.readLineSync()!);

  print("Simple Interest: ${simpleInterest(principle: principle, rate: rate, time: time)}");

}

double simpleInterest({required double principle, required double rate, required int time}) {
  return principle * time * rate / 100;
}