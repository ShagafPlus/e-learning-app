import 'package:flutter/material.dart';
import 'package:manahil/models/services/auth_services.dart';

class AuthProvider extends ChangeNotifier{

  final _auth = AuthServiceProvider();

  Future<void> login(String email, String password)async{
    await _auth.login(email, password);
    notifyListeners();
  }

}