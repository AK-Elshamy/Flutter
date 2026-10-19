void main() {
  User user = new User("OMar", 22);
  print("Name: " + user.name);
  print(user.age);
}

class User {
  String? name;
  int? age;
  int? _ salary;

  User(String name, int age) {
    this.name = name;
    this.age = age;
  }
}
