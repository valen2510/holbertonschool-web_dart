class User {
  String? name;
  int? age;
  double? height;

  User({name: String, age: int, height: double}) {
    this.name = name;
    this.age = age;
    this.height = height;
  }

  Map toJson() {
    return {'name': this.name, 'age': this.age, 'height': this.height};
  }
}
