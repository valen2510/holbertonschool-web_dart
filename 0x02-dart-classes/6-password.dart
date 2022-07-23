class Password {
  String _password = '';

  Password({password: String}) {
    this._password = password;
  }

  String get password {
    return this._password;
  }

  void set password(String password) {
    this._password = password;
  }

  bool isValid() {
    if (this._password.length >= 8 && this._password.length <= 16) {
      if (this._password.contains(RegExp(r'[A-Z]')) &&
          this._password.contains(RegExp(r'[a-z]'))) {
        if (this._password.contains(RegExp(r'[0-9]'))) {
          return true;
        }
      }
    }

    return false;
  }

  @override
  String toString() {
    return 'Your Password is: ${this._password}';
  }
}
