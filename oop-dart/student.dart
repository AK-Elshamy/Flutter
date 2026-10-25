class Student {
  String name;
  int age;
  double gpa;

  Student(this.name, this.age, this.gpa);

  void introduce() {
    print("My name is $name, I am $age years old and my GPA is $gpa.");
  }

  bool isExcellent() {
    return gpa >= 3.5;
  }
}
