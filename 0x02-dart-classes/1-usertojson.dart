class User {
  String name;
  int age;
  double height;

  User({required this.name, required this.age, required this.height});

  Map toJson() {
    return {
      'name': name,
      'age': age,
      'height': height,
    };
  }
}

void main() {
  final user = User(name: "Youssef", age: 25, height: 1.89);
print(user.toJson());
}