import 'dart:io';
import 'dart:math' as math;

void main() {
  print("Enter weight in kgs: ");
  double weight = double.parse(stdin.readLineSync()!);
  print("Enter height in centimeters: ");
  double height = double.parse(stdin.readLineSync()!);
  print(bmiCalculator(weight: weight, height: height));
}

double bmiCalculator({required double weight, required double height}) {
  double bmi = (weight / math.pow(height, 2)) * 10000;
  return bmi;
}
