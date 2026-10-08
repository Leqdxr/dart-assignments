import 'dart:math' as math;

void main() {
  print('Area: ${calculateArea(radius: 45)}');
}

double calculateArea({required double radius, double? pi}) {
  return (pi ?? 22 / 7) * math.pow(radius, 2);
}
