void main() {
  var arr1 = [1, 2, 3, 4];
  int sum = calculateSum(arr1: arr1);

  print(sum);
  sumOfEvenOdd(arr1: arr1);
}

int calculateSum({required List<int> arr1}) {
  int total = 0;
  // for (var i = 0; i < arr1.length; i++) {
  //   total = total + arr1[i];
  // }

  for (int i in arr1) {
    total += i;
  }
  return total;
}

void sumOfEvenOdd({required List<int> arr1}) {
  int totalEven = 0;
  int totalOdd = 0;

  for (var num in arr1) {
    if (num % 2 == 0) {
      totalEven += num;
    } else {
      totalOdd += num;
    }
  }

  print('Sum of even: $totalEven and sum of odd: $totalOdd');
}
