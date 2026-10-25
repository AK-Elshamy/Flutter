class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void introduce() {
    print("I'm $name, and my salary is $salary");
  }

  double calculateBonus() {
    return salary * 0.05;
  }
}

class Developer extends Employee {
  String programmingLanguage;

  Developer(super.name, super.salary, this.programmingLanguage);
  void writeCode() {
    print("$name is writing $programmingLanguage code.");
  }

  @override
  double calculateBonus() {
    return salary * 0.10;
  }
}

class Manager extends Employee {
  int teamSize;

  Manager(super.name, super.salary, this.teamSize);
  @override
  double calculateBonus() {
    return salary * 0.15;
  }
}

class Intern extends Employee {
  String university;
  Intern(super.name, super.salary, this.university);

  @override
  double calculateBonus() {
    return salary * 0.02;
  }
}
