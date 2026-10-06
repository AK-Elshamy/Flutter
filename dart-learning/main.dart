void main() {
  List<int> grades = [85, 72, 91, 66, 48];

  grades.add(100);

  for (int grade in grades) {
    print("$grade -> grade");
  }
}

void start() {
  print("-------------------------------------------------");
  print("=====   Welcome to the Dart Application!    =====");
  print("-------------------------------------------------");
}

int add(int a, int b) => a + b;

void sayHi(String name) => print("Hi $name");
