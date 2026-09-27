import 'dart:io';
import 'dart:math' as math;

void main() {
  print("Enter radius: ");
  double radius = double.parse(stdin.readLineSync()!);
  print("Area: ${areaCircle(radius: radius)}");
}

double areaCircle({required double radius}) {
  return math.pi * math.pow(radius, 2);
}
