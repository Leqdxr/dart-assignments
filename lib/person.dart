class Student {
  // Properties
  String fname;
  String lname;
  int age;
  bool isStudent;
  double height;

  Student({
    required this.fname,
    required this.lname,
    required this.age,
    required this.isStudent,
    required this.height,
  });

  Student.withoutHeight(this.fname, this.lname, this.age, this.isStudent)
    : height = 165;

  @override
  String toString() {
    return 'fname: $fname lname: $lname age: $age isStudent: $isStudent height: $height';
  }

  void changeName({required String fname, required String lname}) {
    this.fname = fname;
    this.lname = lname;
  }
}

void main() {
  Student student = Student(
    fname: 'Aagaman',
    lname: 'Koirala',
    age: 19,
    isStudent: true,
    height: 165,
  );

  Student student2 = Student.withoutHeight('Aagaman', 'Koirala', 19, true);

  print(student);
  print(student2);
}
