class PersonDetails {
  String fullName;
  int age;
  double salary;
  String department;

  PersonDetails({
    required this.fullName,
    required this.age,
    required this.salary,
    required this.department,
  });

  @override
  String toString() {
    return 'Full Name: $fullName Age: $age Salary: $salary Department: $department \n';
  }

  static void displayAll(List<PersonDetails> people) {
    for (var person in people) {
      print(person);
    }
  }

  static void highestSalary(List<PersonDetails> people) {
    PersonDetails highest = people[0];

    for (var person in people) {
      if (person.salary > highest.salary) {
        highest = person;
      }
    }
    print('Person with highest salary: $highest');
  }

  static void oldestInEachDepartment(List<PersonDetails> people) {
    Map<String, PersonDetails> oldestByDept = {};

    for (var person in people) {
      var current = oldestByDept[person.department];

      if (current == null || person.age > current.age) {
        oldestByDept[person.department] = person;
      }
    }
    print('Oldest in each department: ');
    oldestByDept.forEach((dept, person) {
      print('$dept = $person');
    });
  }

  static void youAreTheyoungestPersonEver(List<PersonDetails> people) {
    PersonDetails youngest = people[0];

    for (var person in people) {
      if (person.age < youngest.age) {
        youngest = person;
      }
    }

    print('Youngest person in the department: $youngest');
  }
}

void main() {
  List<PersonDetails> people = [
    PersonDetails(
      fullName: 'Aagaman Koirala',
      age: 19,
      salary: 50000,
      department: 'IT',
    ),
    PersonDetails(
      fullName: 'Sam Shrestha',
      age: 20,
      salary: 100000,
      department: 'Logistics',
    ),
    PersonDetails(
      fullName: 'Samriddha Sapkota',
      age: 23,
      salary: 25000,
      department: 'IT',
    ),
    PersonDetails(
      fullName: 'Suyal Sahukhal',
      age: 20,
      salary: 55000,
      department: 'Admin',
    ),
    PersonDetails(
      fullName: 'Binayak Rijal',
      age: 18,
      salary: 200000,
      department: 'IT',
    ),
    PersonDetails(
      fullName: 'Sanjit Hyanju',
      age: 21,
      salary: 75000,
      department: 'IT',
    ),
    PersonDetails(
      fullName: 'Matt Murdock',
      age: 30,
      salary: 120000,
      department: 'Logistics',
    ),
    PersonDetails(
      fullName: 'Peter Parker',
      age: 27,
      salary: 1500000,
      department: 'Admin',
    ),
    PersonDetails(
      fullName: 'Tony Stark',
      age: 40,
      salary: 120000,
      department: 'IT',
    ),
    PersonDetails(
      fullName: 'Abhay Timalsina',
      age: 20,
      salary: 80000,
      department: 'Admin',
    ),
  ];

  PersonDetails.displayAll(people);
  PersonDetails.oldestInEachDepartment(people);
  PersonDetails.highestSalary(people);
  PersonDetails.youAreTheyoungestPersonEver(people);
}
