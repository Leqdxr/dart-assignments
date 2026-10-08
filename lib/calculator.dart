class Calculator {
  double num1;
  double num2;

  Calculator({required this.num1, required this.num2});

  double add() {
    return num1 + num2;
  }

  double subtract() {
    return num1 - num2;
  }

  double division() {
    return num1 / num2;
  }

  double multiplication() {
    return num1 * num2;
  }
}

void main() {
  Calculator calculate = Calculator(num1: 20, num2: 10);
  // print(calculate.add());
  // print(calculate.subtract());
  // print(calculate.division());
  // print(calculate.multiplication());

  print(
    'Addition: ${calculate.add()} subtraction: ${calculate.subtract()} division: ${calculate.division()} multiplication: ${calculate.multiplication()}',
  );
}
