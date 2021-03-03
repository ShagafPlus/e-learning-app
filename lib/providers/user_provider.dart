import 'package:flutter/material.dart';
import 'file:///F:/FLUTTER21/e-learning-app-main/lib/models/helpers/user/user_login.dart';

class UserProvider with ChangeNotifier {
  User _user = new User();
  User get user => _user;

  void setUser(User user) {
    _user = user;
    notifyListeners();
  }

}