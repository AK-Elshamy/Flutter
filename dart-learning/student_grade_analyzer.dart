// Student Grade Analyzer

import 'dart:io';

void main() {
  print("Enter student name:");
  String studentName = stdin.readLineSync() ?? "Unknown";

  print("Enter age:");
  int age = int.parse(stdin.readLineSync()!);

  print("Enter GPA:");
  double gpa = double.parse(stdin.readLineSync()!);

  print("Are you a student? (true/false):");
  bool isStudent = bool.parse(stdin.readLineSync() ?? "true");

  print("Enter Subject grades:");
  List<int> grades = [];
  for (int i = 1; i <= 5; i++) {
    print("Enter grade $i:");
    grades.add(int.parse(stdin.readLineSync()!));
  }

  displayStudentReport(
    name: studentName,
    age: age,
    gpa: gpa,
    isStudent: isStudent,
    grades: grades,
  );
}

int calculateTotal(List<int> grades) {
  int total = 0;

  for (int grade in grades) {
    total += grade;
  }

  return total;
}

double calculateAverage(int total, int count) {
  return total / count;
}

String getGradeLetter(double average) {
  if (average >= 90) {
    return "A";
  } else if (average >= 80) {
    return "B";
  } else if (average >= 70) {
    return "C";
  } else if (average >= 60) {
    return "D";
  } else {
    return "F";
  }
}

bool isPassing(double average) {
  return average >= 60;
}

void printGrades(List<int> grades) {
  print("\nGrades:");

  for (int grade in grades) {
    print("$grade -> ${grade >= 50 ? 'Pass' : 'Fail'}");
  }
}

void printStudentInfo({
  required String name,
  required int age,
  required double gpa,
  required bool isStudent,
}) {
  print("Student Name: $name");
  print("Age: $age");
  print("GPA: $gpa");
  print("Is Student: ${isStudent ? 'Yes' : 'No'}");
}

void displayStudentReport({
  required String name,
  required int age,
  required double gpa,
  required bool isStudent,
  required List<int> grades,
}) {
  // Calculate everything once
  int total = calculateTotal(grades);
  double average = calculateAverage(total, grades.length);
  String grade = getGradeLetter(average);
  bool passed = isPassing(average);

  print("===================================================");
  print("              STUDENT GRADE REPORT                 ");
  print("===================================================\n");

  printStudentInfo(name: name, age: age, gpa: gpa, isStudent: isStudent);

  printGrades(grades);

  print("---------------------------------------------------");

  print("Total: $total");
  print("Average: $average");
  print("Final Grade: $grade");
  print("Status: ${passed ? 'Passed' : 'Failed'}");

  print("===================================================\n");
}
