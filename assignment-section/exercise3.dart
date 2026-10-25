class Student {
  String? _firstName;
  String? _lastName;

  Student(this._firstName, this._lastName);

  void set firstName(String firstName) {
    _firstName = firstName;
  }

  void set lastName(String lastName) {
    _lastName = lastName;
  }

  String getFullName() {
    return '$_firstName $_lastName';
  }
}

void main() {
  Student student1 = Student("Ahmed", "Khalid");
  Student student2 = Student("Mohamed", "Salah");

  print("\n\n---------Start Your Program---------");
  print("Student 1: ${student1.getFullName()}");
  print("Student 2: ${student2.getFullName()}");

  student1.firstName = "Ali";
  student2.lastName = "Ramdan";

  print(
    "\nUpdate the first student's first name and second student's last name\n",
  );
  print("Student 1: ${student1.getFullName()}");
  print("Student 2: ${student2.getFullName()}");
  print("-------------------DONE------------------");
}
