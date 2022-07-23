class User {
  String? name;
  int? age;
  double? height;
  int? id;

  User({id: int, name: String, age: int, height: double}) {
    this.id = id;
    this.name = name;
    this.age = age;
    this.height = height;
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
        id: userJson['id'],
        name: userJson['name'],
        age: userJson['age'],
        height: userJson['height']);
  }

  Map toJson() {
    return {'id': this.id, 'name': this.name, 'age': this.age, 'height': this.height};
  }

  @override
  String toString() {
    return 'User(id : ${this.id} ,name: ${this.name}, age: ${this.age}, height: ${this.height})';
  }
}
