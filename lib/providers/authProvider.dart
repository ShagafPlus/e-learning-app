import 'package:flutter/material.dart';
import 'package:manahil/models/services/authServices.dart';



class AuthProvider extends ChangeNotifier{
  final _auth = Auth();


  Future<void> login(String email, String password)async{
    await _auth.login(email, password);
    notifyListeners();
  }



}