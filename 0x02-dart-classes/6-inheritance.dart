import '6-password.dart';

class User extends Password {
  String? name;
  int? age;
  double? height;
  int? id;
  String user_password = '';

  User({id: int, name: String, age: int, height: double, user_password: String})
      : super(password: user_password) {
    this.id = id;
    this.name = name;
    this.age = age;
    this.height = height;
    this.user_password = user_password;
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
        id: userJson['id'],
        name: userJson['name'],
        age: userJson['age'],
        height: userJson['height'],
        user_password: '');
  }

  Map toJson() {
    return {
      'id': this.id,
      'name': this.name,
      'age': this.age,
      'height': this.height
    };
  }

  @override
  String toString() {
    final pass = new Password(password: this.user_password);

    return 'User(id : ${this.id} ,name: ${this.name}, age: ${this.age}, height: ${this.height}, Password: ${pass.isValid()})';
  }
}
