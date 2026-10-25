import 'dart:io';

void main() {
  print("\n\n---- Starting Your Application ----\n");

  print("Enter ten numbers:");
  List<int> numbers = [];

  for (int i = 0, number; i < 10; i++) {
    number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }

  int oddCount = 0;
  int evenCount = 0;

  for (var number in numbers) {
    number & 1 == 1 ? oddCount++ : evenCount++;
  }

  print("\n\n---- Result ----\n");

  print("Odd numbers: $oddCount");
  for (var number in numbers) {
    if (number & 1 == 1) {
      stdout.write("$number ");
    }
  }
  print("\n-------------------");

  print("Even numbers: $evenCount");
  for (var number in numbers) {
    if (number & 1 == 0) {
      stdout.write("$number ");
    }
  }
  print("\n-------------------");
}
