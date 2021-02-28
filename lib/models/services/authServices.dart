import 'dart:convert';
import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
import 'package:manahil/models/helpers/http_exception.dart';

import '../constants.dart';
abstract class AuthService{
  Future<void> login(String email, String password);
  Future<void> signUp(String name, String email, String password);
}



class Auth implements AuthService{
  @override
  Future<void> login(String email, String password) async {
   try{
  /*   final response  = await http.post(ApiRoutes.login,

     headers: {
       'Accept':'application/json',
     },
       body: {
       'email':'$email',
         'password':'$password'
       }

     );
     final responseData = json.decode(response.body);
     if(response.statusCode == 200){
       return responseData;
     }else{
       if (responseData['error'] != null) {
         throw HttpException(responseData['error']['message']);
       }
     }
   }on SocketException{
     throw HttpException('No Internet');*/
   }
   catch(e){
     throw e;
   }
  }

  @override
  Future<void> signUp(String name, String email, String password) async {
  try{
  //  final response = await



  }catch(e){throw e;}
  }
}