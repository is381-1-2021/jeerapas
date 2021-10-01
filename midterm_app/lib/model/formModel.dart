import 'package:flutter/material.dart';

class FormModel extends ChangeNotifier {
  String? _email;
  String? _firstName;
  String? _lastName;
  String? _password;

  get email => this._email;

  set email(value) {
    this._email = value;
    notifyListeners();
  }

  get firstName => this._firstName;

  set firstName(value) {
    this._firstName = value;
    notifyListeners();
  }

  get lastName => this._lastName;

  set lastName(value) {
    this._lastName = value;
    notifyListeners();
  }

  get password => this._password;

  set password(value) {
    this._password = value;
    notifyListeners();
  }
}
